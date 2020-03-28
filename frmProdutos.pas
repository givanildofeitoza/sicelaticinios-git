unit frmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  T_frmProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    gridProdutos: TDBGrid;
    GroupBox1: TGroupBox;
    rgTipo: TRadioGroup;
    txtPesqProd: TEdit;
    btnFechar: TBitBtn;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    cboFilial: TComboBox;
    Label3: TLabel;
    cboSituacao: TComboBox;
    BitBtn1: TBitBtn;
    procedure rgTipoClick(Sender: TObject);
    procedure gridProdutosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure txtPesqProdChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmProdutos: T_frmProdutos;

implementation

{$R *.dfm}
uses
main,dm,dm2;

procedure T_frmProdutos.BitBtn1Click(Sender: TObject);
var
sql,tabProdutos:string;
begin

        if(copy(cboFilial.Text,1,5)<>'00001')then
        tabProdutos:='produtosfilial'
        else
           tabProdutos:='produtos';






           sql:='SELECT * FROM '+tabProdutos+' WHERE ';

           if txtPesqProd.Text ='' then
           exit;

           case rgTipo.ItemIndex of
           0: sql:=sql+' descricao LIKE '+quotedstr(txtPesqProd.Text+'%')+' AND codigofilial ='+quotedstr(copy(cboFilial.Text,1,5))+' AND situacao ="'+cbosituacao.Text+'" LIMIT 50';
           1: sql:=sql+' codigo LIKE '+quotedstr(txtPesqProd.Text+'%')+' AND codigofilial ='+quotedstr(copy(cboFilial.Text,1,5))+' AND situacao ="'+cbosituacao.Text+'" LIMIT 50';
           2: sql:=sql+' codigobarras LIKE '+quotedstr(txtPesqProd.Text+'%')+' AND codigofilial ='+quotedstr(copy(cboFilial.Text,1,5))+' AND situacao ="'+cbosituacao.Text+'" LIMIT 50';

           end;


           _dm.ConnecDm.Connected:=false;
           _dm.cdsPrd.close;
           _dm.sdsPrd.CommandText:=sql;
           _dm.sdsPrd.ExecSQL();
           _dm.cdsPrd.Open;
           _dm.cdsPrd.Refresh;


end;


procedure T_frmProdutos.btnFecharClick(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if(key=VK_ESCAPE)then
    btnfechar.Click;

   if(Key=VK_DOWN)then
   begin
    _dm.cdsPrd.Next;
     txtPesqProd.Text:='';
   end;

    if(Key=VK_up)then
   begin
    _dm.cdsPrd.Prior;
     txtPesqProd.Text:='';
   end;


end;

procedure T_frmProdutos.FormShow(Sender: TObject);
begin

    _dm.cdsPrd.Close;
    _dm.cdsPrd.Open;
    _dm.cdsPrd.refresh;


    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('SELECT descricao,empresa,fantasia,codigofilial FROM filiais WHERE grupo='+quotedstr(glb_grupo));
    _dm.qrpadrao.Open;

     cbofilial.Items.Clear;
    _dm.qrpadrao.first;
    while not _dm.qrpadrao.eof do
    begin
     cbofilial.Items.Add(_dm.qrpadrao.FieldByName('Codigofilial').AsString+'-'+_dm.qrpadrao.FieldByName('fantasia').AsString);

    _dm.qrpadrao.next;
    end;

end;

procedure T_frmProdutos.gridProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridProdutos.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridProdutos.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridProdutos.DefaultDrawDataCell(Rect, gridProdutos.Columns[DataCol].Field, State);
end;
end;

procedure T_frmProdutos.rgTipoClick(Sender: TObject);
begin
txtPesqProd.SetFocus;
end;

procedure T_frmProdutos.txtPesqProdChange(Sender: TObject);
var
sql,tabProdutos:string;
begin
    if(_dm2.cdsconffinancbuscaautomatica.asstring='S')then
    begin
        if(copy(cboFilial.Text,1,5)<>'00001')then
        tabProdutos:='produtosfilial'
        else
           tabProdutos:='produtos';






           sql:='SELECT * FROM '+tabProdutos+' WHERE ';

           if txtPesqProd.Text ='' then
           exit;

           case rgTipo.ItemIndex of
           0: sql:=sql+' descricao LIKE '+quotedstr(txtPesqProd.Text+'%')+' AND codigofilial ='+quotedstr(copy(cboFilial.Text,1,5))+' AND situacao ="'+cbosituacao.Text+'" LIMIT 50';
           1: sql:=sql+' codigo LIKE '+quotedstr(txtPesqProd.Text+'%')+' AND codigofilial ='+quotedstr(copy(cboFilial.Text,1,5))+' AND situacao ="'+cbosituacao.Text+'" LIMIT 50';
           2: sql:=sql+' codigobarras LIKE '+quotedstr(txtPesqProd.Text+'%')+' AND codigofilial ='+quotedstr(copy(cboFilial.Text,1,5))+' AND situacao ="'+cbosituacao.Text+'" LIMIT 50';

           end;


           _dm.ConnecDm.Connected:=false;
           _dm.cdsPrd.close;
           _dm.sdsPrd.CommandText:=sql;
           _dm.sdsPrd.ExecSQL();
           _dm.cdsPrd.Open;
           _dm.cdsPrd.Refresh;
    end;

end;

end.
