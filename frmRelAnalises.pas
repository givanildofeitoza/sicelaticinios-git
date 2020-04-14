unit frmRelAnalises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RxToolEdit, Vcl.Buttons, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,
  Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient, RxCurrEdit;

type
  T_frmRelAnalises = class(TForm)
    pnlstatus: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    datai: TDateEdit;
    dataf: TDateEdit;
    BitBtn1: TBitBtn;
    txtfornecedor: TEdit;
    BitBtn2: TBitBtn;
    rvpAnalises: TRvProject;
    RvSystem1: TRvSystem;
    RvDataSetConnection1: TRvDataSetConnection;
    txtCod: TEdit;
    rgtipo: TRadioGroup;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    DSourceAnalise: TDataSource;
    cdsAnalise: TClientDataSet;
    dsAnalise: TDataSetProvider;
    sdsAnalise: TSQLDataSet;
    cdsAnaliseinc: TIntegerField;
    cdsAnalisenumero: TIntegerField;
    cdsAnalisenumerocoleta: TWideStringField;
    cdsAnalisecodigofornecedor: TWideStringField;
    cdsAnalisefornecedor: TWideStringField;
    cdsAnalisedatacoleta: TDateField;
    cdsAnaliseDATA: TDateField;
    cdsAnalisequantidade: TFMTBCDField;
    cdsAnaliseorigem: TWideStringField;
    cdsAnalisetemperatura: TFMTBCDField;
    cdsAnalisedornic: TFMTBCDField;
    cdsAnalisegordura: TFMTBCDField;
    cdsAnaliseproteina: TFMTBCDField;
    cdsAnalisedensidade: TFMTBCDField;
    cdsAnalisecrioscopia: TFMTBCDField;
    cdsAnaliseantibiotico: TWideStringField;
    cdsAnalisefosfatse: TWideStringField;
    cdsAnaliseperoxidase: TWideStringField;
    cdsAnalisesoda: TWideStringField;
    cdsAnaliseamido: TWideStringField;
    cdsAnaliseperoxido: TWideStringField;
    cdsAnalisenaoconforme: TWideStringField;
    cdsAnaliseagua: TFMTBCDField;
    cdsAnalisealizarol: TWideStringField;
    cdsAnalisecodigofilial: TWideStringField;
    cdsAnaliseconfirmada: TWideStringField;
    cdsAnalisecusto: TFMTBCDField;
    cdsAnalisetipoleite: TWideStringField;
    cdsAnalisecodigotipoleite: TWideStringField;
    cdsAnaliseqtdconferida: TFMTBCDField;
    cdsAnalisedoclancado: TWideStringField;
    cdsAnalisereservatorio: TIntegerField;
    cdsAnalisenrEntrada: TWideStringField;
    txtcoleta: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtanalisado: TCurrencyEdit;
    txtnrcoleta: TEdit;
    Label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure txtnrcoletaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRelAnalises: T_frmRelAnalises;


implementation


  uses
  dm,dm2,frmFornecedores,main;

{$R *.dfm}

procedure T_frmRelAnalises.BitBtn1Click(Sender: TObject);
begin

  _frmFornecedores:=T_frmFornecedores.Create(self);
  _frmFornecedores.ShowModal;

  txtCod.Text:= _dm.cdsForCodigo.AsString;
  txtfornecedor.Text:=_dm.cdsForempresa.AsString;

  _frmFornecedores.Release;

end;

procedure T_frmRelAnalises.BitBtn2Click(Sender: TObject);
begin
{
  if(rgtipo.ItemIndex=0)then
  ordem:=' order by numero '
  else
  ordem:=' order by tipoleite ';

_dm.ConnecDm.Connected:=false;
_dm.cdsAnalise.Close;

if(txtCod.Text<>'')then
_dm.sdsAnalise.CommandText:='select * from analise where codigofilial='+glb_filial+' and data between "'+formatdatetime('yyyy-mm-dd',datai.Date)+'" and "'+formatdatetime('yyyy-mm-dd',dataf.Date)+'" and codigofornecedor='+quotedstr(txtCod.Text)+ordem
else
_dm.sdsAnalise.CommandText:='select * from analise where codigofilial='+glb_filial+' and data between "'+formatdatetime('yyyy-mm-dd',datai.Date)+'" and "'+formatdatetime('yyyy-mm-dd',dataf.Date)+'"'+ordem;

_dm.sdsAnalise.ExecSQL();
_dm.cdsAnalise.Open;
_dm.cdsAnalise.Refresh;
 }


rvpAnalises.SetParam('data1',datai.Text);
rvpAnalises.SetParam('data2',dataf.Text);
rvpAnalises.SetParam('fornecedor',txtfornecedor.Text);

rvpAnalises.Execute;




end;

procedure T_frmRelAnalises.BitBtn3Click(Sender: TObject);
var
ordem,campos,coleta,coleta2:string;

begin

campos:=  'inc, a.numero,'+
 '(SELECT numerocoleta FROM movanalise WHERE numero=a.numero  GROUP BY numero)AS numerocoleta,'+
 ' codigofornecedor, fornecedor, datacoleta, a.DATA,'+
 ' quantidade,  origem,  temperatura,  dornic,  gordura,  proteina,'+
 ' densidade,  crioscopia,  antibiotico,  fosfatse,  peroxidase,'+
 ' soda,  amido,  peroxido,  naoconforme,  agua,  alizarol,  a.codigofilial,'+
 ' a.confirmada,  custo,  tipoleite,  codigotipoleite,  qtdconferida,  doclancado,'+
 ' reservatorio,  a.nrEntrada ';


  if(rgtipo.ItemIndex=0)then
  ordem:=' order by numero '
  else
  ordem:=' order by tipoleite ';

  coleta:='';
  coleta2:='';
  if(txtnrcoleta.Text<>'')then
  coleta:='  HAVING numerocoleta ='+quotedstr(txtnrcoleta.Text);

  coleta2:='';
  if(txtnrcoleta.Text<>'')then
  coleta2:='  GROUP BY numerocoleta  HAVING numerocoleta ='+quotedstr(txtnrcoleta.Text);


_dm.ConnecDm.Connected:=false;
cdsAnalise.Close;

if(txtCod.Text<>'')then
sdsAnalise.CommandText:='select '+campos+' from analise as a where a.codigofilial='+glb_filial+' and a.data between "'+formatdatetime('yyyy-mm-dd',datai.Date)+'" and "'+formatdatetime('yyyy-mm-dd',dataf.Date)+'" and codigofornecedor='+quotedstr(txtCod.Text)+coleta+ordem
else
sdsAnalise.CommandText:='select '+campos+' from analise as a where a.codigofilial='+glb_filial+' and a.data between "'+formatdatetime('yyyy-mm-dd',datai.Date)+'" and "'+formatdatetime('yyyy-mm-dd',dataf.Date)+'"'+coleta+ordem;

sdsAnalise.ExecSQL();
cdsAnalise.Open;
cdsAnalise.Refresh;

_dm.qrPadrao.SQL.Clear;
if(txtCod.Text<>'')then
_dm.qrPadrao.SQL.add('select sum(qtdconferida) as totalanalisado,sum(quantidade) as totalacoletado,(SELECT numerocoleta FROM movanalise WHERE numero=a.numero  GROUP BY numero)AS numerocoleta from analise as a where a.codigofilial='+glb_filial+' and a.data between "'+formatdatetime('yyyy-mm-dd',datai.Date)+'" and "'+formatdatetime('yyyy-mm-dd',dataf.Date)+'" and codigofornecedor='+quotedstr(txtCod.Text)+coleta2)
else
_dm.qrPadrao.SQL.add('select sum(qtdconferida) as totalanalisado,sum(quantidade) as totalacoletado,(SELECT numerocoleta FROM movanalise WHERE numero=a.numero  GROUP BY numero)AS numerocoleta from analise as a where a.codigofilial='+glb_filial+' and a.data between "'+formatdatetime('yyyy-mm-dd',datai.Date)+'" and "'+formatdatetime('yyyy-mm-dd',dataf.Date)+'"'+coleta2);
_dm.qrPadrao.open;

 txtanalisado.Value:= _dm.qrPadrao.FieldByName('totalanalisado').AsCurrency;
 txtcoleta.Value:=  _dm.qrPadrao.FieldByName('totalacoletado').AsCurrency;

{

rvpAnalises.SetParam('data1',datai.Text);
rvpAnalises.SetParam('data2',dataf.Text);
rvpAnalises.SetParam('fornecedor',txtfornecedor.Text);

rvpAnalises.Execute;
}



end;
procedure T_frmRelAnalises.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure T_frmRelAnalises.DBGrid1TitleClick(Column: TColumn);
begin
cdsAnalise.IndexFieldNames := Column.FieldName
end;

procedure T_frmRelAnalises.txtnrcoletaKeyPress(Sender: TObject; var Key: Char);
begin
if not ((key in['0'..'9']) or (key = #8) ) then
KEY:=#0;
end;

end.
