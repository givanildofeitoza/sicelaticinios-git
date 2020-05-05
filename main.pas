unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  T_main = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    ColetadeLeite1: TMenuItem;
    Anlisedoleite1: TMenuItem;
    pnlstatus: TPanel;
    Veculos1: TMenuItem;
    ColetoresResponsveis1: TMenuItem;
    Coletagem1: TMenuItem;
    CriarColeta1: TMenuItem;
    Relatriodecoletas1: TMenuItem;
    Anlisedeleite1: TMenuItem;
    CriarnovaConsultaranlises1: TMenuItem;
    Relatriodeanlises1: TMenuItem;
    Confernciaelanamentosdeestoque1: TMenuItem;
    Categoriadeleite1: TMenuItem;
    DepositosdeleiteSilos1: TMenuItem;
    Produo1: TMenuItem;
    Produtosdaprproduo1: TMenuItem;
    Produodiria1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbloperador: TLabel;
    lblData: TLabel;
    lblFilial: TLabel;
    Timer1: TTimer;
    ResumodeProduo1: TMenuItem;
    Ajuda1: TMenuItem;
    Splash1: TMenuItem;
    N1: TMenuItem;
    Relatrios1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Image7: TImage;
    Buscarproduoporlote1: TMenuItem;
    Relatriodeproduodederivados1: TMenuItem;
    Relatriodeconsumodeinsumos1: TMenuItem;
    Relatriodevendas1: TMenuItem;
    Relatriodeconsumodeembalagens1: TMenuItem;
    Desnatedeleite1: TMenuItem;
    AnaliseFinanceira1: TMenuItem;
    Ajustarcustosdelanamentosconfirmados1: TMenuItem;
    procedure ColetadeLeite1Click(Sender: TObject);
    procedure Anlisedoleite1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure ColetoresResponsveis1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CriarColeta1Click(Sender: TObject);
    procedure Relatriodecoletas1Click(Sender: TObject);
    procedure CriarnovaConsultaranlises1Click(Sender: TObject);
    procedure Confernciaelanamentosdeestoque1Click(Sender: TObject);
    procedure Categoriadeleite1Click(Sender: TObject);
    procedure DepositosdeleiteSilos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Produodiria1Click(Sender: TObject);
    procedure Produtosdaprproduo1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ResumodeProduo1Click(Sender: TObject);
    procedure Splash1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Buscarproduoporlote1Click(Sender: TObject);
    procedure Relatriodeproduodederivados1Click(Sender: TObject);
    procedure Relatriodeconsumodeinsumos1Click(Sender: TObject);
    procedure Relatriodevendas1Click(Sender: TObject);
    procedure Relatriodeanlises1Click(Sender: TObject);
    procedure Relatriodeconsumodeembalagens1Click(Sender: TObject);
    procedure Desnatedeleite1Click(Sender: TObject);
    procedure AnaliseFinanceira1Click(Sender: TObject);
    procedure Ajustarcustosdelanamentosconfirmados1Click(Sender: TObject);

  private
    { Private declarations }
  public


  end;

var
    _main: T_main;
   // Handle: THandle;
    glb_versao:string='1.7.9';
    glb_grupo:string='1';
    glb_filial:string='00001';
    glb_usuario:string='IQ';
    glb_ip:string;
    glb_db:string;
    glb_senha:string;
    glb_user:string;
    glb_ip_servidor:string;
    glb_permissao:string='N';
    glb_campo:string='gerente';
    glb_continuar:string='N';
    glb_produtos:string='produtos';
    splash:string;
    login:string='N';
    glb_acao:string;
    glb_ID:string='';
    glb_sql2:string='';

implementation


{$R *.dfm}
uses
frmRelVendas,dm,frmDesnate,frmTipoLeite,dm2,frmFornecedores, frmProdutos, frmveiculos, frmColetores,frmColeta,midaslib, frmRelColeta,frmAnaliseColeta, frmConferenciaQtd, frmSilos,frmBuscProdLote,frmRelProdDerivados,frmAltCustFornecedor,
IdBaseComponent, IdComponent, IdIPWatch,frmConfigLaticinio, frmProducaoLaticinio,frmProdPreProducao, frmProducaoDiaria, frmSobre,frmSplash, IdHashMessageDigest,frmLogon,frmRelConsumoEmb,frmRelatoriosProducao,frmRelConsumo,frmRelAnalises,frmAnaliseDRE ;
 //função para criptografar e decriptografar strings
function Criptografar( Senha, Chave : String): String;
Var
x,y : Integer;
NovaSenha : String;
begin
for x := 1 to Length( Chave ) do
begin
NovaSenha := '';
for y := 1 to Length( Senha ) do
NovaSenha := NovaSenha + chr( (Ord(Chave[x]) xor Ord(Senha[y])));
Senha := NovaSenha;
end;
result := Senha;
end;

procedure obterIp;
var ip:TIdIPWatch;
begin
  ip := TIdIPWatch.Create(nil);
  glb_ip:=ip.LocalIP;
end;

procedure aberturaConexao;
var
 IPcnf,arqtexto:textFile;
 texto,CodDB,id:string;
begin
{
   Handle := FindWindow('T_main', nil);
   // if not FileExists('c:\iqsistemas\sice.net\multinstancia.txt') then
   // begin

       if Handle <> 0 Then           //já está aberto
       begin
        application.MessageBox('ATENÇÃO !!' + #13+#13+ 'Já existe uma cópia do programa  sendo executada neste terminal.'+#13+#13+'Verifique !!','Erro',MB_ICONEXCLAMATION+mb_ok);
        application.Terminate;
       end;

  // end;

 }


    if (FileExists( ExtractFilePath(Application.ExeName)+'\id.txt'))then
    begin
          AssignFile(arqtexto,ExtractFilePath(Application.ExeName)+'\id.txt');
          reset(arqtexto);
          while (not eof(arqtexto)) do
          begin
           Readln(arqtexto,id);
          end;
          closefile(arqtexto);
          glb_ID:= id;

    end;




      AssignFile(IPcnf, ExtractFilePath(application.ExeName)+'ip.cnf' );
      reset(IPcnf);

            while not eof (IPcnf) do
             begin
               readln(IPcnf,texto);
                 CodDB := trim(copy(texto,1,200));
                CodDB := Criptografar(coddb, 'iq');

                 glb_ip_servidor:=trim(copy(texto,1,50));
                 glb_ip_servidor := Criptografar(glb_ip_servidor, 'iq');

                 glb_senha:=trim(copy(texto,51,20));
                 glb_senha := Criptografar(glb_senha, 'iq');


                 glb_user:=trim(copy(texto,71,20));
                 glb_user := Criptografar(glb_user, 'iq');

                 glb_db:=(trim(copy(texto,91,20)));
                 glb_db := Criptografar(glb_db, 'iq');

             end;
       closefile(IPcnf);



end;

procedure T_main.Ajustarcustosdelanamentosconfirmados1Click(Sender: TObject);
begin
_frmAltCustFornecedor:= T_frmAltCustFornecedor.Create(self);
_frmAltCustFornecedor.ShowModal();
_frmAltCustFornecedor.Release;
end;

procedure T_main.AnaliseFinanceira1Click(Sender: TObject);
begin
_frmAnaliseDRE:=T_frmAnaliseDRE.Create(self);
_frmAnaliseDRE.ShowModal();
_frmAnaliseDRE.Release;
end;

procedure T_main.Anlisedoleite1Click(Sender: TObject);
begin
      _frmProdutos:=T_frmProdutos.Create(self);
      _frmProdutos.ShowModal();
      _frmProdutos.Release;
end;

procedure T_main.Buscarproduoporlote1Click(Sender: TObject);
begin
  _frmBuscProdLote:=T_frmBuscProdLote.create(self);
  _frmBuscProdLote.showmodal;
  _frmBuscProdLote.release;
end;

procedure T_main.Categoriadeleite1Click(Sender: TObject);
begin
  _frmtipoleite:=T_frmtipoleite.Create(self);
  _frmtipoleite.btnFechar.Caption:='Fechar';
  _frmtipoleite.ShowModal();
  _frmtipoleite.release;
end;

procedure T_main.ColetadeLeite1Click(Sender: TObject);
begin
   _frmFornecedores:=T_frmfornecedores.Create(self);
   _frmFornecedores.ShowModal();
   _frmFornecedores.Release;
end;

procedure T_main.ColetoresResponsveis1Click(Sender: TObject);
begin
  _frmColetores:=T_frmColetores.Create(self);
  _frmColetores.ShowModal;
  _frmColetores.Release;
end;

procedure T_main.Confernciaelanamentosdeestoque1Click(Sender: TObject);
begin
_frmConferenciaQtd:= T_frmConferenciaQtd.Create(self);
_frmConferenciaQtd.ShowModal;
_frmConferenciaQtd.Release;
end;

procedure T_main.CriarColeta1Click(Sender: TObject);
begin
  _frmColeta:=T_frmColeta.Create(self);
  _frmColeta.ShowModal;
  _frmColeta.Release;
end;

procedure T_main.CriarnovaConsultaranlises1Click(Sender: TObject);
begin
  _frmAnaliseColeta:=T_frmAnaliseColeta.Create(self);
  _frmAnaliseColeta.ShowModal;
  _frmAnaliseColeta.Release;
end;

procedure T_main.DepositosdeleiteSilos1Click(Sender: TObject);
begin
//_frmSilos:=T_frmSilos.Create(self);
//_frmSilos.ShowModal;
//_frmSilos.Release;
end;

procedure T_main.Desnatedeleite1Click(Sender: TObject);
begin
    _frmDesnate:=T_frmDesnate.Create(self);
    _frmDesnate.ShowModal;
    _frmDesnate.Release;
end;

procedure T_main.FormActivate(Sender: TObject);
begin
if(glb_filial<>'00001')then
glb_produtos:='produtosfilial';

  _dm.ConnecDm.Connected:=false;
  _dm.sdsSenhas.Close;
  _dm.cdsSenhas.Close;
  _dm.sdsSenhas.CommandText:='select * from senhas where operador ='+quotedstr(glb_usuario)+' and codigofilial='+quotedstr(glb_filial);
  _dm.sdsSenhas.ExecSQL();
  _dm.cdsSenhas.Open;
  _dm.cdsSenhas.refresh;


  FormatSettings.DecimalSeparator:='.';

end;

procedure T_main.FormCreate(Sender: TObject);
begin
aberturaConexao;

end;

procedure T_main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if(key=VK_F7) and (_dm.cdsSenhasadministrador.AsString='S')then
 begin
  _frmConfigLaticinio:=T_frmConfigLaticinio.create(self);
  _frmConfigLaticinio.showmodal;
  _frmConfigLaticinio.release;
 end
 else if(key=VK_F7) and (_dm.cdsSenhasadministrador.AsString='N')then
 begin
   application.MessageBox('Usuário não é administrador!','',MB_ICONEXCLAMATION+mb_ok);
   exit;
 end;

end;

procedure T_main.FormShow(Sender: TObject);
var
arq:textfile;
data,datalib,datacript,dataatual:string;
md5:TIdHashMessageDigest5;
linha:integer;
begin
aberturaConexao;

  linha:=1;





   if(FileExists(ExtractFilePath(Application.ExeName)+'modal.txt'))then
   begin
         md5:=TIdHashMessageDigest5.Create();
       assignFile(arq,ExtractFilePath(Application.ExeName)+'modal.txt');
       reset(arq);

        while (not eof(arq)) do
        begin
         Readln(arq,data);

            if(linha=1)then
            begin

            //datacript:= md5.HashStringAsHex(data);
            datacript:=data;

            end
            else if(linha=2)then
            begin
                datalib:=data;
            end;

              linha:=linha+1;


        end;
        closefile(arq);
        linha:=1;

         if(md5.HashStringAsHex(datalib+'iq@2013tex')<>datacript)then
         begin
           showmessage('Arquivo de liberação danificado!');
           application.Terminate;
         end;


       // dataatual:=md5.HashStringAsHex(formatdatetime('dd/mm/yyyy',now));

         glb_versao:= glb_versao+'  Teste';

        if(formatdatetime('dd/mm/yyyy',now)=datalib )then
        begin
            application.MessageBox('Periodo de testes expirado! Entre em contato com a IQ Sistemas pelo fone: 87 3821-2715','Aviso',MB_OK+MB_ICONEXCLAMATION);
            application.Terminate;
        end;



    end;



    if(splash<>'S')then
    begin
   _frmSplash:=T_frmSplash.Create(self);
   _frmSplash.ShowModal;
    _frmSplash.Release;




    if(login='N')then
    begin
      _frmLogon:=T_frmLogon.Create(self);
      _frmLogon.ShowModal;
    end;


    if(login='N')then
    begin
     Application.Terminate;
     end;


      if(glb_filial = '00001')then
      glb_produtos:='produtos'
      else
      glb_produtos:='produtosfilial';


//obtendo IP local.
obterIp;

_main.Caption:='IQ Sistemas - Praticando tecnologias.    SICE.Laticínios®   Versão: '+glb_versao;

lbloperador.Caption:=glb_usuario;

lblFilial.Caption:=glb_filial+' - '+_dm.cdsFiliaisfantasia.AsString;


 _dm.ConnecDm.Connected:=false;
 _dm.cdsConfigLaticinio.Close;
 _dm.sdsConfigLaticinio.CommandText:='SELECT * FROM configlaticinio WHERE codigofilial='+quotedstr(glb_filial);
 _dm.sdsConfigLaticinio.ExecSQL();
 _dm.cdsConfigLaticinio.Open;
 _dm.cdsConfigLaticinio.refresh;


  _dm2.ConnecDm2.Connected:=false;
  _dm2.cdsImagens.Open;
  if(glb_ID='')then
  _dm2.sdsImagens.CommandText:=' SELECT * FROM caminhoimagens WHERE codigofilial='+quotedstr(glb_filial)+'  and ip='+quotedstr(glb_ip)
  else
  _dm2.sdsImagens.CommandText:=' SELECT * FROM caminhoimagens WHERE codigofilial='+quotedstr(glb_filial)+'  and ip='+quotedstr(glb_ID);

  _dm2.sdsImagens.ExecSQL();
  _dm2.cdsImagens.open;
  _dm2.cdsImagens.refresh;



     if(_dm2.cdsImagens.RecordCount > 0)then
     begin

           try
          //clipboard.AsText:= _dm.cdsConfigLaticiniocaminhobackground.AsString;
           Image7.Picture.LoadFromFile(_dm2.cdsImagensbackground.AsString);
          except

          end;

     end;


 _dm.ConnecDm.Connected:=false;
 _dm.cdsFiliais.Close;
 _dm.sdsFiliais.CommandText:='SELECT * FROM filiais WHERE codigofilial='+quotedstr(glb_filial)+' and grupo =abs('+quotedstr(glb_grupo)+')';
 _dm.sdsFiliais.ExecSQL();
 _dm.cdsFiliais.Open;
 _dm.cdsFiliais.refresh;


    end;

end;

procedure T_main.Image1Click(Sender: TObject);
begin
_frmProducaoLaticinio:=T_frmProducaoLaticinio.create(self);
_frmProducaoLaticinio.ShowModal();
_frmProducaoLaticinio.Release;
end;

procedure T_main.Image2Click(Sender: TObject);
begin
_frmProducaoDiaria:=T_frmProducaoDiaria.create(self);
_frmProducaoDiaria.showmodal;
_frmProducaoDiaria.release;
end;

procedure T_main.Image3Click(Sender: TObject);
begin
_frmConferenciaQtd:= T_frmConferenciaQtd.Create(self);
_frmConferenciaQtd.ShowModal;
_frmConferenciaQtd.Release;
end;

procedure T_main.Image4Click(Sender: TObject);
begin
 _frmAnaliseColeta:=T_frmAnaliseColeta.Create(self);
  _frmAnaliseColeta.ShowModal;
  _frmAnaliseColeta.Release;
end;

procedure T_main.Image5Click(Sender: TObject);
begin
  _frmColeta:=T_frmColeta.Create(self);
  _frmColeta.ShowModal;
  _frmColeta.Release;
end;

procedure T_main.Produodiria1Click(Sender: TObject);
begin

_frmProducaoLaticinio:=T_frmProducaoLaticinio.create(self);
_frmProducaoLaticinio.ShowModal();
_frmProducaoLaticinio.Release;

end;

procedure T_main.Produtosdaprproduo1Click(Sender: TObject);
begin
_frmProdPreProducao:=T_frmProdPreProducao.create(self);
_frmProdPreProducao.showmodal;
_frmProdPreProducao.release;
end;

procedure T_main.Relatriodeanlises1Click(Sender: TObject);
begin

_frmRelAnalises:= T_frmRelAnalises.Create(self);
_frmRelAnalises.ShowModal();
_frmRelAnalises.Release;


end;

procedure T_main.Relatriodecoletas1Click(Sender: TObject);
begin
_frmRelColeta:= T_frmRelColeta.Create(self);
_frmRelColeta.ShowModal();
_frmRelColeta.Release;
end;

procedure T_main.Relatriodeconsumodeembalagens1Click(Sender: TObject);
begin
_frmRelConsumoEmb:=T_frmRelConsumoEmb.create(Self);
_frmRelConsumoEmb.ShowModal;
_frmRelConsumoEmb.Release;
end;

procedure T_main.Relatriodeconsumodeinsumos1Click(Sender: TObject);
begin

_frmRelConsumo:=T_frmRelConsumo.create(self);
_frmRelConsumo.showmodal;
_frmRelConsumo.release;

end;

procedure T_main.Relatriodeproduodederivados1Click(Sender: TObject);
begin
_frmRelProdDerivados:=T_frmRelProdDerivados.create(self);
_frmRelProdDerivados.showmodal;
_frmRelProdDerivados.release;
end;

procedure T_main.Relatriodevendas1Click(Sender: TObject);
begin
_frmRelVendas:=T_frmRelVendas.create(self);
_frmRelVendas.showmodal;
_frmRelVendas.release;
end;

procedure T_main.Relatrios1Click(Sender: TObject);
begin
_frmRelatoriosProducao:=T_frmRelatoriosProducao.create(self);
_frmRelatoriosProducao.showmodal;
_frmRelatoriosProducao.release;
end;

procedure T_main.ResumodeProduo1Click(Sender: TObject);
begin
_frmProducaoDiaria:=T_frmProducaoDiaria.create(self);
_frmProducaoDiaria.showmodal;
_frmProducaoDiaria.release;
end;

procedure T_main.Splash1Click(Sender: TObject);
begin
_frmSobre:=T_frmSobre.Create(self);
_frmSobre.ShowModal;
_frmSobre.Release;

end;

procedure T_main.Timer1Timer(Sender: TObject);
begin
lblData.caption:=formatdatetime('dd/mm/yyyy hh:mm:ss',now);
end;

procedure T_main.Veculos1Click(Sender: TObject);
begin

  _frmveiculos:= T_frmveiculos.create(self);
  _frmveiculos.ShowModal;
  _frmveiculos.Release;
end;

end.


