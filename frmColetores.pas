unit frmColetores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask;

type
  T_frmColetores = class(TForm)
    painelrodape: TPanel;
    dbGridColetores: TDBGrid;
    rgTipo: TRadioGroup;
    txtPesq: TEdit;
    btnfechar: TBitBtn;
    topo: TPanel;
    lbltitulo: TLabel;
    pnlcadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    txtnome: TEdit;
    txtapelido: TEdit;
    txtcpf: TEdit;
    txtrg: TEdit;
    txtfone: TMaskEdit;
    txtnumero: TEdit;
    txtbairro: TEdit;
    txtendereco: TEdit;
    txtcidade: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    txtestado: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    lblacao: TLabel;
    procedure rgTipoClick(Sender: TObject);
    procedure dbGridColetoresDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtPesqChange(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:tform;
    acao:string;
  end;

var
  _frmColetores: T_frmColetores;

implementation

{$R *.dfm}
uses
dm,main,clipbrd;

procedure T_frmColetores.BitBtn1Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmColetores.BitBtn2Click(Sender: TObject);
begin


if(acao='A')then
begin
  _dm.ConnecDm.Connected:=false;
 _dm.qrPadrao.SQL.Clear;
 _dm.qrPadrao.SQL.Add(' update coletores set '+
 ' nome='+quotedstr(txtnome.Text)+','+
 ' apelido='+quotedstr(txtapelido.Text)+','+
 ' cpf='+quotedstr(txtcpf.Text)+','+
 ' rg='+quotedstr(txtrg.Text)+','+
 ' fone='+quotedstr(txtfone.Text)+','+
 ' endereco='+quotedstr(txtendereco.Text)+','+
 ' numero='+quotedstr(txtnumero.Text)+','+
 ' cidade='+quotedstr(txtcidade.Text)+','+
 ' bairro='+quotedstr(txtbairro.Text)+','+
 ' estado='+quotedstr(txtestado.Text)+' where id='+quotedstr(_dm.cdsColetoresid.AsString));

  _dm.qrPadrao.ExecSQL();

  //  _dm.cdsColetores.Close;
  //  _dm.cdsColetores.Open;

  try
    _dm.cdsColetores.refresh;
  except
  end;

  application.MessageBox('Aletrado com sucesso!','Mensagem',MB_ICONINFORMATION+mb_ok);
  frm.ModalResult:=-1;


end
else if(acao='I')then
begin

if(txtnome.text='')then
exit;

 _dm.ConnecDm.Connected:=false;
 _dm.qrPadrao.SQL.Clear;
 _dm.qrPadrao.SQL.Add('insert into coletores (nome,apelido,cpf,rg,fone,endereco,numero,bairro,estado,cidade,codigofilial) values ('+
   quotedstr(txtnome.Text)+','+
   quotedstr( txtapelido.Text)+','+
   quotedstr(txtcpf.Text)+','+
   quotedstr(txtrg.Text)+','+
   quotedstr(txtfone.Text)+','+
   quotedstr(txtendereco.Text)+','+
   quotedstr(txtnumero.Text)+','+
   quotedstr(txtbairro.Text)+','+
   quotedstr(txtestado.Text)+','+
   quotedstr(txtcidade.Text)+','+
   quotedstr(glb_filial)+')');

   _dm.qrPadrao.ExecSQL();


   // _dm.cdsColetores.Close;
   // _dm.cdsColetores.Open;
   try
    _dm.cdsColetores.refresh;
    except

   end;

    application.MessageBox('Incluído com sucesso!','Mensagem',MB_ICONINFORMATION+mb_ok);
    frm.ModalResult:=-1;

end;

end;

procedure T_frmColetores.BitBtn3Click(Sender: TObject);
begin
   frm:=Tform.create(self);
   acao:='I';
   lblacao.Caption:='Inclusão';

      txtnome.Text:= '';
   txtapelido.Text:='';
   txtcpf.Text:= '';
   txtrg.Text:=  '';
   txtfone.Text:=  '';
   txtendereco.Text:= '';
   txtnumero.Text:=  '';
   txtbairro.Text:=  '';
   txtcidade.Text:=  '';
   txtbairro.Text:=  '';
   txtestado.Text:=  '';

    frm.Width:=560;
    frm.Height:=450;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlcadastro.Parent:=frm;
    pnlcadastro.visible:=true;
    pnlcadastro.Align:=alClient;
    frm.ShowModal;
end;

procedure T_frmColetores.BitBtn4Click(Sender: TObject);
begin
  if(_dm.cdsColetoresid.AsString='')then
  exit;

   frm:=Tform.create(self);
    acao:='A';
    lblacao.Caption:='Alteração';
   txtnome.Text:= _dm.cdsColetoresnome.asstring;
   txtapelido.Text:= _dm.cdsColetoresapelido.AsString;
   txtcpf.Text:= _dm.cdsColetorescpf.AsString;
   txtrg.Text:=  _dm.cdsColetoresrg.AsString;
   txtfone.Text:=  _dm.cdsColetoresfone.AsString;
   txtendereco.Text:=  _dm.cdsColetoresendereco.AsString;
   txtnumero.Text:=  _dm.cdsColetoresnumero.AsString;
   txtbairro.Text:=  _dm.cdsColetoresbairro.AsString;
   txtcidade.Text:=  _dm.cdsColetorescidade.AsString;
   txtbairro.Text:=  _dm.cdsColetoresbairro.AsString;
   txtestado.Text:=  _dm.cdsColetoresestado.AsString;

    frm.Width:=560;
    frm.Height:=450;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlcadastro.Parent:=frm;
    pnlcadastro.visible:=true;
    pnlcadastro.Align:=alClient;

    frm.ShowModal;
end;

procedure T_frmColetores.BitBtn5Click(Sender: TObject);
begin

    if(application.MessageBox('Excluir coletor?','Pergunta',MB_ICONQUESTION+mb_yesno)=idno)then
    exit;

  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('delete from coletores where id='+quotedstr(_dm.cdsColetoresid.AsString));
  _dm.qrPadrao.ExecSQL();


    _dm.cdsColetores.Close;
    _dm.cdsColetores.Open;

end;

procedure T_frmColetores.btnfecharClick(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmColetores.dbGridColetoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With dbGridColetores.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(dbGridColetores.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 dbGridColetores.DefaultDrawDataCell(Rect, dbGridColetores.Columns[DataCol].Field, State);
end;
end;

procedure T_frmColetores.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if(key=VK_ESCAPE)then
    btnfechar.Click;

   if(Key=VK_DOWN)then
   begin
    _dm.cdsColetores.Next;
     txtPesq.Text:='';
   end;

    if(Key=VK_up)then
   begin
    _dm.cdsColetores.Prior;
     txtPesq.Text:='';
   end;
end;

procedure T_frmColetores.rgTipoClick(Sender: TObject);
begin
  txtPesq.SetFocus;
end;

procedure T_frmColetores.txtPesqChange(Sender: TObject);
var
sql:string;
begin
           sql:='select * from coletores where ';

           if txtPesq.Text ='' then
           exit;

           case rgTipo.ItemIndex of
           0: sql:=sql+' id like '+quotedstr(txtPesq.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);
           1: sql:=sql+' nome like '+quotedstr(txtPesq.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);
           2: sql:=sql+' apelido like '+quotedstr(txtPesq.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);
           3: sql:=sql+' cpf like '+quotedstr(txtPesq.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);

           end;


           _dm.ConnecDm.Connected:=false;
           _dm.cdsColetores.close;
           _dm.sdsColetores.CommandText:=sql;
           _dm.sdsColetores.ExecSQL();
           _dm.cdsColetores.Open;
           _dm.cdsColetores.Refresh;

end;

end.
