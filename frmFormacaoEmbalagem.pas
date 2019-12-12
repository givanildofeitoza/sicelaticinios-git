unit frmFormacaoEmbalagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  T_frmformacaoembalagem = class(TForm)
    Panel5: TPanel;
    Label14: TLabel;
    gridEmb: TDBGrid;
    pnlacoes: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    lblProdutoDerivado: TLabel;
    pnldados: TPanel;
    txtcomponente: TEdit;
    txtqtd: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    txtCod: TEdit;
    BitBtn6: TBitBtn;
    procedure gridEmbDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmformacaoembalagem: T_frmformacaoembalagem;
  frm:tform;

implementation

{$R *.dfm}
uses
dm,dm2,main,frmprodutos,clipbrd;

procedure T_frmformacaoembalagem.BitBtn1Click(Sender: TObject);
begin

    frm := Tform.Create(self);
    frm.Width:=520;
    frm.Height:=280;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnldados.Parent:=frm;
    pnldados.Align:= alClient;
    pnldados.Visible:=true;


    txtqtd.Value:=0;
    txtcod.Text:='';
    txtcomponente.Text:='';

    frm.ShowModal;
end;

procedure T_frmformacaoembalagem.BitBtn2Click(Sender: TObject);
begin

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add( ' SELECT COUNT(1) as total FROM formacaoembalagem WHERE ');
    //_dm.qrPadrao.SQL.Add( ' codigoprodproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString));
    _dm.qrPadrao.SQL.Add( ' codigoprodproducao='+quotedstr(_dm.cdsPrd2codigo.AsString));
    _dm.qrPadrao.SQL.Add( ' AND codidoderivado='+quotedstr(_dm2.cdsProdutosembalagemcodigo.AsString));

    _dm.qrPadrao.SQL.Add( ' AND codigoembalagem='+quotedstr(txtcod.Text));
    _dm.qrPadrao.SQL.Add( ' AND codigofilial='+quotedstr(glb_filial));



    _dm.qrPadrao.Open;

    if(_dm.qrPadrao.FieldByName('total').AsInteger > 0 )then
    begin

        Application.MessageBox('Item de embalagem já lançado!','Alerta',MB_ICONQUESTION+MB_OK);
        exit;
    end;



if(txtCod.Text=string.Empty) or (txtqtd.Value=0)then
exit;

_dm.ConnecDm.Connected:=false;
_dm.qrPadrao.SQL.Clear;
_dm.qrPadrao.SQL.Add('insert into formacaoembalagem (codigoprodproducao,prodproducao,codidoderivado,produtoderivado,codigoembalagem,produtoembalagem,quantidade,codigofilial) values (');
//_dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+',');
//_dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaodescricao.AsString)+',');
_dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2codigo.AsString)+',');
_dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2descricao.AsString)+',');


_dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdutosembalagemcodigo.AsString)+',');
_dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdutosembalagemdescricao.AsString)+',');
_dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrdcodigo.AsString)+',');
_dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrddescricao.AsString)+',');
_dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtqtd.Value))+',');
_dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+')');
_dm.qrPadrao.execsql;

_dm2.cdsCompEmbalagem.Close;
_dm2.cdsCompEmbalagem.Open;
_dm2.cdsCompEmbalagem.Refresh;

application.MessageBox('Cadastrado com sucesso!','Mensagem',MB_ICONINFORMATION+MB_OK);

frm.modalresult:=-1;

end;

procedure T_frmformacaoembalagem.BitBtn3Click(Sender: TObject);
begin

if(_dm2.cdsCompEmbalagem.RecordCount=0)then
exit;


  if(application.MessageBox('Excluir?','Pergunta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then
   exit;

_dm.ConnecDm.Connected:=false;
_dm.qrPadrao.SQL.Clear;
_dm.qrPadrao.SQL.Add('delete from formacaoembalagem where id='+quotedstr(_dm2.cdsCompEmbalagemid.AsString));
_dm.qrPadrao.ExecSQL();

_dm2.cdsCompEmbalagem.Close;
_dm2.cdsCompEmbalagem.Open;
_dm2.cdsCompEmbalagem.Refresh;



end;

procedure T_frmformacaoembalagem.BitBtn4Click(Sender: TObject);
begin
_frmprodutos:=T_frmprodutos.create(self);
_frmprodutos.ShowModal;

txtCod.Text:=_dm.cdsPrdcodigo.AsString;
txtcomponente.Text:=  _dm.cdsPrddescricao.AsString;

_frmprodutos.Release;
end;

procedure T_frmformacaoembalagem.BitBtn5Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmformacaoembalagem.BitBtn6Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmformacaoembalagem.FormShow(Sender: TObject);
begin
lblProdutoDerivado.Caption:= _dm2.cdsProdutosembalagemcodigo.AsString+' - '+_dm2.cdsProdutosembalagemdescricao.AsString
end;

procedure T_frmformacaoembalagem.gridEmbDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridEmb.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridEmb.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridEmb.DefaultDrawDataCell(Rect, gridEmb.Columns[DataCol].Field, State);
end;

end;

end.

