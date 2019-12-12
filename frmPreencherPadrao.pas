unit frmPreencherPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  T_frmPreencherPadrao = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridpadroes: TDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    pnlPadroes: TPanel;
    Label10: TLabel;
    txtDescricao: TEdit;
    Label12: TLabel;
    txtFrequencia: TEdit;
    Label20: TLabel;
    txtRespAnalise: TEdit;
    Label21: TLabel;
    txtProcedimento: TEdit;
    Label19: TLabel;
    txtAcaoCorretiva: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGridpadroesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:Tform;
    acao:string;
  end;

var
  _frmPreencherPadrao: T_frmPreencherPadrao;

implementation

{$R *.dfm}
uses
dm,main,frmAnaliseColeta;
procedure T_frmPreencherPadrao.BitBtn1Click(Sender: TObject);
begin

  if(acao='I')then
  begin
  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add(' INSERT INTO padroesanaliseleite(descricao,frequencia,responsavel,procedimento,acaocorretiva) VALUES (');
  _dm.qrPadrao.SQL.Add(quotedstr(txtdescricao.Text)+',');
  _dm.qrPadrao.SQL.Add(quotedstr(txtfrequencia.Text)+',');
  _dm.qrPadrao.SQL.Add(quotedstr(txtRespAnalise.Text)+',');
  _dm.qrPadrao.SQL.Add(quotedstr(txtprocedimento.Text)+',');
  _dm.qrPadrao.SQL.Add(quotedstr(txtAcaoCorretiva.Text)+')');
  _dm.qrPadrao.ExecSQL();


  Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONEXCLAMATION+MB_OK);

  _dm.ConnecDm.Connected:=false;
  _dm.cdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.CommandText:='select * from padroesanaliseleite';
  _dm.sdsPadraoAnalise.ExecSQL();
  _dm.cdsPadraoAnalise.Open;
  _dm.cdsPadraoAnalise.Refresh;

  frm.ModalResult:=-1;

  end
  else if(acao='A')then
  begin

  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add(' UPDATE padroesanaliseleite SET ');
  _dm.qrPadrao.SQL.Add(' descricao= '+quotedstr(txtdescricao.Text)+',');
  _dm.qrPadrao.SQL.Add(' frequencia= '+quotedstr(txtfrequencia.Text)+',');
  _dm.qrPadrao.SQL.Add(' procedimento='+quotedstr(txtprocedimento.Text)+',');
  _dm.qrPadrao.SQL.Add(' acaocorretiva= '+quotedstr(txtAcaoCorretiva.Text)+',');
  _dm.qrPadrao.SQL.Add(' responsavel='+quotedstr(txtRespAnalise.Text));
  _dm.qrPadrao.SQL.Add(' WHERE id='+quotedstr(_dm.cdsPadraoAnaliseid.AsString));
  _dm.qrPadrao.ExecSQL();


  Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONEXCLAMATION+MB_OK);

  _dm.ConnecDm.Connected:=false;
  _dm.cdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.CommandText:='select * from padroesanaliseleite';
  _dm.sdsPadraoAnalise.ExecSQL();
  _dm.cdsPadraoAnalise.Open;
  _dm.cdsPadraoAnalise.Refresh;

  frm.ModalResult:=-1;


  end;






end;

procedure T_frmPreencherPadrao.BitBtn2Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmPreencherPadrao.BitBtn3Click(Sender: TObject);
begin
acao:='I';

    frm := Tform.Create(self);
    frm.Width:=780;
    frm.Height:=310;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnlPadroes.Parent:=frm;
    pnlPadroes.Align:= alClient;
    pnlPadroes.Visible:=true;


    frm.ShowModal;

end;

procedure T_frmPreencherPadrao.BitBtn4Click(Sender: TObject);
begin


if(Application.MessageBox('Deseja excluir?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
exit;

 _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add(' DELETE FROM padroesanaliseleite ');
  _dm.qrPadrao.SQL.Add(' WHERE id='+quotedstr(_dm.cdsPadraoAnaliseid.AsString));
  _dm.qrPadrao.ExecSQL();

  _dm.ConnecDm.Connected:=false;
  _dm.cdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.CommandText:='select * from padroesanaliseleite';
  _dm.sdsPadraoAnalise.ExecSQL();
  _dm.cdsPadraoAnalise.Open;
  _dm.cdsPadraoAnalise.Refresh;



end;

procedure T_frmPreencherPadrao.BitBtn5Click(Sender: TObject);
begin
acao:='A';

    frm := Tform.Create(self);
    frm.Width:=780;
    frm.Height:=310;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnlPadroes.Parent:=frm;
    pnlPadroes.Align:= alClient;
    pnlPadroes.Visible:=true;




  txtdescricao.Text:=_dm.cdsPadraoAnalisedescricao.AsString;
  txtfrequencia.Text:=_dm.cdsPadraoAnalisefrequencia.AsString;
  txtRespAnalise.Text:=_dm.cdsPadraoAnaliseresponsavel.AsString;
  txtprocedimento.Text:=_dm.cdsPadraoAnaliseprocedimento.AsString;
  txtAcaoCorretiva.Text:=_dm.cdsPadraoAnaliseacaocorretiva.AsString;


    frm.ShowModal;


end;

procedure T_frmPreencherPadrao.BitBtn6Click(Sender: TObject);
begin
  _frmAnaliseColeta.txtdescricao.Text:=_dm.cdsPadraoAnalisedescricao.AsString;
  _frmAnaliseColeta.txtfrequencia.Text:=_dm.cdsPadraoAnalisefrequencia.AsString;
  _frmAnaliseColeta.txtRespAnalise.Text:= _dm.cdsPadraoAnaliseresponsavel.AsString;
  _frmAnaliseColeta.txtprocedimento.Text:=   _dm.cdsPadraoAnaliseprocedimento.AsString;
  _frmAnaliseColeta.txtAcaoCorretiva.Text:=_dm.cdsPadraoAnaliseacaocorretiva.AsString;


  ModalResult:=-1;


end;

procedure T_frmPreencherPadrao.DBGridpadroesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With DBGridpadroes.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(DBGridpadroes.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 DBGridpadroes.DefaultDrawDataCell(Rect, DBGridpadroes.Columns[DataCol].Field, State);
end;
end;

end.
