unit frmRelatoriosProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RxToolEdit, RpBase, RpSystem, RpCon, RpConDS, RpDefine, RpRave, Vcl.ExtCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids;

type
  T_frmRelatoriosProducao = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    RvPRelProd: TRvProject;
    RvDRelProd: TRvDataSetConnection;
    RvSRelProd: TRvSystem;
    GroupBox1: TGroupBox;
    data1: TDateEdit;
    data2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtcod: TEdit;
    txtprod: TEdit;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    btnimprimir: TBitBtn;
    cdsrelProducao: TClientDataSet;
    dsrelProducao: TDataSetProvider;
    sdsrelProducao: TSQLDataSet;
    dSourcerelProducao: TDataSource;
    cdsrelProducaodataproducao: TDateField;
    cdsrelProducaohoraproducao: TTimeField;
    cdsrelProducaodatafimproducao: TDateField;
    cdsrelProducaohorafimproducao: TTimeField;
    cdsrelProducaocodigo: TWideStringField;
    cdsrelProducaoproduto: TWideStringField;
    cdsrelProducaounidade: TWideStringField;
    cdsrelProducaoquantidadeproduzida: TFMTBCDField;
    cdsrelProducaorendleite: TFMTBCDField;
    cdsrelProducaorendCreme: TFMTBCDField;
    cdsrelProducaorendmanteiga: TFMTBCDField;
    cdsrelProducaoquantidadeleite: TFMTBCDField;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    cboEncerradas: TComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    imprimir:string;
  end;

var
  _frmRelatoriosProducao: T_frmRelatoriosProducao;

implementation

{$R *.dfm}
 uses
 dm,dm2,main,frmprodutos,frmprodpreproducao,ComObj,clipbrd;
procedure T_frmRelatoriosProducao.BitBtn1Click(Sender: TObject);
var
  PLANILHA : Variant;
  Linha : Integer;
begin
imprimir:='N';

             btnimprimir.Click();
             imprimir:='S';

            try
             cdsrelProducao.Filtered  := False;
             Linha :=2;
             PLANILHA := CreateOleObject('Excel.Application');
             PLANILHA.Caption := 'SICE.net Produtos';
             PLANILHA.Visible := False;
             PLANILHA.WorkBooks.add(1);

             // TITULO DAS COLUNAS
             PLANILHA.Cells[1,1] := 'INICIO';
             PLANILHA.Cells[1,2] := 'HORA';
             PLANILHA.Cells[1,3] := 'FIM';
             PLANILHA.Cells[1,4] := 'HORA';
             PLANILHA.Cells[1,5] := 'CÓDIGO';
             PLANILHA.Cells[1,6] := 'PRODUTO';
             PLANILHA.Cells[1,7] := 'UN';
             PLANILHA.Cells[1,8] := 'QTD. PRODUZIDA';
             PLANILHA.Cells[1,9] := 'LEITE UTIL.';
             PLANILHA.Cells[1,10] := 'REND. LEITE';
             PLANILHA.Cells[1,11] := 'REND. CREME';
             PLANILHA.Cells[1,12] := 'REND. MANTEIGA';


             cdsrelProducao.DisableControls;
             cdsrelProducao.First;
                // PRRENCHIMENTO DAS CÉLULAS COM OS VALORES DOS CAMPOS DA TABELA
             Try
                While not cdsrelProducao.Eof do
                Begin
                   PLANILHA.Cells[Linha,1]:=  cdsrelProducaodataproducao.asstring;
                   PLANILHA.Cells[linha,2] := cdsrelProducaohoraproducao.asstring;
                   PLANILHA.Cells[linha,3] := cdsrelProducaodatafimproducao.asstring;
                   PLANILHA.Cells[linha,4] := cdsrelProducaohorafimproducao.asstring;
                   PLANILHA.Cells[Linha,5] := cdsrelProducaocodigo.asstring;
                   PLANILHA.Cells[Linha,6] := cdsrelProducaoproduto.asstring;
                   PLANILHA.Cells[Linha,7] := cdsrelProducaounidade.asstring;
                   PLANILHA.Cells[Linha,8] := cdsrelProducaoquantidadeproduzida.asfloat;
                   PLANILHA.Cells[Linha,9] := cdsrelProducaoquantidadeleite.asfloat;
                   PLANILHA.Cells[Linha,10] := cdsrelProducaorendleite.asfloat;
                   PLANILHA.Cells[Linha,11] := cdsrelProducaorendcreme.asfloat;
                   PLANILHA.Cells[Linha,12] := cdsrelProducaorendmanteiga.asfloat;






                   Linha := Linha + 1;
                  cdsrelProducao.Next;
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
                cdsrelProducao.EnableControls;
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

procedure T_frmRelatoriosProducao.BitBtn2Click(Sender: TObject);
begin
_frmProdPreProducao:=T_frmProdPreProducao.Create(self);
_frmProdPreProducao.ShowModal;

txtcod.Text:= _dm.cdsPrd2codigo.AsString;
txtprod.Text:=  _dm.cdsPrd2descricao.AsString;

_frmProdPreProducao.Release;

end;

procedure T_frmRelatoriosProducao.BitBtn3Click(Sender: TObject);
var
filtroProd:string;
begin
filtroProd:='';



    if(txtcod.Text<>'0')then
    filtroProd:=' and p.codigo='+quotedstr(txtcod.Text);



   _dm.ConnecDm.Connected:=false;
   cdsrelProducao.Close;
   sdsrelProducao.CommandText:= 'SELECT (SELECT DATA FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS dataproducao,  '+
    ' (SELECT hora FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horaproducao,'+
    ' (SELECT datafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS datafimproducao, '+
    ' (SELECT horafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horafimproducao, '+
   ' p.codigo,p.produto,p.unidade,sum(p.quantidadeproduzida) as quantidadeproduzida, '+
   ' IFNULL((sum(p.quantidadeleite)  / sum(p.quantidadeproduzida)),0) AS rendleite, '+
   ' IFNULL((sum(p.quantidadecreme) / sum(p.quantidadeproduzida)),0) AS rendCreme, ' +
   ' IFNULL((sum(p.quantidademanteiga) / sum(p.quantidadeproduzida)),0) AS rendmanteiga, '+
   ' SUM(p.quantidadeleite ) as quantidadeleite'+
   '  FROM producaoitens AS p, movproducaodiaria AS m WHERE m.data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
   '  AND p.codigofilial='+quotedstr(glb_filial)+
   '  AND p.numeroproducao=m.numero ' +
   '  AND p.codigofilial=m.codigofilial '+
    filtroProd+
   ' and m.encerrada='+quotedstr(cboEncerradas.Text)+' GROUP BY p.numeroproducao, p.codigo ORDER BY m.data, m.numero';
    sdsrelProducao.ExecSQL();
   // clipboard.astext:=sdsrelProducao.CommandText;
    cdsrelProducao.Open;
    cdsrelProducao.Refresh;



end;

procedure T_frmRelatoriosProducao.btnimprimirClick(Sender: TObject);
//var
//filtroProd:string;
begin
{filtroProd:='';



    if(txtcod.Text<>'0')then
   filtroProd:=' and p.codigo='+quotedstr(txtcod.Text);



   _dm.ConnecDm.Connected:=false;
   cdsrelProducao.Close;
   sdsrelProducao.CommandText:= 'SELECT (SELECT DATA FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS dataproducao,  '+
    ' (SELECT hora FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horaproducao,'+
    ' (SELECT datafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS datafimproducao, '+
    ' (SELECT horafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horafimproducao, '+
   ' p.codigo,p.produto,p.unidade,p.quantidadeproduzida, '+
   ' IFNULL((p.quantidadeleite / p.quantidadeproduzida),0) AS rendleite, '+
   ' IFNULL((p.quantidadecreme / p.quantidadeproduzida),0) AS rendCreme, ' +
   ' IFNULL((p.quantidademanteiga / p.quantidadeproduzida),0) AS rendmanteiga, '+
   ' p.quantidadeleite '+
   '  FROM producaoitens AS p, movproducaodiaria AS m WHERE m.data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
   '  AND p.codigofilial='+quotedstr(glb_filial)+
   '  AND p.numeroproducao=m.numero ' +
   '  AND p.codigofilial=m.codigofilial '+
    filtroProd+
   ' and m.encerrada="S" order by m.data, m.numero';
    sdsrelProducao.ExecSQL();
   // clipboard.astext:=sdsrelProducao.CommandText;
    cdsrelProducao.Open;
    cdsrelProducao.Refresh;
                    }


      if(imprimir='S')then
      begin
          RvPRelProd.SetParam('data1',data1.text);
          RvPRelProd.SetParam('data2',data2.text);
          RvPRelProd.Execute;
          imprimir:='S';
      end;

end;

procedure T_frmRelatoriosProducao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With DBGrid1.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(DBGrid1.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);






end;

end;

procedure T_frmRelatoriosProducao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key=VK_DOWN)then
   begin
   cdsrelProducao.Next;
   data1.SetFocus;
   end;

    if(Key=VK_up)then
   begin
  cdsrelProducao.Prior;
   data1.SetFocus;
   end;
end;

procedure T_frmRelatoriosProducao.FormShow(Sender: TObject);
begin
imprimir:='S';
end;

end.





