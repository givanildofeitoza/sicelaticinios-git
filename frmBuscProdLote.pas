unit frmBuscProdLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  T_frmBuscProdLote = class(TForm)
    Panel3: TPanel;
    Label6: TLabel;
    gridProdLote: TDBGrid;
    BitBtn1: TBitBtn;
    txtlote: TEdit;
    txtvalidade: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure gridProdLoteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmBuscProdLote: T_frmBuscProdLote;

implementation

{$R *.dfm}
 uses
 dm,dm2, frmProducaoDiaria;
procedure T_frmBuscProdLote.BitBtn1Click(Sender: TObject);
begin
        _dm2.ConnecDm2.Connected:=false;
        _dm2.cdsproducaoitens.Close;
        _dm2.sdsproducaoitens.CommandText:='select * from producaoitens where lote='+quotedstr(txtlote.Text)+' and  validade='+quotedstr(formatdatetime('yyyy-mm-dd',txtvalidade.Date));
        _dm2.sdsproducaoitens.ExecSQL();
        _dm2.cdsproducaoitens.Open;
        _dm2.cdsproducaoitens.Refresh;
end;

procedure T_frmBuscProdLote.BitBtn2Click(Sender: TObject);
begin
    _frmProducaoDiaria:=T_frmProducaoDiaria.create(self);

   // _frmProducaoDiaria.txtPesqNum.Text:=_dm2.cdsproducaoitensnumeroproducao.AsString;
    try
    _frmProducaoDiaria.btnabrirClick(sender);
    _frmProducaoDiaria.filtro:=' WHERE numero='+quotedstr(_dm2.cdsproducaoitensnumeroproducao.AsString);
    _frmProducaoDiaria.txtPesqNum.Text:= _dm2.cdsproducaoitensnumeroproducao.AsString;
    _frmProducaoDiaria.RadioGroup1.ItemIndex:=0;

    _frmProducaoDiaria.showmodal;
    _frmProducaoDiaria.release ;
    except;

    end;


    BitBtn1Click(sender);
end;

procedure T_frmBuscProdLote.BitBtn3Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmBuscProdLote.gridProdLoteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

With gridProdLote.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridProdLote.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridProdLote.DefaultDrawDataCell(Rect, gridProdLote.Columns[DataCol].Field, State);

end;

end;

end.
