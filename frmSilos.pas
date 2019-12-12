unit frmSilos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  T_frmSilos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    gridSilos: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlDados: TPanel;
    Panel3: TPanel;
    lblacao: TLabel;
    txtIdentificacao: TEdit;
    cboFilial: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    procedure gridSilosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:Tform;
  end;

var
  _frmSilos: T_frmSilos;

implementation

{$R *.dfm}
uses
main,clipbrd,dm,frmProdutos;

procedure T_frmSilos.BitBtn1Click(Sender: TObject);
begin
   frm:=Tform.create(self);

    frm.Width:=535;
    frm.Height:=180;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlDados.Parent:=frm;
    pnlDados.visible:=true;
    pnlDados.Align:=alClient;
    lblacao.Caption:='Incluir';
     txtIdentificacao.Text:='';
    cboFilial.Text:=glb_filial;


    frm.ShowModal;
end;

procedure T_frmSilos.BitBtn2Click(Sender: TObject);
begin
 frm:=Tform.create(self);

    frm.Width:=535;
    frm.Height:=180;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlDados.Parent:=frm;
    pnlDados.visible:=true;
    pnlDados.Align:=alClient;
    lblacao.Caption:='Alterar';
    txtIdentificacao.Text:=_dm.cdsdepositosidentificacao.AsString;
    cboFilial.Text:=_dm.cdsdepositoscodigofilial.AsString;



    frm.ShowModal;
end;


procedure T_frmSilos.BitBtn3Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmSilos.BitBtn4Click(Sender: TObject);
begin

   if(_dm.cdsdepositosestoque.Value>0)then
   begin
     Application.MessageBox('Depósito não está vazio! Destine seu conteúdo para outro depósito.','Alerta',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;


     if(Application.MessageBox('Deseja realmente excluir?','Pergunta',MB_ICONQUESTION+MB_yesno)=idno)then
     exit;


   _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('DELETE FROM depositos ');
           _dm.qrPadrao.SQL.Add(' WHERE id='+quotedstr(_dm.cdsdepositosid.AsString));
           _dm.qrPadrao.ExecSQL;


           Application.MessageBox('Excluido com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);

          _dm.cdsdepositos.Close;
          _dm.cdsdepositos.Open;
          _dm.cdsdepositos.refresh;

end;

procedure T_frmSilos.BitBtn5Click(Sender: TObject);
begin

   if(trim(txtIdentificacao.text)='') or (trim(cbofilial.text)='')then
    begin
      Application.MessageBox('Preencha os dois campos!','Erro',MB_ICONERROR+MB_OK);
      exit;
    end;


      if(lblacao.Caption='Incluir')then
      begin
           _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('INSERT INTO depositos (identificacao,codigofilial) VALUES (');
           _dm.qrPadrao.SQL.Add(quotedstr(txtIdentificacao.Text)+',');
           _dm.qrPadrao.SQL.Add(quotedstr(copy(cboFilial.Text,1,5))+')');
           _dm.qrPadrao.ExecSQL;

           Application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);

          _dm.cdsdepositos.Close;
          _dm.cdsdepositos.Open;
          _dm.cdsdepositos.refresh;
           frm.ModalResult:=-1;

      end
      else if(lblacao.Caption='Alterar')then
      begin

           _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('UPDATE depositos SET identificacao='+quotedstr(txtIdentificacao.Text)+',codigofilial='+quotedstr(copy(cboFilial.Text,1,5)));
           _dm.qrPadrao.SQL.Add(' WHERE id='+quotedstr(_dm.cdsdepositosid.AsString));
           _dm.qrPadrao.ExecSQL;


           Application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);

          _dm.cdsdepositos.Close;
          _dm.cdsdepositos.Open;
          _dm.cdsdepositos.refresh;
          frm.ModalResult:=-1;

      end;


end;

procedure T_frmSilos.BitBtn6Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmSilos.FormShow(Sender: TObject);
begin

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




    _dm.ConnecDm.Connected:=false;
    _dm.cdsdepositos.Close;
    _dm.sdsDepositos.CommandText:='SELECT * FROM depositos WHERE codigofilial='+quotedstr(glb_filial);
    _dm.sdsDepositos.ExecSQL();
    _dm.cdsdepositos.Open;
    _dm.cdsdepositos.Execute;

end;

procedure T_frmSilos.gridSilosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridSilos.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridSilos.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridSilos.DefaultDrawDataCell(Rect, gridSilos.Columns[DataCol].Field, State);
end;

end;

end.
