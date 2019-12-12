unit frmComposicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  T_frmComposicao = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    gridcomposicao: TDBGrid;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnfechar: TBitBtn;
    pnladdcomposicao: TPanel;
    Panel3: TPanel;
    cbotipo: TComboBox;
    Label2: TLabel;
    txtquntidade: TCurrencyEdit;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Bevel1: TBevel;
    lblcomposicaoitem: TLabel;
    txtCusto: TCurrencyEdit;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    txtproduto: TEdit;
    txtcodigo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    rgMedida: TRadioGroup;
    BitBtn6: TBitBtn;
    pnlpadraoleite: TPanel;
    Label7: TLabel;
    paramLeite: TCurrencyEdit;
    rgtipopar: TRadioGroup;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure gridcomposicaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:tform;
  end;

var
  _frmComposicao: T_frmComposicao;

implementation

{$R *.dfm}
uses
main,dm,dm2,frmprodutos,clipbrd;

procedure T_frmComposicao.BitBtn1Click(Sender: TObject);
begin

if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
pnlpadraoleite.Visible:=false
else
pnlpadraoleite.Visible:=true;


    frm := Tform.Create(self);
    frm.Width:=520;
    frm.Height:=370;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnladdcomposicao.Parent:=frm;
    pnladdcomposicao.Align:= alClient;
    pnladdcomposicao.Visible:=true;

    rgMedida.ItemIndex:=0;
    cbotipo.ItemIndex:=0;
    txtquntidade.Value:=0;
    txtCusto.Value:=0;
    txtcodigo.Text:='';
    txtproduto.Text:='';
    glb_acao:='I';

    frm.ShowModal;






end;

procedure T_frmComposicao.BitBtn2Click(Sender: TObject);
begin

     if( application.MessageBox('Excluir insumo?','Pergunta',MB_ICONQUESTION+mb_ok)=IDNo)then
     exit;



     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.SQL.clear;
     _dm.qrPadrao.SQL.Add(' DELETE FROM composicaolaticinio WHERE id='+quotedstr(_dm2.cdsComposicaoid.AsString));
     _dm.qrPadrao.ExecSQL;


  _dm2.cdsComposicao.Close;
  _dm2.cdsComposicao.Open;
  _dm2.cdsComposicao.refresh;

end;

procedure T_frmComposicao.BitBtn3Click(Sender: TObject);
begin

  if(txtproduto.Text=string.Empty) or  (txtcodigo.Text=string.Empty)then
  begin
    application.MessageBox('Informe o produto','Alerta',MB_ICONEXCLAMATION+MB_OK);
   exit;
  end;



     {    if(copy(_dm.cdsPrdtipo.AsString,1,1) <> '2')then
     begin
       application.MessageBox('Produto não é uma matéria-prima','Alerta',MB_ICONEXCLAMATION+mb_ok);
       exit;
     end;
      }


  if(glb_acao='A')then
  begin
       if( application.MessageBox('Confirmar alteração?','Pergunta',MB_ICONQUESTION+mb_YESNO)=IDNo)then
       exit;


    //  showmessage(formatfloat('0.000000',txtquntidade.value));

     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.SQL.clear;
     _dm.qrPadrao.SQL.Add(' UPDATE composicaolaticinio SET ');

     //_dm.qrPadrao.SQL.Add('unidade='+quotedstr(_dm2.cdsProdPreProducaounidade.AsString)+',');
     _dm.qrPadrao.SQL.Add('unidade='+quotedstr(_dm.cdsPrd2unidade.AsString)+',');

     _dm.qrPadrao.SQL.Add('tipoinsumo='+quotedstr(trim(copy(cbotipo.Text,4,12)))+',');

     if(rgMedida.ItemIndex=0)then
    // _dm.qrPadrao.SQL.Add('quantidade='+quotedstr(currtostr(formatfloat('0.000000',txtquntidade.Value)/1000))+',')
    _dm.qrPadrao.SQL.Add('quantidade=('+formatfloat('0.000000',txtquntidade.Value)+'/1000),')

     else
     _dm.qrPadrao.SQL.Add('quantidade='+quotedstr(txtquntidade.text)+',');
     //_dm.qrPadrao.SQL.Add('quantidade=truncate('+quotedstr(txtquntidade.text)+',6),');

    _dm.qrPadrao.SQL.Add('custo='+ quotedstr(currtostr(txtcusto.Value))+',');
    _dm.qrPadrao.SQL.Add('codigo='+ quotedstr(txtcodigo.Text)+',');
     _dm.qrPadrao.SQL.Add('parametroleite='+ quotedstr(formatcurr('##0.00',paramLeite.value))+',');

     if(rgtipopar.ItemIndex=0)then
      _dm.qrPadrao.SQL.Add('tipoparametro='+ quotedstr('L')+',')
     else if (rgtipopar.ItemIndex=1)then
      _dm.qrPadrao.SQL.Add('tipoparametro='+ quotedstr('C')+',')
     else if(rgtipopar.ItemIndex=2)then
      _dm.qrPadrao.SQL.Add('tipoparametro='+ quotedstr('M')+',');


    _dm.qrPadrao.SQL.Add('produto='+quotedstr(txtproduto.Text)+' where id ='+_dm2.cdsComposicaoid.AsString);
    _dm.qrPadrao.ExecSQL;
     clipboard.AsText:= _dm.qrPadrao.SQL.text;
    _dm2.cdsComposicao.Close;
    _dm2.cdsComposicao.Open;
    _dm2.cdsComposicao.refresh;

    frm.ModalResult:=-1;

  end;




  if(glb_acao='I')then
  begin
     if( application.MessageBox('Lançar insumo?','Pergunta',MB_ICONQUESTION+mb_YESNO)=IDNo)then
     exit;


     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.SQL.clear;
    // _dm.qrPadrao.SQL.Add('SELECT count(id) as total FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+'  AND tipoinsumo ='+quotedstr(trim(copy(cbotipo.Text,4,10)))+' AND codigofilial='+quotedstr(glb_filial)+' AND tipoinsumo<>'+quotedstr('OUTROS'));
     _dm.qrPadrao.SQL.Add('SELECT count(id) as total FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm.cdsPrd2codigo.AsString)+'  AND tipoinsumo ='+quotedstr(trim(copy(cbotipo.Text,4,10)))+' AND codigofilial='+quotedstr(glb_filial)+' AND tipoinsumo<>'+quotedstr('OUTROS'));

     _dm.qrPadrao.Open;

     if(_dm.qrPadrao.FieldByName('total').AsInteger > 0)then
     begin
       application.MessageBox('Esse tipo de insumo não pode ser lançado mais de uma vez!','Alerta',MB_ICONEXCLAMATION+mb_ok);
       exit;
     end;

     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.SQL.clear;
     _dm.qrPadrao.SQL.Add(' INSERT INTO composicaolaticinio(codpreproducao,prodpreproducao,unidade,tipoinsumo,quantidade,custo,codigo,produto,parametroleite,tipoparametro,codigofilial) VALUES (');
     //_dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+',');
     //_dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaodescricao.AsString)+',');
     //_dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaounidade.AsString)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2codigo.AsString)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2descricao.AsString)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2unidade.AsString)+',');




     _dm.qrPadrao.SQL.Add(quotedstr(trim(copy(cbotipo.Text,4,12)))+',');

     if(rgMedida.ItemIndex=0)then
    // _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtquntidade.Value/1000))+',')
     _dm.qrPadrao.SQL.Add('('+formatfloat('0.000000',txtquntidade.Value)+'/1000),')

     else
     _dm.qrPadrao.SQL.Add(formatfloat('0.000000',txtquntidade.Value)+',');
    //  _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtquntidade.Value))+',');


     _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtcusto.Value))+',');
     _dm.qrPadrao.SQL.Add(quotedstr(txtcodigo.Text)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(txtproduto.Text)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(currtostr(paramLeite.value))+',');

     if(rgtipopar.ItemIndex=0)then
      _dm.qrPadrao.SQL.Add(quotedstr('L')+',')
     else if (rgtipopar.ItemIndex=1)then
      _dm.qrPadrao.SQL.Add(quotedstr('C')+',')
     else if(rgtipopar.ItemIndex=2)then
      _dm.qrPadrao.SQL.Add(quotedstr('M')+',');

     _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+')');
     _dm.qrPadrao.ExecSQL;

  _dm2.cdsComposicao.Close;
  _dm2.cdsComposicao.Open;
  _dm2.cdsComposicao.refresh;

  frm.ModalResult:=-1;

  end;

end;

procedure T_frmComposicao.BitBtn4Click(Sender: TObject);
begin
  _frmprodutos:=T_frmProdutos.Create(self);
  _frmprodutos.ShowModal;

  if(copy(_dm.cdsPrdtipo.AsString,1,1)<>'2')then
  begin
    application.MessageBox('Produto não é uma metéria-prima!','Alerta',MB_ICONEXCLAMATION+MB_OK);
    _frmprodutos.release;
  end
  else
  begin
   txtcodigo.Text:=_dm.cdsPrdcodigo.AsString;
   txtproduto.Text:=_dm.cdsPrddescricao.AsString;
   txtcusto.Value:=_dm.cdsPrdcusto.ascurrency;
   txtquntidade.SetFocus;
   _frmprodutos.release;
  end;


end;

procedure T_frmComposicao.btnfecharClick(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmComposicao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(key=VK_ESCAPE)then
    btnfechar.Click;

end;

procedure T_frmComposicao.FormMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
FormatSettings.DecimalSeparator:='.';
end;

procedure T_frmComposicao.BitBtn5Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmComposicao.BitBtn6Click(Sender: TObject);
begin

if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
pnlpadraoleite.Visible:=false
else
pnlpadraoleite.Visible:=true;



    frm := Tform.Create(self);
    frm.Width:=520;
    frm.Height:=370;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnladdcomposicao.Parent:=frm;
    pnladdcomposicao.Align:= alClient;
    pnladdcomposicao.Visible:=true;


rgMedida.ItemIndex:=1;
   if(_dm2.cdsComposicaotipoinsumo.Text='LEITE')then
    cbotipo.ItemIndex:=0;
   if(_dm2.cdsComposicaotipoinsumo.Text='CREME')then
    cbotipo.ItemIndex:=1;
   if(_dm2.cdsComposicaotipoinsumo.Text='MANTEIGA')then
    cbotipo.ItemIndex:=2;
   if(_dm2.cdsComposicaotipoinsumo.Text='OUTROS')then
    cbotipo.ItemIndex:=3;




    txtquntidade.text:=_dm2.cdsComposicaoquantidade.asstring;
    txtCusto.text:=_dm2.cdsComposicaocusto.asstring;
    txtcodigo.Text:=_dm2.cdsComposicaocodigo.asstring;
    txtproduto.Text:=_dm2.cdsComposicaoproduto.AsString;
    paramLeite.Value:=_dm2.cdsComposicaoparametroleite.ascurrency;

    if(_dm2.cdsComposicaotipoparametro.AsString = 'L')then
    rgtipopar.ItemIndex:=0
    else if(_dm2.cdsComposicaotipoparametro.AsString = 'C')then
    rgtipopar.ItemIndex:=1
    else if(_dm2.cdsComposicaotipoparametro.AsString = 'M')then
    rgtipopar.ItemIndex:=2;

    glb_acao:='A';

    frm.ShowModal;

end;

procedure T_frmComposicao.gridcomposicaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridcomposicao.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridcomposicao.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridcomposicao.DefaultDrawDataCell(Rect, gridcomposicao.Columns[DataCol].Field, State);


end;
end;

end.
