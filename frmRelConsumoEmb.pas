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
    rvCons: TRvSystem;
    rvpCons: TRvProject;
    chklista: TCheckBox;
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
totalLeite, totalCreme,totalManteiga,totalproduzido:currency;
begin
    ProdCod:='';

    if(txtcodProduto.Text<>'')then
    begin
    ProdCod:=' AND codigopreproducao='+quotedstr(txtcodProduto.Text);



     _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.add(' SELECT SUM(p.quantidadeproduzida) as totalproduzido FROM producaoitens AS p, movproducaodiaria AS m ');
  _dm.qrPadrao.SQL.add(' WHERE m.DATA BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date)));
  _dm.qrPadrao.SQL.add(' AND p.numeroproducao=m.numero ');
  _dm.qrPadrao.SQL.add(' AND p.codigo='+quotedstr(txtcodProduto.Text));
 { if(chkEncerradas.Checked=true)then
  _dm.qrPadrao.SQL.Add(' AND m.encerrada="S"');}
  _dm.qrPadrao.Open;

  totalproduzido:=   _dm.qrPadrao.FieldByName('totalproduzido').ascurrency;



  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('SELECT SUM(r.quantidadeajustada) AS total  FROM resumoprodleite as r, movproducaodiaria AS p '+
    ' WHERE  r.codigo='+quotedstr(txtcodProduto.text)+' AND  p.DATA BETWEEN "'+formatdatetime('yyyy-mm-dd',data1.date)+'" AND "'+formatdatetime('yyyy-mm-dd',data2.date)+'" AND p.codigofilial = "'+glb_filial+'" '+
    ' AND r.numeroproducao = p.numero  ');
   { if(chkEncerradas.Checked=true)then
    _dm.qrPadrao.SQL.Add(' AND p.encerrada="S"');}
  _dm.qrPadrao.open;



  totalLeite := _dm.qrPadrao.FieldByName('total').ascurrency;



    _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('SELECT SUM(r.quantidadeajustada) AS total  FROM resumoprodcreme as r, movproducaodiaria AS p '+
    ' WHERE  r.codigo='+quotedstr(txtcodProduto.text)+' AND  p.DATA BETWEEN "'+formatdatetime('yyyy-mm-dd',data1.date)+'" AND "'+formatdatetime('yyyy-mm-dd',data2.date)+'" AND p.codigofilial = "'+glb_filial+'" '+
    ' AND r.numeroproducao = p.numero  ');
    {if(chkEncerradas.Checked=true)then
    _dm.qrPadrao.SQL.Add(' AND p.encerrada="S"');}
  _dm.qrPadrao.open;

     totalCreme :=   _dm.qrPadrao.FieldByName('total').ascurrency;


    end;



    sql:='SELECT   pe.id,  numeroproducao,  codigopreproducao,  (SELECT descricao FROM produtos WHERE codigo=pe.codigopreproducao) AS descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               ' descricaoembalagem,  qtdnecessaria,  TRUNCATE((SUM(custototal) / SUM(qtdutilizado)),5) AS custounitario,  sum(custototal) as custototal, sum(qtdproduzido) as qtdproduzido,  sum(qtdutilizado) as qtdutilizado,  tipo,  solicitado,'+
               ' operadorsolicita,  operadorsolicitaadicional,  pe.codigofilial'+
               ' FROM producaomovembalagem AS pe, movproducaodiaria AS mp  WHERE  mp.DATA BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
               ProdCod+
               ' AND mp.numero = pe.numeroproducao AND solicitado="S" group by codigopreproducao,codigoderivado,codigoembalagem ORDER BY descricaoderivado';
                _dm2.ConnecDm2.Connected:=false;
                _dm2.cdsprodmovembalagem.Close;
                _dm2.sdsprodmovembalagem.CommandText:=sql;
            //   clipboard.AsText:=  _dm2.sdsprodmovembalagem.CommandText;
                _dm2.sdsprodmovembalagem.ExecSQL();
                _dm2.cdsprodmovembalagem.Open;
                _dm2.cdsprodmovembalagem.Refresh;

   // rvpEmbalagens.SetParam('numero','');

   if(imprimir='S')then
   begin

    if(chklista.Checked=true)then
  begin

  rvpCons.SetParam('tleite','Qtd.Leite: '+formatcurr('##0.00',totalLeite));
  rvpCons.SetParam('tcreme','Qtd.Creme:  '+formatcurr('##0.00',totalCreme));
  rvpCons.SetParam('tmanteiga','Qtd.Manteiga:  '+formatcurr('##0.00',totalManteiga));

  rvpCons.SetParam('data1',data1.Text);
  rvpCons.SetParam('data2',data2.Text);
  rvpCons.SetParam('produto',txtcodproduto.text+'-'+txtProduto.Text);
  rvpCons.SetParam('totalprod','Total produzido KG/L:   '+formatcurr('##0.00',totalproduzido));


  rvpCons.Execute;
  imprimir:='S';

  end
  else
  begin


    rvpEmbalagens.SetParam('periodo','Período: '+data1.Text+' e '+data2.Text);
    rvpEmbalagens.SetParam('filial','Filial: '+glb_filial);

    rvpEmbalagens.execute;
   imprimir:='S';
   end;
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
                   PLANILHA.Cells[linha,3] :=  _dm2.cdsprodmovembalagemqtdutilizado.asfloat;
                   PLANILHA.Cells[Linha,4] :=  _dm2.cdsprodmovembalagemcustounitario.ascurrency;
                   PLANILHA.Cells[Linha,5] :=  _dm2.cdsprodmovembalagemcustototal.ascurrency;






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
