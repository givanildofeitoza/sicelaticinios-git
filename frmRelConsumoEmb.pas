unit frmRelConsumoEmb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  Vcl.ExtCtrls, RpBase, RpSystem, RpDefine, RpRave, Vcl.Buttons, RpCon, RpConDS,
  RpRender, RpRenderPDF;

type
  T_frmRelConsumoEmb = class(TForm)
    Panel3: TPanel;
    data1: TDateEdit;
    data2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    txtcodProduto: TEdit;
    txtProduto: TEdit;
    BitBtn1: TBitBtn;
    btnImp: TBitBtn;
    rvpEmbalagens: TRvProject;
    RvSystem1: TRvSystem;
    conexao: TRvDataSetConnection;
    RvClogo: TRvCustomConnection;
    RvRenderPDF1: TRvRenderPDF;
    BitBtn3: TBitBtn;
    procedure btnImpClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RvClogoEOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
    procedure RvClogoGetCols(Connection: TRvCustomConnection);
    procedure RvClogoGetRow(Connection: TRvCustomConnection);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRelConsumoEmb: T_frmRelConsumoEmb;
  imprimir:string='S';

implementation

{$R *.dfm}
uses
dm2,dm,clipbrd,frmProdPreProducao,frmProducaoDiaria,main,ComObj;

procedure T_frmRelConsumoEmb.BitBtn1Click(Sender: TObject);
begin
    _frmProdPreProducao :=T_frmProdPreProducao.Create(self);
    _frmProdPreProducao.ShowModal();

   txtcodProduto.Text:=  _dm.cdsPrd2codigo.AsString;
   txtProduto.Text:=  _dm.cdsPrd2descricao.AsString;


    _frmProdPreProducao.Release;
end;

procedure T_frmRelConsumoEmb.btnImpClick(Sender: TObject);
var
sql,ProdCod:string;
begin
    ProdCod:='';

    if(txtcodProduto.Text<>'')then
    ProdCod:=' AND codigopreproducao='+quotedstr(txtcodProduto.Text);

    sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               ' descricaoembalagem,  qtdnecessaria,  TRUNCATE((SUM(custototal) / SUM(qtdutilizado)),5) AS custounitario,  sum(custototal) as custototal, sum(qtdproduzido) as qtdproduzido,  sum(qtdutilizado) as qtdutilizado,  tipo,  solicitado,'+
               ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               ' FROM producaomovembalagem WHERE (SELECT m.datafinalizacao FROM movproducaodiaria AS m WHERE m.numero = numeroproducao) BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
               ProdCod+
               '  AND solicitado="S" group by codigoderivado ORDER BY descricaoderivado';
                _dm2.ConnecDm2.Connected:=false;
                _dm2.cdsprodmovembalagem.Close;
                _dm2.sdsprodmovembalagem.CommandText:=sql;
               //clipboard.AsText:=  _dm2.sdsprodmovembalagem.CommandText;
                _dm2.sdsprodmovembalagem.ExecSQL();
                _dm2.cdsprodmovembalagem.Open;
                _dm2.cdsprodmovembalagem.Refresh;

   // rvpEmbalagens.SetParam('numero','');

   if(imprimir='S')then
   begin
    rvpEmbalagens.SetParam('periodo','Período: '+data1.Text+' e '+data2.Text);
    rvpEmbalagens.SetParam('filial','Filial: '+glb_filial);

    rvpEmbalagens.execute;
   imprimir:='S';
   end;
end;

procedure T_frmRelConsumoEmb.BitBtn3Click(Sender: TObject);
var
  PLANILHA : Variant;
  Linha : Integer;
begin
imprimir:='N';

             btnImp.Click();
             imprimir:='S';

            try
             _dm2.cdsprodmovembalagem.Filtered  := False;
             Linha :=2;
             PLANILHA := CreateOleObject('Excel.Application');
             PLANILHA.Caption := 'SICE.net Produtos';
             PLANILHA.Visible := False;
             PLANILHA.WorkBooks.add(1);

             // TITULO DAS COLUNAS
             PLANILHA.Cells[1,1] := 'CÓDIGO';
             PLANILHA.Cells[1,2] := 'DESCRICAO EMB.';
             PLANILHA.Cells[1,3] := 'QTD. UTIL.';
             PLANILHA.Cells[1,4] := 'CUSTO UNIT. R$';
             PLANILHA.Cells[1,5] := 'CUSTO TOTAL R$';



             _dm2.cdsprodmovembalagem.DisableControls;
              _dm2.cdsprodmovembalagem.First;
                // PRRENCHIMENTO DAS CÉLULAS COM OS VALORES DOS CAMPOS DA TABELA
             Try
                While not  _dm2.cdsprodmovembalagem.Eof do
                Begin
                   PLANILHA.Cells[Linha,1]:=   _dm2.cdsprodmovembalagemcodigoembalagem.asstring;
                   PLANILHA.Cells[linha,2] :=  _dm2.cdsprodmovembalagemdescricaoembalagem.asstring;
                   PLANILHA.Cells[linha,3] := formatcurr('##0.00', _dm2.cdsprodmovembalagemqtdutilizado.ascurrency);
                   PLANILHA.Cells[Linha,4] := formatcurr('##0.00', _dm2.cdsprodmovembalagemcustounitario.ascurrency);
                   PLANILHA.Cells[Linha,5] := formatcurr('##0.00', _dm2.cdsprodmovembalagemcustototal.ascurrency);






                   Linha := Linha + 1;
                   _dm2.cdsprodmovembalagem.Next;
                  application.ProcessMessages;
                 End;
                 PLANILHA.Columns.AutoFit;

                    // caso queira proteger a planilha com senha

            //     PLANILHA.WorkBooks[1].Sheets[1].Protect(DrawingObjects := True, Contents:=true,
            //     Scenarios := true, Password := '1234');

            //     IF SaveDialog1.Execute then       // colocar um compnente SaveDialog no form
            //        PLANILHA.WorkBooks[1].SaveAs(SaveDialog1.FileName);

                 PLANILHA.Visible := True;
             Finally
                _dm2.cdsprodmovembalagem.EnableControls;
                PLANILHA := Unassigned;
             end; // TRY

             except on e:exception do begin
             application.messagebox('Erro na exportação! Verifique se o Excel está instalado.','Erro',mb_ok+mb_iconexclamation);
             // T_frmmensagens.Mensagem(mensagem, 'E',[mbOk]);
              exit;
             end;
             end; //try

             imprimir:='S';

end;


procedure T_frmRelConsumoEmb.RvClogoEOF(
  Connection: TRvCustomConnection; var Eof: Boolean);
begin
eof:=_dm2.cdsImagens.Eof;
end;

procedure T_frmRelConsumoEmb.RvClogoGetCols(
  Connection: TRvCustomConnection);
begin
 Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmRelConsumoEmb.RvClogoGetRow(
  Connection: TRvCustomConnection);
begin
 Connection.WriteStrData('',_dm2.cdsImagenslogomarca.AsString);
end;

end.
