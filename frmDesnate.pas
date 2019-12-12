unit frmDesnate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  RxToolEdit, Vcl.Mask, RxCurrEdit, Vcl.Grids, Vcl.DBGrids;

type
  T_frmDesnate = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    txtleitedestinado: TCurrencyEdit;
    txtcremeproduzido: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    txtdata: TDateEdit;
    Label4: TLabel;
    txtleitedesnatado: TCurrencyEdit;
    txtsaldoanterior: TCurrencyEdit;
    Label5: TLabel;
    btnencerrar: TBitBtn;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    txtnumero: TEdit;
    BitBtn3: TBitBtn;
    txtgordura: TCurrencyEdit;
    Label7: TLabel;
    lblstatus: TLabel;
    pnlabrir: TPanel;
    Label8: TLabel;
    data1: TDateEdit;
    data2: TDateEdit;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnencerrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:Tform;
  end;

var
  _frmDesnate: T_frmDesnate;

implementation

{$R *.dfm}
uses
main,dm2,dm;

procedure T_frmDesnate.BitBtn1Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmDesnate.BitBtn2Click(Sender: TObject);
begin

   if(application.MessageBox('Criar novo controle de destae?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDno)then
   exit;

   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('INSERT INTO desnateleite (dataabertura,saldoleiteanterior,codigofilial,operador) VALUES (');
   _dm2.qrPadrao.SQL.Add('current_date,');
   _dm2.qrPadrao.SQL.Add('(SELECT quantidade FROM '+glb_produtos+' WHERE codigo ='+_dm.cdsConfigLaticiniocodprodpadraoleite.AsString+' AND codigofilial='+glb_filial+'),');
   _dm2.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
   _dm2.qrPadrao.SQL.Add(quotedstr(glb_usuario)+')');
   _dm2.qrPadrao.execsql;


    _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsDesnate.Close;
    _dm2.sdsDesnate.CommandText:='SELECT * FROM desnateleite WHERE codigofilial='+quotedstr(glb_filial)+' ORDER BY id DESC LIMIT 1';
    _dm2.sdsDesnate.ExecSQL();
     _dm2.cdsDesnate.open;
     _dm2.cdsDesnate.refresh;



     txtdata.Text:=_dm2.cdsDesnatedataabertura.AsString;
     txtsaldoanterior.Value:=_dm2.cdsDesnatesaldoleiteanterior.AsCurrency;
     txtnumero.Text:=_dm2.cdsDesnateid.AsString;

    lblstatus.Visible:=false;
    btnencerrar.Enabled:=true;

end;

procedure T_frmDesnate.BitBtn3Click(Sender: TObject);
begin
     frm:=Tform.create(self);

    frm.Width:=520;
    frm.Height:=360;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlabrir.Parent:=frm;
    pnlabrir.visible:=true;
    pnlabrir.Align:=alClient;
    frm.ShowModal;


end;

procedure T_frmDesnate.BitBtn4Click(Sender: TObject);
begin
    _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsDesnate.Close;
    _dm2.sdsDesnate.CommandText:='SELECT * FROM desnateleite WHERE codigofilial='+quotedstr(glb_filial)+' AND dataabertura BETWEEN "'+formatdatetime('yyyy-mm-dd',data1.date)+'" AND "'+formatdatetime('yyyy-mm-dd',data2.date)+'"';
    _dm2.sdsDesnate.ExecSQL();
     _dm2.cdsDesnate.open;
     _dm2.cdsDesnate.refresh;
end;

procedure T_frmDesnate.BitBtn5Click(Sender: TObject);
begin
     txtdata.Text:=_dm2.cdsDesnatedataabertura.AsString;
     txtsaldoanterior.Value:=_dm2.cdsDesnatesaldoleiteanterior.AsCurrency;
     txtnumero.Text:=_dm2.cdsDesnateid.AsString;

     lblstatus.Visible:=false;
     btnencerrar.Enabled:=true;

    if( _dm2.cdsDesnateencerrada.asstring='S' )then
    begin
      lblstatus.Visible:=true;
      lblstatus.caption:='Encerrada em '+_dm2.cdsDesnatedataencerramento.AsString;
      btnencerrar.Enabled:=false;
    end;

    frm.ModalResult:=-1;

end;

procedure T_frmDesnate.btnencerrarClick(Sender: TObject);
begin
 if(application.MessageBox('atualizar saldo anterior do leite?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDyes)then
 begin
   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('SELECT quantidade FROM '+glb_produtos+' WHERE codigo ='+_dm.cdsConfigLaticiniocodprodpadraoleite.AsString+' AND codigofilial='+glb_filial);
   _dm2.qrPadrao.open;


   txtsaldoanterior.Value:=  _dm2.qrPadrao.FieldByName('quantidade').AsCurrency;

   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('update desnateleite set saldoleiteanterior ='+quotedstr(txtsaldoanterior.text)+' where id ='+_dm2.cdsDesnateid.AsString );
   _dm2.qrPadrao.ExecSQL;
 end;

      if(application.MessageBox('Confirmar encerramento?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDno)then
      exit;

end;

end.
