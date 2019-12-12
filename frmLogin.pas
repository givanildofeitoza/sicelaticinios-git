unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  T_frmLogin = class(TForm)
    txtUsuario: TEdit;
    txtSenha: TEdit;
    Image1: TImage;
    btnConfirmar: TPanel;
    pnlbotao2: TPanel;
    lblfuncao: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pnlbotao2MouseLeave(Sender: TObject);
    procedure btnConfirmarMouseLeave(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnConfirmarMouseEnter(Sender: TObject);
    procedure pnlbotao2MouseEnter(Sender: TObject);
    procedure txtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure pnlbotao2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmLogin: T_frmLogin;

implementation

{$R *.dfm}
 uses
 dm,main;
procedure validrUsuario(usuario:string; senha:string);
begin

  _dm.ConnecDm.Connected:=false;
  _dm.sdsSenhas.Close;
  _dm.cdsSenhas.Close;
  _dm.sdsSenhas.CommandText:='select * from senhas where operador ='+quotedstr(usuario)+' and senha=md5('+quotedstr(senha)+') and codigofilial='+quotedstr(glb_filial)+
  ' and '+glb_campo+'='+quotedstr('S');
  _dm.sdsSenhas.ExecSQL();
  _dm.cdsSenhas.Open;
  _dm.cdsSenhas.refresh;

    if(_dm.cdsSenhas.RecordCount>0)then
    begin
          glb_permissao:='S';
          _frmLogin.modalresult:=-1;
    end
    else
    begin
         Application.MessageBox('Usuário sem permissão!','Alerta',MB_ICONINFORMATION+MB_OK);
         glb_permissao:='N';

    end;


end;

procedure T_frmLogin.BitBtn2Click(Sender: TObject);
begin
glb_permissao:='N';
  modalresult:=-1;
end;

procedure T_frmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
if(key=#13)then
Perform(WM_NEXTDLGCTL,0,0);

end;

procedure T_frmLogin.btnConfirmarClick(Sender: TObject);
begin
validrUsuario(txtUsuario.Text,txtSenha.Text);
end;

procedure T_frmLogin.btnConfirmarMouseEnter(Sender: TObject);
begin
btnConfirmar.Color:= clGray;
end;

procedure T_frmLogin.btnConfirmarMouseLeave(Sender: TObject);
begin
btnConfirmar.Color:= clMenuHighlight;
end;

procedure T_frmLogin.pnlbotao2Click(Sender: TObject);
begin
glb_permissao:='N';
ModalResult:=-1;
end;

procedure T_frmLogin.pnlbotao2MouseEnter(Sender: TObject);
begin
pnlbotao2.Color:= clGray;
end;

procedure T_frmLogin.pnlbotao2MouseLeave(Sender: TObject);
begin
pnlbotao2.Color:= clMenuHighlight;
end;

procedure T_frmLogin.txtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
    if(key=#13)then
    validrUsuario(txtUsuario.Text,txtSenha.Text);


end;

end.
