unit frmProcProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Buttons;

type
  T_frmProcProducao = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    pnlCadastro: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    txtProcesso: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    txtDuracao: TMaskEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    acao:string;
    frm:Tform;
  end;

var
  _frmProcProducao: T_frmProcProducao;

implementation

{$R *.dfm}
uses
main,dm2,dm,frmprodPreProducao,clipbrd;

procedure T_frmProcProducao.BitBtn1Click(Sender: TObject);
begin
txtProcesso.Text:='';
txtDuracao.Text:='';
acao:='I';


 frm:=TForm.Create(self);

 frm.BorderStyle:= bsDialog;
 frm.Width:=580;
 frm.Height:=230;
 frm.Position:=poDesktopCenter;
 frm.BorderIcons:=[biMinimize,biMaximize];
 pnlCadastro.Visible:=true;
 pnlCadastro.Parent:=frm;
 pnlCadastro.Align:=alClient;
 frm.ShowModal;

end;

procedure T_frmProcProducao.BitBtn2Click(Sender: TObject);
begin
txtProcesso.Text:=_dm2.cdsProcProducaoprocesso.AsString;
txtDuracao.Text:=_dm2.cdsProcProducaoduracaoestimada.AsString;
acao:='A';

 frm:=TForm.Create(self);

 frm.BorderStyle:= bsDialog;
 frm.Width:=580;
 frm.Height:=230;
 frm.Position:=poDesktopCenter;
 frm.BorderIcons:=[biMinimize,biMaximize];
 pnlCadastro.Visible:=true;
 pnlCadastro.Align:=alClient;
 pnlCadastro.Parent:=frm;

 frm.ShowModal;



end;

procedure T_frmProcProducao.BitBtn3Click(Sender: TObject);
begin
   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('DELETE FROM cadetapaproducao WHERE id='+quotedstr(_dm2.cdsProcProducaoid.AsString));
   _dm2.qrPadrao.ExecSQL();


   //_dm2.cdsProcProducao.Open;
   _dm2.cdsProcProducao.refresh;
end;

procedure T_frmProcProducao.BitBtn4Click(Sender: TObject);
var
ordem:integer;
begin


if(txtProcesso.Text='')then
begin
  application.MessageBox('Informe o processo!','Alerta',MB_ICONEXCLAMATION+MB_OK);
  exit;
end;


   if(acao= 'I')then
   begin

   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('SELECT (IFNULL(MAX(ordem),0) + 1) AS ordem FROM cadetapaproducao WHERE codigofilial='+quotedstr(glb_filial)+' AND codigoproduto='+quotedstr(_dm.cdsprd2codigo.AsString));
   _dm2.qrPadrao.Open;

   ordem:= _dm2.qrPadrao.FieldByName('ordem').AsInteger;

   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('INSERT INTO cadetapaproducao (codigofilial,processo,ordem,codigoproduto,duracaoestimada) VALUES ('+
   quotedstr(glb_filial)+','+
   quotedstr(txtProcesso.Text)+','+
   quotedstr(inttostr(ordem))+','+
    quotedstr(_dm.cdsPrd2codigo.AsString)+','+
   quotedstr(txtduracao.Text)+')'
   );
    _dm2.qrPadrao.ExecSQL();




   end
   else  if(acao='A')then
   begin



   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('UPDATE cadetapaproducao SET  processo='+quotedstr(txtProcesso.Text)+','+
   ' duracaoestimada='+quotedstr(txtduracao.Text)+
   ' WHERE id='+quotedstr(_dm2.cdsProcProducaoid.AsString));
   _dm2.qrPadrao.ExecSQL();


   end;







   //_dm2.cdsProcProducao.Open;
   _dm2.cdsProcProducao.refresh;




end;

procedure T_frmProcProducao.BitBtn5Click(Sender: TObject);
begin
frm.ModalResult:=-1;

end;

procedure T_frmProcProducao.DBGrid1DrawColumnCell(Sender: TObject;
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
