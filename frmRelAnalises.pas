unit frmRelAnalises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RxToolEdit, Vcl.Buttons, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,
  Vcl.Grids, Vcl.DBGrids;

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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
ordem:string;
begin

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

end.
