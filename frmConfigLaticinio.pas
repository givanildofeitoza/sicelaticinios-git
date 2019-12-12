unit frmConfigLaticinio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  CheckBoxIQ, Vcl.ComCtrls;

type
  T_frmConfigLaticinio = class(TForm)
    PageControl1: TPageControl;
    Principal: TTabSheet;
    checkpadraoleite: TCheckBoxIQ;
    CheckDestinardeposito: TCheckBoxIQ;
    pnlProdPadrao: TPanel;
    txtCodPadraoLeite: TEdit;
    txtprodPadraoLeite: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    txtcodcreme: TEdit;
    txtcreme: TEdit;
    txtcodmanteiga: TEdit;
    txtManteiga: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    txtcodfor: TEdit;
    txtNomeFor: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn5: TBitBtn;
    chkalterarcusto: TCheckBoxIQ;
    Chklote: TCheckBoxIQ;
    txtbackground: TEdit;
    Label16: TLabel;
    BitBtn6: TBitBtn;
    OpenDialog1: TOpenDialog;
    txtcaminologomarca: TEdit;
    Label17: TLabel;
    BitBtn7: TBitBtn;
    lblBackground: TLabel;
    lblLog: TLabel;
    txtqtdproducao: TEdit;
    Label18: TLabel;
    chkparanleite: TCheckBoxIQ;
    chkaddderivados: TCheckBoxIQ;
    chkderivadoscadastro: TCheckBoxIQ;
    BitBtn8: TBitBtn;
   // CheckBoxIQ1: TCheckBoxIQ;
  //  CheckBoxIQ2: TCheckBoxIQ;
  //  CheckBoxIQ3: TCheckBoxIQ;
  //  CheckBoxIQ4: TCheckBoxIQ;
    procedure checkpadraoleiteClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure txtqtdproducaoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmConfigLaticinio: T_frmConfigLaticinio;

implementation

{$R *.dfm}
uses
dm,dm2,main,frmProdutos,frmTipoleite,clipbrd,frmfornecedores,IdHashMessageDigest;

procedure T_frmConfigLaticinio.BitBtn1Click(Sender: TObject);
begin

    _frmProdutos:=T_frmprodutos.Create(self);
    _frmProdutos.ShowModal;


    if(copy(_dm.cdsPrdtipo.AsString,1,1)<>'2')then
    begin
      application.MessageBox('Produto não é uma matéria-prima!','Alerta',MB_ICONEXCLAMATION+MB_OK);
       txtCodPadraoLeite.Text:='';
       txtprodPadraoLeite.Text:='';
      exit;
    end;

    txtCodPadraoLeite.Text:=   _dm.cdsPrdcodigo.AsString;
    txtprodPadraoLeite.Text:=  _dm.cdsPrddescricao.AsString;

    _frmProdutos.Release;


end;

procedure T_frmConfigLaticinio.BitBtn2Click(Sender: TObject);
begin
  _frmProdutos:=T_frmprodutos.Create(self);
    _frmProdutos.ShowModal;


    if(copy(_dm.cdsPrdtipo.AsString,1,1)<>'2')then
    begin
      application.MessageBox('Produto não é uma matéria-prima!','Alerta',MB_ICONEXCLAMATION+MB_OK);
       txtCodcreme.Text:='';
       txtcreme.Text:='';
      exit;
    end;

    txtCodcreme.Text:=   _dm.cdsPrdcodigo.AsString;
    txtcreme.Text:=  _dm.cdsPrddescricao.AsString;

    _frmProdutos.Release;
end;

procedure T_frmConfigLaticinio.BitBtn3Click(Sender: TObject);
begin


 // if(checkpadraoleite.Checked=true)then
  //begin



  //end;


    if( application.MessageBox('Salvar alterações?','Pergunta',MB_ICONQUESTION+MB_yesno)=idno)then
    begin
      ModalResult:=-1;
      exit;
    end;



       if(txtCodPadraoLeite.Text='') or (txtProdPadraoLeite.text='')then
      begin
            application.MessageBox('Informe o produto padrão para as categorias de leite','Alerta',MB_ICONEXCLAMATION+MB_ok);
            exit;
      end;

        if(txtcodcreme.Text='') or (txtcreme.text='')then
      begin
            application.MessageBox('Informe o produto padrão para as categorias de creme','Alerta',MB_ICONEXCLAMATION+MB_ok);
            exit;
      end;


        if(txtcodmanteiga.Text='') or (txtManteiga.text='')then
      begin
            application.MessageBox('Informe o produto padrão para as categorias de manteiga','Alerta',MB_ICONEXCLAMATION+MB_ok);
            exit;
      end;


    if(_dm.cdsConfigLaticinio.RecordCount>0)then
    begin

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('UPDATE configlaticinio SET ');
    _dm.qrPadrao.SQL.Add('usarprodpadraoleite='+quotedstr(checkpadraoleite.Text)+',');
    _dm.qrPadrao.SQL.Add('codprodpadraoleite='+quotedstr(txtCodPadraoLeite.Text)+',');
    _dm.qrPadrao.SQL.Add('prodpadraoleite='+quotedstr(txtprodPadraoLeite.Text)+',');
    _dm.qrPadrao.SQL.Add('destinardepositoentrada='+quotedstr(CheckDestinardeposito.Text)+',');
    _dm.qrPadrao.SQL.Add('producaopordia='+quotedstr(txtqtdproducao.Text)+',');
    _dm.qrPadrao.SQL.Add('codprodpadraocreme='+quotedstr(txtcodcreme.Text)+',');
    _dm.qrPadrao.SQL.Add('prodpadraocreme='+quotedstr(txtcreme.Text)+',');
    _dm.qrPadrao.SQL.Add('codprodpadraomanteiga='+quotedstr(txtcodmanteiga.Text)+',');

     _dm.qrPadrao.SQL.Add('codfornecedorentrada='+quotedstr(txtcodfor.Text)+',');
     _dm.qrPadrao.SQL.Add('fornecedorentrada='+quotedstr(txtNomeFor.Text)+',');
    _dm.qrPadrao.SQL.Add('alterarcustoproducao='+quotedstr(chkalterarcusto.Text)+',');
   // _dm.qrPadrao.SQL.Add('caminhobackground='+quotedstr(txtbackground.Text)+',');
     _dm.qrPadrao.SQL.Add('loteindividual='+quotedstr(chklote.Text)+',');
     _dm.qrPadrao.SQL.Add('parametroleite='+quotedstr(chkparanleite.Text)+',');
      _dm.qrPadrao.SQL.Add('adicionarqtdderivados='+quotedstr(chkaddderivados.Text)+',');
     _dm.qrPadrao.SQL.Add('derivadoscadastrosice='+quotedstr(chkderivadoscadastro.Text)+',');

    _dm.qrPadrao.SQL.Add('prodpadraomanteiga='+quotedstr(txtManteiga.Text));
    _dm.qrPadrao.SQL.Add('WHERE codigofilial='+quotedstr(glb_filial));

    _dm.qrPadrao.ExecSQL;

    end
    else
    begin

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('insert into configlaticinio (usarprodpadraoleite,codprodpadraoleite,prodpadraoleite,destinardepositoentrada,producaopordia,codprodpadraocreme,prodpadraocreme,codprodpadraomanteiga,codfornecedorentrada, fornecedorentrada,');
    _dm.qrPadrao.SQL.Add('alterarcustoproducao,loteindividual,prodpadraomanteiga,parametroleite,adicionarqtdderivados,codigofilial) values (');
    _dm.qrPadrao.SQL.Add(quotedstr(checkpadraoleite.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtCodPadraoLeite.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtprodPadraoLeite.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(CheckDestinardeposito.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtqtdproducao.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtcodcreme.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtcreme.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtcodmanteiga.Text)+',');

     _dm.qrPadrao.SQL.Add(quotedstr(txtcodfor.Text)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(txtNomeFor.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(chkalterarcusto.Text)+',');
   // _dm.qrPadrao.SQL.Add('caminhobackground='+quotedstr(txtbackground.Text)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(chklote.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtManteiga.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(chkparanleite.Text)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(chkaddderivados.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+')');

    _dm.qrPadrao.ExecSQL;



    end;






    if(txtcaminologomarca.Text<>'') or (txtbackground.Text<>'')then
    begin

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    if(glb_ID='')then
    _dm.qrPadrao.SQL.Add('select count(1) as total from caminhoimagens where codigofilial='+quotedstr(glb_filial)+' and ip='+quotedstr(glb_ip))
    else
    _dm.qrPadrao.SQL.Add('select count(1) as total from caminhoimagens where codigofilial='+quotedstr(glb_filial)+' and ip='+quotedstr(glb_ID));

    _dm.qrPadrao.open;


      if(_dm.qrPadrao.FieldByName('total').AsInteger = 0 )then
      begin
          _dm.ConnecDm.Connected:=false;
          _dm.qrPadrao2.SQL.Clear;
          _dm.qrPadrao2.SQL.add('insert into caminhoimagens (logomarca,background,ip,codigofilial) values ( ');
          _dm.qrPadrao2.SQL.add(quotedstr(txtcaminologomarca.Text)+',');
          _dm.qrPadrao2.SQL.add(quotedstr(txtbackground.Text)+',');
          if(glb_ID='')then
          _dm.qrPadrao2.SQL.add(quotedstr(glb_ip)+',')
          else
          _dm.qrPadrao2.SQL.add(quotedstr(glb_ID)+',');

          _dm.qrPadrao2.SQL.add(quotedstr(glb_filial)+')');
          _dm.qrPadrao2.ExecSQL();

      end
      else
      begin

       if(txtcaminologomarca.Text<>'')then
       begin
         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao2.SQL.Clear;
         _dm.qrPadrao2.SQL.add(' update caminhoimagens set  logomarca='+quotedstr(txtcaminologomarca.Text));

        if(glb_ID='')then
         _dm.qrPadrao2.SQL.add('  where ip='+quotedstr(glb_ip)+' and codigofilial='+quotedstr(glb_filial))
          else
          _dm.qrPadrao2.SQL.add('  where ip='+quotedstr(glb_ID)+' and codigofilial='+quotedstr(glb_filial));

         _dm.qrPadrao2.ExecSQL();
       end;

       if(txtbackground.Text<>'')then
       begin
         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao2.SQL.Clear;
         _dm.qrPadrao2.SQL.add(' update caminhoimagens set  ');
         if(glb_ID='')then
         _dm.qrPadrao2.SQL.add(' background='+quotedstr(txtbackground.Text)+' where ip='+quotedstr(glb_ip)+' and codigofilial='+quotedstr(glb_filial))
         else
         _dm.qrPadrao2.SQL.add(' background='+quotedstr(txtbackground.Text)+' where ip='+quotedstr(glb_ID)+' and codigofilial='+quotedstr(glb_filial));


         _dm.qrPadrao2.ExecSQL();
       end;




      end;


        _dm2.ConnecDm2.Connected:=false;
        _dm2.cdsImagens.Open;
        _dm2.sdsImagens.CommandText:=' SELECT * FROM caminhoimagens WHERE codigofilial='+quotedstr(glb_filial)+'  and ip='+quotedstr(glb_ip);
        _dm2.sdsImagens.ExecSQL();
        _dm2.cdsImagens.open;
        _dm2.cdsImagens.refresh;


    end;





    _dm.cdsConfigLaticinio.Close;
    _dm.cdsConfigLaticinio.Open;
    _dm.cdsConfigLaticinio.Refresh;


    modalresult:=-1;

end;

procedure T_frmConfigLaticinio.BitBtn4Click(Sender: TObject);
begin
  _frmProdutos:=T_frmprodutos.Create(self);
    _frmProdutos.ShowModal;


    if(copy(_dm.cdsPrdtipo.AsString,1,1)<>'2')then
    begin
      application.MessageBox('Produto não é uma matéria-prima!','Alerta',MB_ICONEXCLAMATION+MB_OK);
       txtCodmanteiga.Text:='';
       txtmanteiga.Text:='';
      exit;
    end;

    txtCodmanteiga.Text:=   _dm.cdsPrdcodigo.AsString;
    txtmanteiga.Text:=  _dm.cdsPrddescricao.AsString;

    _frmProdutos.Release;
end;

procedure T_frmConfigLaticinio.BitBtn5Click(Sender: TObject);
begin
  _frmfornecedores:=T_frmfornecedores.Create(self);
  _frmfornecedores.ShowModal;

    txtcodfor.Text:=  _dm.cdsForCodigo.AsString;
    txtNomeFor.Text:= _dm.cdsForrazaosocial.AsString;

   _frmfornecedores.release;

end;

procedure T_frmConfigLaticinio.BitBtn6Click(Sender: TObject);
var
caminho:string;
begin
OpenDialog1.Execute();
caminho:=OpenDialog1.FileName;

txtbackground.Text:= caminho.Replace('\','\\');
end;

procedure T_frmConfigLaticinio.BitBtn7Click(Sender: TObject);
var
caminholog:string;
begin
OpenDialog1.Execute();
caminholog:=OpenDialog1.FileName;

txtcaminologomarca.Text:= caminholog.Replace('\','\\');
end;

procedure T_frmConfigLaticinio.BitBtn8Click(Sender: TObject);
var
arq:textfile;
idmd5 : TIdHashMessageDigest5;
id:string;
begin

 idmd5 := TIdHashMessageDigest5.Create;
  try
    id := idmd5.HashStringAsHex(formatdatetime('dd/mm/yyyy hh:mm:ss',now));
  finally
    idmd5.Free;
  end;


  if not(FileExists( ExtractFilePath(Application.ExeName)+'\id.txt'))then
  begin

     AssignFile(arq, ExtractFilePath(Application.ExeName)+'id.txt');
     Rewrite(arq);
     writeLn(arq,copy(id,1,15));
     CloseFile(arq);

     Application.MessageBox('Arquivo criado com sucesso!','Confirmação',MB_ICONINFORMATION+mb_ok);

  end;

end;

procedure T_frmConfigLaticinio.checkpadraoleiteClick(Sender: TObject);
begin
{  if(checkpadraoleite.Checked=true)then
  pnlProdPadrao.Visible:=true
  else
  pnlProdPadrao.Visible:=false; }

end;

procedure T_frmConfigLaticinio.FormShow(Sender: TObject);
begin

checkpadraoleite.Text :=_dm.cdsConfigLaticiniousarprodpadraoleite.asstring;
txtCodPadraoLeite.Text:= _dm.cdsConfigLaticiniocodprodpadraoleite.asstring;
txtprodPadraoLeite.Text:= _dm.cdsConfigLaticinioprodpadraoleite.asstring;

chkalterarcusto.Text:=_dm.cdsConfigLaticinioalterarcustoproducao.asstring;

txtcodcreme.Text:=_dm.cdsConfigLaticiniocodprodpadraocreme.AsString;
txtcreme.Text:=_dm.cdsConfigLaticinioprodpadraocreme.AsString;

txtcodmanteiga.Text:=_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString;
txtmanteiga.Text:=_dm.cdsConfigLaticinioprodpadraomanteiga.AsString;

txtcodfor.Text:=  _dm.cdsConfigLaticiniocodfornecedorentrada.asstring;
txtNomeFor.Text:=  _dm.cdsConfigLaticiniofornecedorentrada.asstring;


CheckDestinardeposito.Text:=_dm.cdsConfigLaticiniodestinardepositoentrada.asstring;
txtqtdproducao.Text:= _dm.cdsConfigLaticinioproducaopordia.asstring;

Chklote.Text:=  _dm.cdsConfigLaticinioloteindividual.AsString;
lblBackground.Caption:=_dm2.cdsImagensbackground.AsString;
lbllog.caption:=_dm2.cdsImagenslogomarca.AsString;

chkparanleite.Text:= _dm.cdsConfigLaticinioparametroleite.AsString;
chkaddderivados.Text:= _dm.cdsConfigLaticinioadicionarqtdderivados.asstring;
chkderivadoscadastro.Text:= _dm.cdsConfigLaticinioderivadoscadastrosice.AsString;


 if(_dm.cdsConfigLaticiniousarprodpadraoleite.asstring='S')then
 pnlProdPadrao.Visible:=true;


end;

procedure T_frmConfigLaticinio.txtqtdproducaoKeyPress(Sender: TObject;
  var Key: Char);
begin
if  not (key  in['0'..'9']) and (key <> #8) then
key:=#0;
end;

end.

