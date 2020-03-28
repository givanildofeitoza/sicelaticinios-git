unit frmFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  T_frmFornecedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    gridFornecedores: TDBGrid;
    GroupBox1: TGroupBox;
    txtNomePesquisa: TEdit;
    rgTipo: TRadioGroup;
    btnfechar: TBitBtn;
    BitBtn1: TBitBtn;
    procedure txtNomePesquisaChange(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure gridFornecedoresDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure rgTipoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmFornecedores: T_frmFornecedores;

implementation

{$R *.dfm}
 uses
 dm,dm2,main;
procedure T_frmFornecedores.BitBtn1Click(Sender: TObject);
var
sql:string;
begin
           sql:='select * from fornecedores where ';
           if(txtNomePesquisa.Text='')then
           exit;

           case rgTipo.ItemIndex of
           0: sql:=sql+' empresa like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           1: sql:=sql+' razaosocial like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           2: sql:=sql+' cpf like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           3: sql:=sql+' cgc like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           end;


           _dm.ConnecDm.Connected:=false;
           _dm.cdsFor.close;
           _dm.sdsFor.CommandText:=sql;
           _dm.sdsFor.ExecSQL();
           _dm.cdsFor.Open;
           _dm.cdsFor.Refresh;

end;

procedure T_frmFornecedores.btnfecharClick(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmFornecedores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(key=VK_ESCAPE)then
    btnfechar.Click;

  if(Key=VK_DOWN)then
   begin
     _dm.cdsFor.Next;
     txtNomePesquisa.Text:='';
   end;

    if(Key=VK_up)then
   begin
   _dm.cdsFor.Prior;
    txtNomePesquisa.Text:='';
   end;



end;

procedure T_frmFornecedores.gridFornecedoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin



With gridFornecedores.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridFornecedores.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridFornecedores.DefaultDrawDataCell(Rect, gridFornecedores.Columns[DataCol].Field, State);






end;
end;

procedure T_frmFornecedores.rgTipoClick(Sender: TObject);
begin
txtNomePesquisa.SetFocus;
end;

procedure T_frmFornecedores.txtNomePesquisaChange(Sender: TObject);
var
sql:string;
begin

    if(_dm2.cdsconffinancbuscaautomatica.asstring='S')then
    begin
           sql:='select * from fornecedores where ';
           if(txtNomePesquisa.Text='')then
           exit;

           case rgTipo.ItemIndex of
           0: sql:=sql+' empresa like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           1: sql:=sql+' razaosocial like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           2: sql:=sql+' cpf like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           3: sql:=sql+' cgc like '+quotedstr(txtNomePesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial)+' limit 50';
           end;


           _dm.ConnecDm.Connected:=false;
           _dm.cdsFor.close;
           _dm.sdsFor.CommandText:=sql;
           _dm.sdsFor.ExecSQL();
           _dm.cdsFor.Open;
           _dm.cdsFor.Refresh;
    end;

end;

end.

