unit frmProducaoLaticinio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit,
  RxCurrEdit, Data.DB, Vcl.Imaging.pngimage, Vcl.ImgList, RDprint, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, RpCon, RpConDS, RpBase,
  RpSystem, RpDefine, RpRave;

type
  T_frmProducaoLaticinio = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    tabDadosProducao: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    txtNumero: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label9: TLabel;
    pnlitens: TPanel;
    Panel5: TPanel;
    Label14: TLabel;
    pnlFerramentasPreproducao: TPanel;
    gridProdPre: TDBGrid;
    btnExcProdPre: TBitBtn;
    btnIncProdPre: TBitBtn;
    pnlDadosFim: TPanel;
    cboOperadorFim: TComboBox;
    Label7: TLabel;
    Label4: TLabel;
    lblDatafim: TLabel;
    Label6: TLabel;
    pnlAbertura: TPanel;
    Label8: TLabel;
    lblDataini: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    cboOperadorAbertura: TComboBox;
    Label3: TLabel;
    cboFilial: TComboBox;
    bitLiberarDigitacao: TBitBtn;
    pnlleite: TPanel;
    pnlInformacaoleite: TPanel;
    pnlcreme: TPanel;
    Panel6: TPanel;
    Label19: TLabel;
    pnlabrir: TPanel;
    Panel19: TPanel;
    Label60: TLabel;
    rgTipoPesq: TRadioGroup;
    pnlNumero: TPanel;
    pnldata: TPanel;
    datapesqini: TDateEdit;
    txtnumeropesquisa: TEdit;
    btnabrir: TBitBtn;
    BitBtn6: TBitBtn;
    pnlLancar: TPanel;
    Panel20: TPanel;
    Label61: TLabel;
    lblCod: TLabel;
    lblProd: TLabel;
    txtqtdleite: TCurrencyEdit;
    Label62: TLabel;
    btnlancprod: TBitBtn;
    btnlanc: TBitBtn;
    BitBtn9: TBitBtn;
    Label63: TLabel;
    Label64: TLabel;
    Label13: TLabel;
    txtLeiteEntrada: TCurrencyEdit;
    Label15: TLabel;
    txtLeiteUtilizado: TCurrencyEdit;
    Label16: TLabel;
    txtLeiteVendido: TCurrencyEdit;
    Label17: TLabel;
    txtLeiteSaldo: TCurrencyEdit;
    Label18: TLabel;
    txtLeitePerda: TCurrencyEdit;
    txtCremeSoro: TCurrencyEdit;
    txtCremeComprado: TCurrencyEdit;
    txtCremeDesnatado: TCurrencyEdit;
    txtCremePadronizado: TCurrencyEdit;
    txtCremeSoroCoalho: TCurrencyEdit;
    txtCremeVendido: TCurrencyEdit;
    txtCremeUtilizado: TCurrencyEdit;
    txtCremeSaldo: TCurrencyEdit;
    txtCremePerda: TCurrencyEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Panel2: TPanel;
    pnlmanteiga: TPanel;
    Panel22: TPanel;
    Label79: TLabel;
    Panel23: TPanel;
    txtManteigaCderretido: TCurrencyEdit;
    Label70: TLabel;
    Label71: TLabel;
    txtManteigaObitida: TCurrencyEdit;
    txtManteigaRendimento: TCurrencyEdit;
    Label72: TLabel;
    Label73: TLabel;
    txtManteigaUtilizada: TCurrencyEdit;
    Label74: TLabel;
    txtManteigaEstoque: TCurrencyEdit;
    Label75: TLabel;
    txtPerda: TCurrencyEdit;
    gridLeite: TStringGrid;
    gridCreme: TStringGrid;
    gridManteiga: TStringGrid;
    bitbtnConfirmar: TBitBtn;
    Panel9: TPanel;
    Label39: TLabel;
    pnlDasosProducao: TPanel;
    datatxtaproducao: TDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    lblnrproducao: TLabel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label21: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    txtLeiteSobra: TCurrencyEdit;
    Label22: TLabel;
    txtManteigaSaldo: TCurrencyEdit;
    Label23: TLabel;
    txtLeiteDestinado: TCurrencyEdit;
    Label28: TLabel;
    txtqtdcreme: TCurrencyEdit;
    txtqtdmanteiga: TCurrencyEdit;
    Label29: TLabel;
    Label30: TLabel;
    txtManteigaDestinada: TCurrencyEdit;
    Label31: TLabel;
    txtcremedestinado: TCurrencyEdit;
    Label32: TLabel;
    BitBtn5: TBitBtn;
    txtCremEmEstoque: TCurrencyEdit;
    Label33: TLabel;
    txtcremesobra: TCurrencyEdit;
    Label34: TLabel;
    txtManteigaSobra: TCurrencyEdit;
    Label35: TLabel;
    BitBtn7: TBitBtn;
    txtSoro: TCurrencyEdit;
    Label36: TLabel;
    pnlSobraColeta: TPanel;
    Label37: TLabel;
    datacoleta: TDateEdit;
    gridColeta: TStringGrid;
    BitBtn8: TBitBtn;
    obtersaldoleite: TBitBtn;
    Label38: TLabel;
    txtSaldoColeta: TCurrencyEdit;
    BitBtn15: TBitBtn;
    BitBtn14: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn16: TBitBtn;
    BitBtn3: TBitBtn;
    pnlAlterarData: TPanel;
    Panel4: TPanel;
    Label40: TLabel;
    dataProdAlt: TDateEdit;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    txtdesc: TEdit;
    Label41: TLabel;
    BitBtn19: TBitBtn;
    pnldescricao: TPanel;
    txtaltdesc: TEdit;
    BitBtn20: TBitBtn;
    Panel3: TPanel;
    Label42: TLabel;
    BitBtn21: TBitBtn;
    Label43: TLabel;
    datapesqfim: TDateEdit;
    Label44: TLabel;
    TabSheet2: TTabSheet;
    Panel7: TPanel;
    Label45: TLabel;
    dsProdutos: TDataSource;
    Label46: TLabel;
    dsFluxos: TDataSource;
    Panel8: TPanel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    pnlacoesinsumos: TPanel;
    imgMateria: TImage;
    lblmateria: TLabel;
    lblProdMarcado: TLabel;
    bitRequisitar: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    imgstatus: TImageList;
    Panel11: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    BitBtn24: TBitBtn;
    Label50: TLabel;
    lbltotprod: TLabel;
    BitBtn4: TBitBtn;
    RvPordem: TRvProject;
    RvSordem: TRvSystem;
    RvDdsOrdem: TRvDataSetConnection;
    pnlparam: TPanel;
    Panel12: TPanel;
    Label51: TLabel;
    rgparam: TRadioGroup;
    BitBtn25: TBitBtn;
    rvpOerdemSimples: TRvProject;
    RvSystem1: TRvSystem;
    chktipo: TCheckBox;
    pnlaguarde: TPanel;
    procedure gridProdPreDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgTipoPesqClick(Sender: TObject);
    procedure btnabrirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnlancprodClick(Sender: TObject);
    procedure btnlancClick(Sender: TObject);
    procedure btnIncProdPreClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnExcProdPreClick(Sender: TObject);
    procedure bitbtnConfirmarClick(Sender: TObject);
    procedure gridLeiteDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure gridCremeDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure gridManteigaDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure gridLeiteKeyPress(Sender: TObject; var Key: Char);
    procedure gridCremeKeyPress(Sender: TObject; var Key: Char);
    procedure gridManteigaKeyPress(Sender: TObject; var Key: Char);
    procedure txtqtdleiteKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure txtLeiteEntradaExit(Sender: TObject);
    procedure txtLeiteVendidoExit(Sender: TObject);
    procedure txtLeiteSaldoExit(Sender: TObject);
    procedure txtcremesobraExit(Sender: TObject);
    procedure txtCremeCompradoExit(Sender: TObject);
    procedure txtCremeDesnatadoExit(Sender: TObject);
    procedure txtCremePadronizadoExit(Sender: TObject);
    procedure txtCremeSoroExit(Sender: TObject);
    procedure txtCremeSoroCoalhoExit(Sender: TObject);
    procedure txtCremeVendidoExit(Sender: TObject);
    procedure txtCremEmEstoqueExit(Sender: TObject);
    procedure txtnumeropesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure txtManteigaCderretidoExit(Sender: TObject);
    procedure txtManteigaObitidaExit(Sender: TObject);
    procedure txtManteigaEstoqueExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure obtersaldoleiteClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure txtLeiteSobraExit(Sender: TObject);
    procedure bitLiberarDigitacaoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure gridLeiteSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure gridLeiteDblClick(Sender: TObject);
    procedure gridCremeDblClick(Sender: TObject);
    procedure gridManteigaDblClick(Sender: TObject);
    procedure gridCremeSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure gridManteigaSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure bitRequisitarClick(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure RDproducaoBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:tform;
    rowLeite,colLeite,rowManteiga,colManteiga,rowCreme,colCreme:integer;
    continuar,numeroPesq:string;
    numAnalises:string;
  end;

var
  _frmProducaoLaticinio: T_frmProducaoLaticinio;

implementation

{$R *.dfm}
uses
main,dm,dm2,clipbrd,frmprodutos,frmsilos,frmlogin,frmProdPreProducao,
frmInsumosdeproducao;
procedure totalizarValores(tipo:string; nrProducao:string);
begin

      if(tipo='L') or (tipo='T')then
      begin

      try
      begin
       _frmProducaoLaticinio.txtLeiteSaldo.Value:= {_frmProducaoLaticinio.txtLeiteSobra.Value + }_frmProducaoLaticinio.txtLeiteEntrada.Value - _frmProducaoLaticinio.txtLeiteUtilizado.Value - _frmProducaoLaticinio.txtLeiteVendido.Value;

       _frmProducaoLaticinio.txtLeiteperda.Value:= {_frmProducaoLaticinio.txtLeiteSobra.Value + }_frmProducaoLaticinio.txtLeiteEntrada.Value - _frmProducaoLaticinio.txtLeiteUtilizado.Value - _frmProducaoLaticinio.txtLeiteVendido.Value - _frmProducaoLaticinio.txtLeitesaldo.Value;

       if(_frmProducaoLaticinio.txtLeiteperda.Value<0)then
       _frmProducaoLaticinio.txtLeiteperda.Value:=0;

      end;

      except

      end;


      end;

      if(tipo='C') or (tipo='T')then
      begin
       try
       begin
       _frmProducaoLaticinio.txtCremeSaldo.Value:= _frmProducaoLaticinio.txtcremesobra.Value + _frmProducaoLaticinio.txtCremeComprado.Value + _frmProducaoLaticinio.txtCremeDesnatado.Value + _frmProducaoLaticinio.txtCremePadronizado.Value + _frmProducaoLaticinio.txtcremesoro.value + _frmProducaoLaticinio.txtCremeSoroCoalho.Value - _frmProducaoLaticinio.txtCremeUtilizado.Value;
       _frmProducaoLaticinio.txtCremePerda.Value:= _frmProducaoLaticinio.txtCremeSaldo.Value - _frmProducaoLaticinio.txtCremEmEstoque.Value;

       if( _frmProducaoLaticinio.txtCremePerda.Value <0)then
        _frmProducaoLaticinio.txtCremePerda.Value:=0;


       end;
       except

       end;

      end;

      if(tipo='M') or (tipo='T')then
      begin

          try
          begin
          _frmProducaoLaticinio.txtManteigaRendimento.Value := _frmProducaoLaticinio.txtManteigaCderretido.Value / _frmProducaoLaticinio.txtManteigaObitida.Value;
          _frmProducaoLaticinio.txtManteigaSaldo.Value:= (_frmProducaoLaticinio.txtManteigaSobra.Value + _frmProducaoLaticinio.txtManteigaObitida.Value) - _frmProducaoLaticinio.txtManteigaUtilizada.Value;
          _frmProducaoLaticinio.txtPerda.Value:= _frmProducaoLaticinio.txtManteigaSaldo.Value- _frmProducaoLaticinio.txtManteigaEstoque.Value;

            if(_frmProducaoLaticinio.txtPerda.Value<0)then
            _frmProducaoLaticinio.txtPerda.Value:=0;

          end;
          except

          end;
      end;



end;
procedure salvardados(tipo:string;nrProducao:string);
var
I:integer;
total:currency;
begin




    if(tipo = 'L') or (tipo='T')then
     begin

     total:=0;

          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE dadosproducaoleite SET ');
          _dm2.qrLeite.SQL.Add('sobra='+quotedstr(currtostr(_frmProducaoLaticinio.txtLeitesobra.value))+',');
          _dm2.qrLeite.SQL.Add('entrada='+quotedstr(currtostr(_frmProducaoLaticinio.txtLeiteEntrada.value))+',');
          _dm2.qrLeite.SQL.Add('destinado='+quotedstr(currtostr(_frmProducaoLaticinio.txtLeiteDestinado.value))+',');
          _dm2.qrLeite.SQL.Add('utilizado='+quotedstr(currtostr(_frmProducaoLaticinio.txtLeiteUtilizado.value))+',');
          _dm2.qrLeite.SQL.Add('vendido='+quotedstr(currtostr(_frmProducaoLaticinio.txtLeiteVendido.value))+',');
          _dm2.qrLeite.SQL.Add('saldo='+quotedstr(currtostr(_frmProducaoLaticinio.txtLeiteSaldo.value))+',');
          _dm2.qrLeite.SQL.Add('perda='+quotedstr(currtostr(_frmProducaoLaticinio.txtLeitePerda.value))+',');
          _dm2.qrLeite.SQL.Add(' salvo='+quotedstr('S')+' WHERE numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.execsql;


          for I := 0 to _frmProducaoLaticinio.gridLeite.colcount-1 do
          begin
{
          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE resumoprodleite  SET quantidadeajustada='+quotedstr(_frmProducaoLaticinio.gridLeite.Cells[I,1])+', salvo="S" ');
          _dm2.qrLeite.SQL.Add(' WHERE codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridLeite.Cells[I,0],1,4))+') AND numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.execsql;
 }
          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE resumoprodleite as r, producaoitens as p  SET r.quantidadeajustada='+quotedstr(_frmProducaoLaticinio.gridLeite.Cells[I,1])+', r.salvo="S", ');
          _dm2.qrLeite.SQL.Add(' p.quantidadeleite='+quotedstr(_frmProducaoLaticinio.gridLeite.Cells[I,1])+'  WHERE r.inc_prod_producao=abs('+quotedstr(copy(_frmProducaoLaticinio.gridLeite.Cells[I,0],1,4))+') AND r.numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.SQL.Add(' and p.numeroproducao=r.numeroproducao and p.id=r.inc_prod_producao');
          _dm2.qrLeite.execsql;


  {
          //atualiza tabela produção itens
          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE producaoitens SET quantidadeleite='+quotedstr(_frmProducaoLaticinio.gridLeite.Cells[I,1]));
          _dm2.qrLeite.SQL.Add(' WHERE codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridLeite.Cells[I,0],1,4))+') AND numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.execsql;

   }

          end;


     end;


     if(tipo = 'C') or (tipo='T')then
     begin

      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrcreme.SQL.Clear;
      _dm2.qrcreme.SQL.Add(' UPDATE dadosproducaocreme SET ');
      _dm2.qrcreme.SQL.Add(' sobra='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremesobra.value))+',');
      _dm2.qrcreme.SQL.Add(' comprado='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremeComprado.value))+',');
      _dm2.qrcreme.SQL.Add(' destinado='+quotedstr(currtostr(_frmProducaoLaticinio.txtcremedestinado.value))+',');
      _dm2.qrcreme.SQL.Add(' desnatado='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremeDesnatado.value))+',');
      _dm2.qrcreme.SQL.Add(' padronizado='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremePadronizado.value))+',');
      _dm2.qrcreme.SQL.Add(' soro='+quotedstr( currtostr(_frmProducaoLaticinio.txtCremeSoro.value))+',');
      _dm2.qrcreme.SQL.Add(' sorocoalho='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremeSoroCoalho.value))+',');
      _dm2.qrcreme.SQL.Add(' vendido='+quotedstr( currtostr(_frmProducaoLaticinio.txtCremeVendido.value))+',');
      _dm2.qrcreme.SQL.Add(' utilizado='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremeUtilizado.value))+',');
      _dm2.qrcreme.SQL.Add(' saldo='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremeSaldo.value))+',');
      _dm2.qrcreme.SQL.Add(' estoque='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremEmEstoque.Value))+',');
      _dm2.qrcreme.SQL.Add(' perda='+quotedstr(currtostr(_frmProducaoLaticinio.txtCremePerda.value))+',');
      _dm2.qrcreme.SQL.Add(' salvo='+quotedstr('S')+' WHERE numeroproducao='+quotedstr(nrProducao));
      _dm2.qrcreme.ExecSQL();

        for I := 0 to _frmProducaoLaticinio.gridcreme.colcount-1 do
          begin

       {   _dm2.ConnecDm2.Connected:=false;
          _dm2.qrcreme.SQL.Clear;
          _dm2.qrcreme.SQL.Add(' UPDATE resumoprodcreme SET quantidadeajustada='+quotedstr(_frmProducaoLaticinio.gridcreme.Cells[I,1])+',salvo="S"');
          _dm2.qrcreme.SQL.Add(' WHERE codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridcreme.Cells[I,0],1,4))+') AND numeroproducao='+quotedstr(nrProducao));
          _dm2.qrcreme.execsql;
        }

           _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE resumoprodcreme as r, producaoitens as p  SET r.quantidadeajustada='+quotedstr(_frmProducaoLaticinio.gridcreme.Cells[I,1])+', r.salvo="S", ');
          _dm2.qrLeite.SQL.Add(' p.quantidadecreme='+quotedstr(_frmProducaoLaticinio.gridcreme.Cells[I,1])+'  WHERE r.inc_prod_producao=abs('+quotedstr(copy(_frmProducaoLaticinio.gridcreme.Cells[I,0],1,4))+') AND r.numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.SQL.Add(' and p.numeroproducao=r.numeroproducao and p.id=r.inc_prod_producao');
          _dm2.qrLeite.execsql;



        {
          //atualiza tabela produção itens
          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE producaoitens SET quantidadecreme='+quotedstr(_frmProducaoLaticinio.gridcreme.Cells[I,1]));
          _dm2.qrLeite.SQL.Add(' WHERE codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridcreme.Cells[I,0],1,4))+') AND numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.execsql;
         }


          end;



     end;


     if(tipo = 'M') or (tipo='T')then
     begin

      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrmanteiga.SQL.Clear;
      _dm2.qrmanteiga.SQL.Add(' UPDATE dadosproducaomanteiga SET ');
      _dm2.qrmanteiga.SQL.Add(' cremederretido='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaCderretido.value))+',');
      _dm2.qrmanteiga.SQL.Add(' manteigaobitida='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaObitida.value))+',');
      _dm2.qrmanteiga.SQL.Add(' rendimento='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaRendimento.value))+',');
      _dm2.qrmanteiga.SQL.Add(' manteigautilizada='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaUtilizada.value))+',');
      _dm2.qrmanteiga.SQL.Add(' destinado='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaDestinada.value))+',');
      _dm2.qrmanteiga.SQL.Add(' estoque='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaEstoque.value))+',');
      _dm2.qrmanteiga.SQL.Add(' perda='+quotedstr(currtostr(_frmProducaoLaticinio.txtPerda.value))+',');
      _dm2.qrmanteiga.SQL.Add(' sobra='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaSobra.value))+',');
      _dm2.qrmanteiga.SQL.Add(' saldo='+quotedstr(currtostr(_frmProducaoLaticinio.txtManteigaSaldo.value))+',');
      _dm2.qrmanteiga.SQL.Add(' salvo='+quotedstr('S')+' WHERE numeroproducao='+quotedstr(nrProducao));
      _dm2.qrmanteiga.ExecSQL();



        for I := 0 to _frmProducaoLaticinio.gridmanteiga.colcount-1 do
          begin

         { _dm2.ConnecDm2.Connected:=false;
          _dm2.qrmanteiga.SQL.Clear;
          _dm2.qrmanteiga.SQL.Add(' UPDATE resumoprodmanteiga SET quantidadeajustada='+quotedstr(_frmProducaoLaticinio.gridmanteiga.Cells[I,1])+', salvo="S"');
          _dm2.qrmanteiga.SQL.Add(' WHERE codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridmanteiga.Cells[I,0],1,4))+') AND numeroproducao='+quotedstr(nrProducao));
          _dm2.qrmanteiga.execsql;  }



          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE resumoprodmanteiga as r, producaoitens as p  SET r.quantidadeajustada='+quotedstr(_frmProducaoLaticinio.gridmanteiga.Cells[I,1])+', r.salvo="S", ');
          _dm2.qrLeite.SQL.Add(' p.quantidademanteiga='+quotedstr(_frmProducaoLaticinio.gridmanteiga.Cells[I,1])+'  WHERE r.inc_prod_producao=abs('+quotedstr(copy(_frmProducaoLaticinio.gridmanteiga.Cells[I,0],1,4))+') AND r.numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.SQL.Add(' and p.numeroproducao=r.numeroproducao and p.id=r.inc_prod_producao');
          _dm2.qrLeite.execsql;



        { //atualiza tabela produção itens
          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrLeite.SQL.Clear;
          _dm2.qrLeite.SQL.Add(' UPDATE producaoitens SET quantidademanteiga='+quotedstr(_frmProducaoLaticinio.gridmanteiga.Cells[I,1]));
          _dm2.qrLeite.SQL.Add(' WHERE codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridmanteiga.Cells[I,0],1,4))+') AND numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.execsql;
         }

          end;


     end;







end;

function validaNumeros(var Key: Char):string;
begin
     if not( key in['0'..'9']) and (key<>'.') and (key<>#8)then
  begin
      key:=#0;
  end;
end;
procedure gerarGrids(numeroProducao:string);
var
c:integer;
leiteUtilizado,cremeUtilizado,manteigaUtilizada,soroutilizado:currency;
begin

      //resumo producao
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsresumoleite.close;
      _dm2.sdsresumoleite.CommandText:='SELECT * FROM resumoprodleite WHERE numeroproducao='+quotedstr(numeroProducao);
      _dm2.sdsresumoleite.ExecSQL;
      _dm2.cdsresumoleite.Open;
      _dm2.cdsresumoleite.refresh;


      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsresumocreme.close;
      _dm2.sdsresumocreme.CommandText:='SELECT * FROM resumoprodcreme WHERE numeroproducao='+quotedstr(numeroProducao);
      _dm2.sdsresumocreme.ExecSQL;
      _dm2.cdsresumocreme.Open;
      _dm2.cdsresumocreme.refresh;


      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsresumomanteiga.close;
      _dm2.sdsresumomanteiga.CommandText:='SELECT * FROM resumoprodmanteiga WHERE numeroproducao='+quotedstr(numeroProducao);
      _dm2.sdsresumomanteiga.ExecSQL;
      _dm2.cdsresumomanteiga.Open;
      _dm2.cdsresumomanteiga.refresh;


      //Dados producao
        _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaoleite.close;
      _dm2.sdsproducaoleite.CommandText:='SELECT * FROM dadosproducaoleite WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaoleite.ExecSQL;
      _dm2.cdsproducaoleite.Open;
      _dm2.cdsproducaoleite.refresh;

       _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaocreme.close;
      _dm2.sdsproducaocreme.CommandText:='SELECT * FROM dadosproducaocreme WHERE numeroproducao='+quotedstr(numeroProducao);
      _dm2.sdsproducaocreme.ExecSQL;
      _dm2.cdsproducaocreme.Open;
      _dm2.cdsproducaocreme.refresh;


         _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaomanteiga.close;
      _dm2.sdsproducaomanteiga.CommandText:='SELECT * FROM dadosproducaomanteiga WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaomanteiga.ExecSQL;
      _dm2.cdsproducaomanteiga.Open;
      _dm2.cdsproducaomanteiga.refresh;


      // LIMPANDO GRIDS  ZERA VALORES

        if(_dm2.cdsresumoleite.RecordCount=0)then
        begin
            _frmProducaoLaticinio.gridleite.Cells[0,0]:= '';
            _frmProducaoLaticinio.gridleite.Cells[0,1]:= '0.00';

            _frmProducaoLaticinio.txtLeiteEntrada.Value:= 0;
            _frmProducaoLaticinio.txtLeiteVendido.Value:=0;
            _frmProducaoLaticinio.txtLeiteSaldo.Value:= 0;
            _frmProducaoLaticinio.txtLeitePerda.Value:= 0;
            _frmProducaoLaticinio.txtLeiteDestinado.Value:=  0;
            _frmProducaoLaticinio.txtLeiteUtilizado.Value:=0;

            //_frmProducaoLaticinio.pnlleite.Enabled:=false;
        end;

        if(_dm2.cdsresumocreme.RecordCount=0)then
        begin
          _frmProducaoLaticinio.gridcreme.Cells[0,0]:= '';
          _frmProducaoLaticinio.gridcreme.Cells[0,1]:= '0.00';

         // _frmProducaoLaticinio.txtCremeSobra.Value:= 0;
          _frmProducaoLaticinio.txtCremeComprado.Value:= 0;
          _frmProducaoLaticinio.txtCremeDesnatado.Value:=  0;
          _frmProducaoLaticinio.txtCremePadronizado.Value:= 0;
          _frmProducaoLaticinio.txtCremeSoro.Value:=   0;
          _frmProducaoLaticinio.txtCremeSoroCoalho.Value:= 0;
          _frmProducaoLaticinio.txtCremeVendido.Value:=  0;
          _frmProducaoLaticinio.txtCremeSaldo.Value:=  0;
          _frmProducaoLaticinio.txtCremePerda.Value:=  0;
          _frmProducaoLaticinio.txtcremedestinado.Value:=  0;
          _frmProducaoLaticinio.txtCremeUtilizado.Value:=  0;

         // _frmProducaoLaticinio.pnlcreme.Enabled:=false;

        end;

        if(_dm2.cdsresumomanteiga.RecordCount=0)then
        begin
           _frmProducaoLaticinio.gridmanteiga.Cells[0,0]:= '';
           _frmProducaoLaticinio.gridmanteiga.Cells[0,1]:= '0.00';

           _frmProducaoLaticinio.txtManteigaCderretido.Value:= 0;
           _frmProducaoLaticinio.txtManteigaObitida.Value:= 0;
           _frmProducaoLaticinio.txtManteigaRendimento.Value:=0;
           _frmProducaoLaticinio.txtManteigaSaldo.Value:= 0;
           _frmProducaoLaticinio.txtManteigaEstoque.Value:=0;
           _frmProducaoLaticinio.txtPerda.Value:=0;
           _frmProducaoLaticinio.txtManteigaDestinada.Value:= 0;
           _frmProducaoLaticinio.txtManteigaUtilizada.Value:= 0;

          // _frmProducaoLaticinio.pnlmanteiga.Enabled:=false;

        end;




      //FIM LIMPA GRIDS ZERA VALORES


    //GERA GRIDE RESUMO LEITE
      c:=0;

      leiteUtilizado:=0;
      _frmProducaoLaticinio.gridleite.ColCount:= 1;
      _frmProducaoLaticinio.gridleite.Cells[0,0]:='0.00';
      if(_dm2.cdsresumoleite.RecordCount>0)then
      begin
             _frmProducaoLaticinio.gridleite.ColCount:=_dm2.cdsresumoleite.RecordCount;


             _dm2.cdsresumoleite.first;
             while not _dm2.cdsresumoleite.eof do
             begin

                  _frmProducaoLaticinio.gridleite.Cells[c,0]:= _dm2.cdsResumoleiteinc_prod_producao.AsString.PadLeft(4,'0') +'-'+_dm2.cdsResumoleiteproduto.AsString;

                  if(_dm2.cdsResumoleitesalvo.AsString='N')then
                  _frmProducaoLaticinio.gridleite.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumoleitequantidade.ascurrency)
                  else
                  _frmProducaoLaticinio.gridleite.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumoleitequantidadeajustada.ascurrency);


                  _frmProducaoLaticinio.gridleite.ColWidths[c]:=300;
                   c:=c+1;
                  _frmProducaoLaticinio.gridleite.ColCount:=_frmProducaoLaticinio.gridleite.ColCount+1;

                  leiteUtilizado:=leiteUtilizado+_dm2.cdsResumoleitequantidade.ascurrency;
                  _dm2.cdsresumoleite.Next;

             end;
              _frmProducaoLaticinio.gridleite.ColCount:=c;
      end;

    if(_dm2.cdsproducaoleitesalvo.AsString='N')then
    begin

      _frmProducaoLaticinio.txtLeiteUtilizado.Value:= leiteUtilizado;
      _frmProducaoLaticinio.txtLeiteDestinado.Value:= leiteUtilizado;

    end
    else
    begin

      _frmProducaoLaticinio.txtLeiteUtilizado.Value:= _dm2.cdsProducaoLeiteutilizado.ascurrency;
      _frmProducaoLaticinio.txtLeiteDestinado.Value:= _dm2.cdsproducaoleitedestinado.ascurrency;

    end;
    //FIM GERA GRIDE RESUMO LEITE



    //GERA GRIDE RESUMO CREME


    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.SQL.Add('select sum(quantidadesoro) as total_soro from producaoitens where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigofilial='+quotedstr(glb_filial));
    _dm2.qrPadrao.open;

   soroutilizado:= _dm2.qrPadrao.fieldbyname('total_soro').ascurrency;



      c:=0;
       cremeUtilizado:=0;
      _frmProducaoLaticinio.gridcreme.ColCount:=1;
      _frmProducaoLaticinio.gridcreme.Cells[0,0]:='0.00';
       _frmProducaoLaticinio.txtcremeSoro.Value:=soroutilizado;
      if(_dm2.cdsresumocreme.RecordCount>0)then
      begin
             _frmProducaoLaticinio.gridcreme.ColCount:=_dm2.cdsresumocreme.RecordCount;


             _dm2.cdsresumocreme.first;
             while not _dm2.cdsresumocreme.eof do
             begin

                  _frmProducaoLaticinio.gridcreme.Cells[c,0]:= _dm2.cdsResumocremeinc_prod_producao.AsString.PadLeft(4,'0') +'-'+_dm2.cdsResumocremeproduto.AsString;

                  if(_dm2.cdsResumocremesalvo.AsString='N')then
                  _frmProducaoLaticinio.gridcreme.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumocremequantidade.ascurrency)
                  else
                  _frmProducaoLaticinio.gridcreme.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumocremequantidadeajustada.ascurrency);

                  _frmProducaoLaticinio.gridcreme.ColWidths[c]:=300;
                  c:=c+1;
                  _frmProducaoLaticinio.gridcreme.ColCount:=_frmProducaoLaticinio.gridcreme.ColCount+1;

                   cremeUtilizado:=cremeUtilizado+_dm2.cdsResumocremequantidade.ascurrency;
                  _dm2.cdsresumocreme.Next;

             end;
              _frmProducaoLaticinio.gridcreme.ColCount:=c;


              if(_dm2.cdsproducaocremesalvo.AsString='N')then
              begin

                _frmProducaoLaticinio.txtCremeUtilizado.Value:= cremeUtilizado;
                _frmProducaoLaticinio.txtcremedestinado.Value:= cremeUtilizado;

              end
              else
              begin
                 _frmProducaoLaticinio.txtcremeUtilizado.Value:= _dm2.cdsProducaocremeutilizado.ascurrency;
                 _frmProducaoLaticinio.txtcremeDestinado.Value:= _dm2.cdsproducaocremedestinado.ascurrency;
              end;




      end;
    //FIM GERA GRIDE RESUMO CREME



    //GERA GRIDE RESUMO MANTEIGA
       c:=0;
        manteigaUtilizada:=0;
       _frmProducaoLaticinio.gridmanteiga.ColCount:=1;
       _frmProducaoLaticinio.gridmanteiga.Cells[0,0]:='0.00';
      if(_dm2.cdsresumomanteiga.RecordCount>0)then
      begin
             _frmProducaoLaticinio.gridmanteiga.ColCount:=_dm2.cdsresumomanteiga.RecordCount;


             _dm2.cdsresumomanteiga.first;
             while not _dm2.cdsresumomanteiga.eof do
             begin

                  _frmProducaoLaticinio.gridmanteiga.Cells[c,0]:= _dm2.cdsResumomanteigainc_prod_producao.AsString.PadLeft(4,'0') +'-'+_dm2.cdsResumomanteigaproduto.AsString;

                  if(_dm2.cdsResumomanteigasalvo.AsString='N')then
                  _frmProducaoLaticinio.gridmanteiga.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumomanteigaquantidade.ascurrency)
                  else
                  _frmProducaoLaticinio.gridmanteiga.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumomanteigaquantidadeajustada.ascurrency);

                  _frmProducaoLaticinio.gridmanteiga.ColWidths[c]:=300;
                  c:=c+1;
                  _frmProducaoLaticinio.gridmanteiga.ColCount:=_frmProducaoLaticinio.gridmanteiga.ColCount+1;

                  manteigaUtilizada:=manteigaUtilizada+_dm2.cdsResumomanteigaquantidade.ascurrency;
                  _dm2.cdsresumomanteiga.Next;

             end;
                _frmProducaoLaticinio.gridmanteiga.ColCount:=c;

              if(_dm2.cdsproducaoManteigasalvo.AsString='N')then
              begin
                _frmProducaoLaticinio.txtManteigaDestinada.Value:= manteigaUtilizada;
                _frmProducaoLaticinio.txtManteigaUtilizada.Value:= manteigaUtilizada;
              end
              else
              begin
                _frmProducaoLaticinio.txtManteigaUtilizada.Value:= _dm2.cdsProducaoManteigamanteigautilizada.ascurrency;
                _frmProducaoLaticinio.txtManteigaDestinada.Value:= _dm2.cdsproducaomanteigadestinado.ascurrency;
              end;

      end;
    //FIM GERA GRIDE RESUMO MANTEIGA



end;

procedure T_frmProducaoLaticinio.BitBtn10Click(Sender: TObject);
begin

      if(application.MessageBox('Salvar resumo do leite utilizado?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       exit;

       salvardados('L',_dm2.cdsMovproducaonumero.AsString);




end;

procedure T_frmProducaoLaticinio.BitBtn11Click(Sender: TObject);
begin
      if(application.MessageBox('Salvar resumo do creme utilizado?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       exit;

       salvardados('C',_dm2.cdsMovproducaonumero.AsString);


end;

procedure T_frmProducaoLaticinio.BitBtn12Click(Sender: TObject);
begin
 if(application.MessageBox('Salvar resumo do manteiga utilizada?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       exit;

       salvardados('M',_dm2.cdsMovproducaonumero.AsString);


end;

procedure T_frmProducaoLaticinio.obtersaldoleiteClick(Sender: TObject);
begin


      //  if(application.MessageBox('Obter saldo atual do leite?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_yes)then
     //   begin

            _dm.ConnecDm.Connected:=false;
            _dm.qrPadrao.SQL.Clear;
            _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
            _dm.qrPadrao.open;


            txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;

    {   end
        else
        begin



            gridColeta.Cells[0,0]:='Numero';
            gridColeta.ColWidths[1]:=100;
            gridColeta.Cells[1,0]:='Comprado';


            frm:=Tform.create(self);

            frm.Width:=475;
            frm.Height:=330;
            frm.Position:=poDesktopCenter;
            frm.BorderStyle:=bsDialog;

            pnlSobraColeta.Parent:=frm;
            pnlSobraColeta.visible:=true;
            pnlSobraColeta.Align:=alClient;
            frm.ShowModal;

        end;  }

end;

procedure T_frmProducaoLaticinio.PageControl1Change(Sender: TObject);
begin
    //  if(PageControl1.ActivePageIndex=1)then
    //  begin

               if(_dm2.cdsMovproducaoencerrada.Asstring='S')then
               exit;

               if(_dm2.cdsMovproducaopreproducaoconfirmada.Asstring='S')then
               exit;

               if(_dm2.cdsMovproducaonumero.Asstring='0')then
               exit;

                if(_dm2.cdsMovproducaomateriarequisitada.AsString='N')then
                begin
                   //carrega saldo atual do leite
                            _dm.ConnecDm.Connected:=false;
                            _dm.qrPadrao.SQL.Clear;
                            _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
                            _dm.qrPadrao.open;

                            txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;
                   //----------------

                      //SALVA DADOS DA PRÉ-PRODUÇÃO
                      totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
                      salvardados('T',_dm2.cdsMovproducaonumero.AsString);

                end;

  //    end;


end;

procedure T_frmProducaoLaticinio.BitBtn14Click(Sender: TObject);
begin
txtLeiteEntrada.Value:=txtSaldoColeta.Value;
      _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add(' update movproducaodiaria set  observacao = '+quotedstr(numAnalises)+' WHERE codigofilial='+quotedstr(glb_filial)+' and numero = '+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm.qrPadrao2.execsql;


 //atualiza dados leite
 totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
frm.modalresult:=-1;



end;

procedure T_frmProducaoLaticinio.BitBtn15Click(Sender: TObject);
begin
frm.modalresult:=-1;
end;

procedure T_frmProducaoLaticinio.BitBtn16Click(Sender: TObject);
begin
   _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsMovproducao.Close;
       _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',datapesqini.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',datapesqfim.Date));
      // _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND numero = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);

       _dm2.sdsMovproducao.execsql;
       _dm2.cdsMovproducao.Open;
       _dm2.cdsMovproducao.refresh;
end;

procedure T_frmProducaoLaticinio.BitBtn17Click(Sender: TObject);
begin

   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.Add('UPDATE movproducaodiaria SET data='+quotedstr(formatdatetime('yyyy-mm-dd',dataProdAlt.Date)));
   _dm2.qrPadrao.SQL.Add(', hora=current_time WHERE numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigofilial='+quotedstr(glb_filial));
   _dm2.qrPadrao.ExecSQL();

   Application.MessageBox('A data foi alterada!','Confirmação',MB_OK+MB_ICONINFORMATION);
   _dm2.cdsMovproducao.Close;
   _dm2.cdsMovproducao.Open;
   _dm2.cdsMovproducao.Refresh;

   lblDataini.Caption:=_dm2.cdsMovproducaodata.AsString+' '+_dm2.cdsMovproducaohora.AsString;
   datatxtaproducao.Text:= _dm2.cdsMovproducaodata.Asstring;
   frm.ModalResult:=-1;


end;

procedure T_frmProducaoLaticinio.BitBtn18Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmProducaoLaticinio.BitBtn19Click(Sender: TObject);
begin
      if( _dm2.cdsMovproducaoencerrada.AsString='S')then
      begin
      application.MessageBox('produção já encerrada!','Alerta',MB_ICONQUESTION+MB_ok);
      exit;
      end;

          frm:=Tform.create(self);

          frm.Width:=480;
          frm.Height:=140;
          frm.Position:=poDesktopCenter;
          frm.BorderStyle:=bsDialog;

          pnldescricao.Parent:=frm;
          pnldescricao.visible:=true;
          pnldescricao.Align:=alClient;
          frm.ShowModal;
end;

procedure T_frmProducaoLaticinio.BitBtn1Click(Sender: TObject);
var
ultimoSaldoLeite,ultimoSaldocreme,ultimoSaldomanteiga:currency;
begin

    //VERIFICA SE A ÚLTIMA PRODUÇÃO FOI ENCERRADA

      _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add(' SELECT numero,encerrada FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' ORDER BY numero DESC LIMIT 1 ');
      _dm.qrPadrao2.open;
       {
       if(_dm.qrPadrao2.fieldbyname('encerrada').asstring <> 'S')then
       begin
         application.MessageBox('Produção anterior ainda está aberta!','Alerta',MB_ICONEXCLAMATION+MB_ok);
         exit;
       end;
       }


      if(application.MessageBox('Criar produção diária?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       exit;


       _dm.ConnecDm.Connected:=false;
       _dm.qrPadrao.SQL.Clear;
       _dm.qrPadrao.SQL.Add('select count(1) as total from movproducaodiaria where data = current_date and codigofilial='+quotedstr(glb_filial));
       _dm.qrPadrao.open;


       if(_dm.qrPadrao.FieldByName('total').asinteger > 0)then
       begin

          if(application.MessageBox('Produção diária já foi aberta, deseja continuar?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
          exit;

       end;

       if(_dm.qrPadrao.FieldByName('total').asinteger = _dm.cdsConfigLaticinioproducaopordia.AsInteger)then
       begin
          application.MessageBox('O limite de produções diárias já foi atingido!','Alerta',MB_ICONEXCLAMATION+MB_OK);
          exit;
       end;

     { /PEGA SALDO DE LEITE DA PRODUÇÃO ANTERIOR
      _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add('SELECT p.numero,ifnull(d.saldo,0.00) as saldo FROM dadosproducaoleite AS d, movproducaodiaria AS p WHERE p.encerrada="S"  AND p.numero=d.numeroproducao AND p.codigofilial='+quotedstr(glb_filial)+'  ORDER BY p.numero DESC LIMIT 1');
    //  _dm.qrPadrao2.SQL.add(' SELECT IFNULL(saldo,"0.00") AS saldo FROM dadosproducaoleite WHERE codigofilial='+quotedstr(glb_filial)+' ORDER BY id DESC LIMIT 1 ');
      _dm.qrPadrao2.open;

    try
      ultimoSaldoLeite:= _dm.qrPadrao2.FieldByName('saldo').AsCurrency;
     except

    end;
      //fim
        }


      //pega sobra do creme produção anterior
      _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
     _dm.qrPadrao2.SQL.add('SELECT p.numero,ifnull(d.saldo,0.00) as saldo FROM dadosproducaocreme AS d, movproducaodiaria AS p WHERE p.encerrada="S"  AND p.numero=d.numeroproducao AND p.codigofilial='+quotedstr(glb_filial)+'  ORDER BY p.numero DESC LIMIT 1');

     // _dm.qrPadrao2.SQL.add(' SELECT IFNULL(saldo-perda,"0.00") AS saldo FROM dadosproducaoleite WHERE codigofilial='+quotedstr(glb_filial)+' ORDER BY id DESC LIMIT 1 ');
      _dm.qrPadrao2.open;

        try
      ultimoSaldocreme:= _dm.qrPadrao2.FieldByName('saldo').AsCurrency;
     except

    end;


      //fim


      //pega sobra do manteiga produção anterior
      _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
     _dm.qrPadrao2.SQL.add('SELECT p.numero,ifnull(d.saldo,0.00) as saldo FROM dadosproducaomanteiga AS d, movproducaodiaria AS p WHERE p.encerrada="S"  AND p.numero=d.numeroproducao AND p.codigofilial='+quotedstr(glb_filial)+'  ORDER BY p.numero DESC LIMIT 1');

     // _dm.qrPadrao2.SQL.add(' SELECT IFNULL(saldo-perda,"0.00") AS saldo FROM dadosproducaomanteiga WHERE codigofilial='+quotedstr(glb_filial)+' ORDER BY id DESC LIMIT 1 ');
      _dm.qrPadrao2.open;
     try
      ultimoSaldomanteiga:= _dm.qrPadrao2.FieldByName('saldo').AsCurrency;
     except

    end;

      //fim



       _dm.ConnecDm.Connected:=false;
       _dm.qrPadrao.SQL.Clear;
       _dm.qrPadrao.SQL.Add('insert into movproducaodiaria(data,hora,operador,codigofilial) values (');
       _dm.qrPadrao.SQL.Add('current_date,current_time,'+quotedstr(glb_usuario)+','+quotedstr(glb_filial)+')');
       _dm.qrPadrao.ExecSQL;


       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsMovproducao.Close;
       _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND data = current_date order by numero desc limit 1';
       _dm2.sdsMovproducao.execsql;
       _dm2.cdsMovproducao.Open;
       _dm2.cdsMovproducao.refresh;




    _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsproducaoitens.Close;
    _dm2.sdsproducaoitens.commandtext:='select * from producaoitens  where codigofilial="00001"  and numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
    _dm2.sdsproducaoitens.execsql;
    _dm2.cdsproducaoitens.Open;
    _dm2.cdsproducaoitens.Refresh;



        txtNumero.Text:=_dm2.cdsMovproducaonumero.AsString;
        cboFilial.Text:=_dm2.cdsMovproducaocodigofilial.AsString;
        cboOperadorAbertura.Text:= _dm2.cdsMovproducaooperador.AsString;
        lblDataini.Caption:=_dm2.cdsMovproducaodata.AsString+'  '+_dm2.cdsMovproducaohora.AsString;
        pnlAbertura.Enabled:=true;
        pnlDadosFim.Enabled:=true;
        pnlitens.Enabled:=true;
        pnlacoesinsumos.enabled:=true;


        //cria dados da produção


   //   _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add('insert into dadosproducaoleite(codigofilial,numeroproducao,sobra) values (');
      _dm.qrPadrao2.SQL.add(quotedstr(glb_filial)+','+quotedstr(_dm2.cdsMovproducaonumero.AsString)+',');
      _dm.qrPadrao2.SQL.add(quotedstr(currtostr(ultimoSaldoLeite))+')');
      _dm.qrPadrao2.ExecSQL;


      _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add('insert into dadosproducaomanteiga(codigofilial,numeroproducao,sobra) values (');
      _dm.qrPadrao2.SQL.add(quotedstr(glb_filial)+','+quotedstr(_dm2.cdsMovproducaonumero.AsString)+',');
       _dm.qrPadrao2.SQL.add(quotedstr(currtostr(ultimoSaldomanteiga))+')');
      _dm.qrPadrao2.ExecSQL;


     _dm2.ConnecDm2.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add('insert into dadosproducaocreme(codigofilial,numeroproducao,sobra) values (');
      _dm.qrPadrao2.SQL.add(quotedstr(glb_filial)+','+quotedstr(_dm2.cdsMovproducaonumero.AsString)+',');
       _dm.qrPadrao2.SQL.add(quotedstr(currtostr(ultimoSaldocreme))+')');
      _dm.qrPadrao2.ExecSQL;


     bitbtnConfirmar.enabled:=true;
     pnlFerramentasPreproducao.Enabled:=true;

     txtleitesobra.Value:= ultimoSaldoLeite;
     txtcremesobra.Value:= ultimoSaldocreme;
     txtmanteigasobra.Value:= ultimoSaldomanteiga;
     lbltotprod.Caption:=formatcurr('##0.00',_dm2.cdsMovproducaototalcustoproducao.AsCurrency);


     datatxtaproducao.Date:=now;
     lblnrproducao.Caption:= _dm2.cdsMovproducaonumero.AsString;
    // bitbtnConfirmar.Click;
      gerarGrids(_dm2.cdsMovproducaonumero.AsString);


      //dados da produção



end;

procedure T_frmProducaoLaticinio.BitBtn20Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmProducaoLaticinio.BitBtn21Click(Sender: TObject);
begin


      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add(' update  movproducaodiaria set descricao='+quotedstr(txtaltdesc.Text)+' where ');
      _dm.qrPadrao.SQL.Add(' codigofilial='+quotedstr(glb_filial)+' and ');
      _dm.qrPadrao.SQL.Add(' numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm.qrPadrao.ExecSQL();


        _dm2.cdsMovproducao.refresh;
        _dm2.cdsMovproducao.refresh;


        txtdesc.Text:=  _dm2.cdsMovproducaodescricao.AsString;
        frm.ModalResult:=-1;
end;

procedure T_frmProducaoLaticinio.BitBtn22Click(Sender: TObject);
begin

  if(txtNumero.Text='0')then
  exit;

   if(_dm2.cdsFulxogramaProducaostatus.asinteger=0)then
   begin

    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.SQL.Add('UPDATE fluxogramaproducao '+
      ' SET horainicio= TIMESTAMP(CURRENT_DATE,CURRENT_TIME),'+
      ' operadorinicio='+quotedstr(glb_usuario)+' , STATUS="1" '+
      ' WHERE id='+quotedstr(_dm2.cdsFulxogramaProducaoid.AsString));
    _dm2.qrPadrao.ExecSQL();

    _dm2.cdsFulxogramaProducao.Refresh;

   end;





end;

procedure T_frmProducaoLaticinio.BitBtn23Click(Sender: TObject);
begin

  if(txtNumero.Text='0')then
  exit;

   if(_dm2.cdsFulxogramaProducaostatus.asinteger=1)then
   begin

    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.SQL.Add('UPDATE fluxogramaproducao '+
      ' SET horatermino= TIMESTAMP(CURRENT_DATE,CURRENT_TIME),'+
      ' operadortermino='+quotedstr(glb_usuario)+' , STATUS="2" '+
      ' WHERE id='+quotedstr(_dm2.cdsFulxogramaProducaoid.AsString));
    _dm2.qrPadrao.ExecSQL();

    _dm2.cdsFulxogramaProducao.Refresh;

   end;



end;

procedure T_frmProducaoLaticinio.BitBtn24Click(Sender: TObject);
var
SQL:string;
begin


  if(txtNumero.Text='0')then
  exit;




    if(_dm2.cdsMovproducaonumero.AsString='')then
    exit;
   // if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString<>'S') and (_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
  //  exit;

  SQL:= '  SELECT p.qtdadicional,p.totalproduzido, p.id, p.codigo,  p.produto, p.unidade,p.quantidadesoro,p.materiarequisitada,'+
        ' (SELECT lote FROM producaoitens where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' LIMIT 1) AS lote,(SELECT validade FROM producaoitens where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' LIMIT 1) AS validade,'+
        ' (SELECT ifnull(SUM(quantidadeajustada),0.00)   FROM resumoprodleite WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao=p.id) AS quantidadeleite ,'+
        ' (SELECT ifnull(SUM(quantidadeajustada),0.00)   FROM resumoprodcreme WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao=p.id) AS quantidadeCreme ,'+
        ' (SELECT ifnull(SUM(quantidadeajustada),0.00)   FROM resumoprodmanteiga WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao=p.id) AS quantidademanteiga ,'+
        '  p.quantidadeproduzida, p.codigofilial, p.numeroproducao,p.materiarequisitada FROM producaoitens as p'+
        '  WHERE p.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);


   glb_sql2:='';
   glb_sql2:=  'select codigofilial,inc_prod_producao,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,';
   if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
   glb_sql2:=glb_sql2+' quantidademateria, totalmateriautilizada,((quantidade * quantidademateria) * custounitario) as custounitario,DATA,operador from producaomovmateria'  //quando o parâmetro for por KG produzido
   else
    glb_sql2:=glb_sql2+' quantidademateria, totalmateriautilizada,(totalmateriautilizada * custounitario) as custounitario,DATA,operador from producaomovmateria';

    _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsproducaoitens.Close;
    _dm2.sdsproducaoitens.commandtext:=SQL;
    _dm2.sdsproducaoitens.execsql;
    _dm2.cdsproducaoitens.open;
    _dm2.cdsproducaoitens.refresh;



  _dm2.ConnecDm2.Connected:=false;
  _dm2.cdsmateria.Close;
  _dm2.sdsMateria.CommandText:=glb_sql2+//'select codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,'+
// if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
 // ' quantidademateria, totalmateriautilizada,((quantidade * quantidademateria) * custounitario) as custounitario,DATA,operador from producaomovmateria'+
 //else
  //' quantidademateria, totalmateriautilizada,(totalmateriautilizada * custounitario) as custounitario,DATA,operador from producaomovmateria'+
  ' where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and inc_prod_producao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString);
  _dm2.sdsMateria.ExecSQL();
  _dm2.cdsmateria.Open;
  _dm2.cdsmateria.refresh;



_frmInsumosdeproducao:=  T_frmInsumosdeproducao.create(Self);
_frmInsumosdeproducao.ShowModal;
_frmInsumosdeproducao.release;



end;

procedure T_frmProducaoLaticinio.BitBtn25Click(Sender: TObject);
var
parametro:string;
begin

     case rgparam.ItemIndex of
          0:parametro:='L';
          1:parametro:='M';
          2:parametro:='C';
     end;



   _dm.ConnecDm.Connected:=false;
   _dm.cdsOrdem.Close;

   if(chktipo.Checked=true)then
   begin
   _dm.sdsOrdem.CommandText:='SELECT rp.inc_prod_producao,rp.codigo AS codPre,rp.produto AS prodPre,cp.codigo,cp.produto,cp.quantidade,'+
   'cp.parametroleite,rp.quantidadeajustada,((cp.quantidade /cp.parametroleite)*rp.quantidadeajustada) AS utilizado FROM resumoprodleite AS rp,composicaolaticinio AS cp  '+
                        ' WHERE cp.codpreproducao=rp.codigo AND cp.tipoinsumo ="OUTROS" AND cp.tipoparametro='+quotedstr(parametro)+
                        ' AND  rp.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);

   end
   else
   begin

   _dm.sdsOrdem.CommandText:='SELECT rp.inc_prod_producao,rp.codigo AS codPre,rp.produto AS prodPre,cp.codigo,cp.produto,cp.quantidade,cp.parametroleite,'+
   'rp.quantidadeajustada,sum(((cp.quantidade /cp.parametroleite)*rp.quantidadeajustada)) AS utilizado FROM resumoprodleite AS rp,composicaolaticinio AS cp  '+
                        ' WHERE cp.codpreproducao=rp.codigo AND cp.tipoinsumo ="OUTROS" AND cp.tipoparametro='+quotedstr(parametro)+
                        ' AND  rp.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' GROUP BY codigo';

   end;


   _dm.sdsOrdem.ExecSQL();
   _dm.cdsOrdem.Open;
   _dm.cdsOrdem.Refresh;


  if(parametro='L')then
  BEGIN
   if(chktipo.Checked=false)then
   rvpOerdemSimples.SetParam('parametro','Insumos de LEITE');

   RvPordem.SetParam('parametro','Insumos de LEITE');
   RvPordem.SetParam('destinado','Leite destinado:');
  END;

  if(parametro='C')then
  begin
   if(chktipo.Checked=false)then
     rvpOerdemSimples.SetParam('parametro','Insumos de CREME');

    RvPordem.SetParam('parametro','Insumos de CREME');
    RvPordem.SetParam('destinado','Creme destinado:');
  end;


  if(parametro='M')then
  begin
  if(chktipo.Checked=false)then
  rvpOerdemSimples.SetParam('parametro','Insumos de MANTEIGA');

   RvPordem.SetParam('parametro','Insumos de MANTEIGA');
    RvPordem.SetParam('destinado','Manteiga destinada:');
  end;

   if(chktipo.Checked=true)then
   begin
   RvPordem.SetParam('empresa',_dm.cdsFiliaisfantasia.AsString);
   RvPordem.SetParam('data','Data: '+_dm2.cdsMovproducaodata.AsString);
   RvPordem.SetParam('operador','Operador: '+_dm2.cdsMovproducaooperador.AsString);
   RvPordem.SetParam('descricao','Descrição: '+_dm2.cdsMovproducaodescricao.AsString);
   RvPordem.SetParam('numero','Número: '+_dm2.cdsMovproducaonumero.AsString);

   RvPordem.Execute;

   end
   else
   begin

   rvpOerdemSimples.SetParam('empresa',_dm.cdsFiliaisfantasia.AsString);
   rvpOerdemSimples.SetParam('data','Data: '+_dm2.cdsMovproducaodata.AsString);
   rvpOerdemSimples.SetParam('operador','Operador: '+_dm2.cdsMovproducaooperador.AsString);
   rvpOerdemSimples.SetParam('descricao','Descrição: '+_dm2.cdsMovproducaodescricao.AsString);
   rvpOerdemSimples.SetParam('numero','Número: '+_dm2.cdsMovproducaonumero.AsString);

   rvpOerdemSimples.Execute;
   end;


   frm.ModalResult:=-1;

end;

procedure T_frmProducaoLaticinio.BitBtn2Click(Sender: TObject);
begin
datapesqini.Date:=now;
datapesqfim.Date:= IncMonth(now,1);
continuar:='N';
     frm:=Tform.create(self);

    frm.Width:=980;
    frm.Height:=610;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlabrir.Parent:=frm;
    pnlabrir.visible:=true;
    pnlabrir.Align:=alClient;
    frm.ShowModal;



    //  ABERTURA
    {$region abertura}


       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsMovproducao.Close;
     //  _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND numero = '+quotedstr(txtNumeropesquisa.Text);
       _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND numero = '+quotedstr(numeroPesq);
       _dm2.sdsMovproducao.execsql;
       _dm2.cdsMovproducao.Open;
       _dm2.cdsMovproducao.refresh;





       if(_dm2.cdsMovproducao.RecordCount=0)then
       begin
         application.MessageBox('Produção não encontrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
         txtNumero.text:='0';
         lblnrproducao.Caption:='0';
         gerarGrids(_dm2.cdsMovproducaonumero.AsString);


       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsproducaoitens.Close;
       //_dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(numeroPesq);
       _dm2.sdsproducaoitens.execsql;
       _dm2.cdsproducaoitens.Open;
       _dm2.cdsproducaoitens.refresh;


         exit;
       end;

        pnlaguarde.Visible:=true;
        Application.ProcessMessages;


       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsproducaoitens.Close;
       //_dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(numeroPesq);
       _dm2.sdsproducaoitens.execsql;
       _dm2.cdsproducaoitens.Open;
       _dm2.cdsproducaoitens.refresh;

       {
       if(_dm2.cdsMovproducaomateriarequisitada.AsString='S')then
       pnlacoesinsumos.enabled:=false
       else
       pnlacoesinsumos.enabled:=true;
        }

      //DADOS DA PRODUÇÃO

      // [ LEITE ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaoleite.close;
      _dm2.sdsproducaoleite.CommandText:='SELECT * FROM dadosproducaoleite WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaoleite.ExecSQL;
      _dm2.cdsproducaoleite.Open;
      _dm2.cdsproducaoleite.refresh;

      txtleitesobra.Value:= _dm2.cdsProducaoLeitesobra.AsCurrency;

      // preenche os campos dos dados da produção com os valores salvos
      if(_dm2.cdsProducaoLeitesalvo.AsString='S')then
      begin



      txtLeiteEntrada.Value:=  _dm2.cdsProducaoLeiteentrada.AsCurrency;
      txtLeiteDestinado.Value:=  _dm2.cdsProducaoLeitedestinado.AsCurrency;
      txtLeiteUtilizado.Value:=  _dm2.cdsProducaoLeiteutilizado.AsCurrency;
      txtLeiteVendido.Value:=  _dm2.cdsProducaoLeitevendido.AsCurrency;
      txtLeiteSaldo.Value:= _dm2.cdsProducaoLeitesaldo.AsCurrency;
      txtLeitePerda.Value:= _dm2.cdsProducaoLeiteperda.AsCurrency;
      end
      else
      begin


      txtLeiteEntrada.Value:= 0;
      txtLeiteVendido.Value:=0;
      txtLeiteSaldo.Value:= 0;
      txtLeitePerda.Value:= 0;
      txtLeiteDestinado.Value:=  0;
      txtLeiteUtilizado.Value:=0;


      end;

       {
        //carrega saldo do leite
      if(_dm2.cdsMovproducaopreproducaoconfirmada.AsString='N')then
      begin
            _dm.ConnecDm.Connected:=false;
            _dm.qrPadrao.SQL.Clear;
            _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
            _dm.qrPadrao.open;


            txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;
      end;

     }



     // [ CREME ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaocreme.close;
      _dm2.sdsproducaocreme.CommandText:='SELECT * FROM dadosproducaocreme WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaocreme.ExecSQL;
      _dm2.cdsproducaocreme.Open;
      _dm2.cdsproducaocreme.refresh;

      txtcremesobra.Value:= _dm2.cdsProducaocremesobra.AsCurrency;
       // preenche os campos dos dados da produção com os valores salvos
      if(_dm2.cdsProducaocremesalvo.AsString='S')then
      begin
        txtCremesobra.Value:= _dm2.cdsProducaoCremesobra.AsCurrency;
        txtCremeComprado.Value:= _dm2.cdsProducaoCremecomprado.AsCurrency;
        txtCremeDesnatado.Value:=  _dm2.cdsProducaoCremedesnatado.AsCurrency;
        txtCremePadronizado.Value:=  _dm2.cdsProducaoCremepadronizado.AsCurrency;
        txtCremeSoro.Value:=   _dm2.cdsProducaocremesoro.AsCurrency;
        txtCremeSoroCoalho.Value:=  _dm2.cdsProducaoCremesorocoalho.AsCurrency;
        txtCremeVendido.Value:=  _dm2.cdsProducaoCremevendido.AsCurrency;
        txtcremedestinado.Value:=  _dm2.cdsProducaoCremedestinado.AsCurrency;
        txtCremeUtilizado.Value:=  _dm2.cdsProducaocremeutilizado.AsCurrency;
        txtCremeSaldo.Value:=  _dm2.cdsProducaoCremesaldo.AsCurrency;
        txtCremEmEstoque.Value:= _dm2.cdsProducaoCremeestoque.AsCurrency;
        txtCremePerda.Value:=  _dm2.cdsProducaoCremeperda.AsCurrency;

      end
      else
      begin
      //  txtCremesobra.Value:=0;
        txtCremeComprado.Value:= 0;
        txtCremeDesnatado.Value:=  0;
        txtCremePadronizado.Value:= 0;
        txtCremeSoro.Value:=   0;
        txtCremeSoroCoalho.Value:= 0;
        txtCremeVendido.Value:=  0;
        txtCremeSaldo.Value:=  0;
        txtCremePerda.Value:=  0;
        txtcremedestinado.Value:=  0;
        txtCremEmEstoque.Value:= 0;
        txtCremeUtilizado.Value:=  0;


      end;




      //[ MANTEIGA ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaomanteiga.close;
      _dm2.sdsproducaomanteiga.CommandText:='SELECT * FROM dadosproducaomanteiga WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaomanteiga.ExecSQL;
      _dm2.cdsproducaomanteiga.Open;
      _dm2.cdsproducaomanteiga.refresh;

      txtmanteigasobra.Value:= _dm2.cdsProducaomanteigasobra.AsCurrency;

       // preenche os campos dos dados da produção com os valores salvos
       if(_dm2.cdsProducaomanteigasalvo.AsString='S')then
      begin

      txtManteigaCderretido.Value:= _dm2.cdsProducaoManteigacremederretido.AsCurrency;
      txtManteigaObitida.Value:=  _dm2.cdsProducaoManteigamanteigaobitida.AsCurrency;
      txtManteigaRendimento.Value:= _dm2.cdsProducaoManteigarendimento.AsCurrency;
      txtManteigaDestinada.Value:=  _dm2.cdsProducaoManteigadestinado.ascurrency;
      txtManteigaUtilizada.Value:=  _dm2.cdsProducaoManteigamanteigautilizada.AsCurrency;
      txtManteigaSaldo.Value:=  _dm2.cdsProducaoManteigasaldo.AsCurrency;
      txtManteigaEstoque.Value:=  _dm2.cdsProducaoManteigaestoque.AsCurrency;
      txtManteigasobra.Value:=  _dm2.cdsProducaoManteigasobra.AsCurrency;
      txtPerda.Value:=  _dm2.cdsProducaoManteigaperda.AsCurrency;
      end
      else
      begin
      txtManteigaCderretido.Value:= 0;
      txtManteigaObitida.Value:= 0;
      txtManteigaRendimento.Value:=0;
      txtManteigaSaldo.Value:= 0;
      txtManteigaEstoque.Value:=0;
      txtPerda.Value:=0;
      txtManteigaDestinada.Value:= 0;
      txtManteigaUtilizada.Value:= 0;
     // txtManteigasobra.Value:=0;

      end;




       //FIM abertura dados da produção

        datatxtaproducao.text:=_dm2.cdsMovproducaodata.asstring;
        lblnrproducao.Caption:= _dm2.cdsMovproducaonumero.AsString;
        txtNumero.Text:=_dm2.cdsMovproducaonumero.AsString;
        cboFilial.Text:=_dm2.cdsMovproducaocodigofilial.AsString;
        lblDataini.Caption:=_dm2.cdsMovproducaodata.AsString+'  '+_dm2.cdsMovproducaohora.AsString;
        pnlAbertura.Enabled:=true;
        pnlDadosFim.Enabled:=true;
        pnlitens.Enabled:=true;
        //pnlabrir.Visible:=false;
        gerarGrids(_dm2.cdsMovproducaonumero.AsString);
        lblDatafim.Caption:=_dm2.cdsMovproducaodatafinalizacao.AsString+'  '+_dm2.cdsMovproducaohorafinalizacao.AsString;
        cboOperadorFim.Text:=  _dm2.cdsMovproducaooperadorfinalizacao.AsString;
        cboOperadorAbertura.Text:=_dm2.cdsMovproducaooperador.AsString;
        txtdesc.Text:= _dm2.cdsMovproducaodescricao.AsString;
        lbltotprod.Caption:=formatcurr('##0.00',_dm2.cdsMovproducaototalcustoproducao.AsCurrency);



    if(_dm2.cdsMovproducaoitensconfirmados.AsString = 'S')then
    begin
       bitbtnConfirmar.enabled:=false;
       pnlFerramentasPreproducao.Enabled:=false;
       bitLiberarDigitacao.enabled:=true;

    end
    else
    begin
       bitbtnConfirmar.enabled:=true;
       pnlFerramentasPreproducao.Enabled:=true;
       bitLiberarDigitacao.enabled:=false;
    end;


       if(_dm2.cdsMovproducaoitensconfirmados.AsString='N') and (_dm2.cdsMovproducaopreproducaoconfirmada.AsString='N')then
       tabDadosProducao.Enabled:=false
       else
        tabDadosProducao.Enabled:=true;


       if(_dm2.cdsMovproducaopreproducaoconfirmada.AsString='S')then
        tabDadosProducao.Enabled:=false ;


      // else
      //  tabDadosProducao.Enabled:=true;




        if(_dm2.cdsproducaoitens.RecordCount=0)then
        tabDadosProducao.Enabled:=false;

         pnlaguarde.Visible:=false;



    {$endregion}
    //FIM ABERTURA







end;

procedure T_frmProducaoLaticinio.BitBtn3Click(Sender: TObject);
begin
    if(_dm2.cdsMovproducaopreproducaoconfirmada.AsString='S')then
    begin
      Application.MessageBox('Pré-produção já confirmada!','Alerta',MB_OK+MB_ICONEXCLAMATION);
      exit;
    end
    else
    begin

          frm:=Tform.create(self);
          dataProdAlt.Date:= _dm2.cdsMovproducaodata.AsDateTime;


          frm.Width:=290;
          frm.Height:=130;
          frm.Position:=poDesktopCenter;
          frm.BorderStyle:=bsDialog;

          pnlAlterarData.Parent:=frm;
          pnlAlterarData.visible:=true;
          pnlAlterarData.Align:=alClient;
          frm.ShowModal;
          end;
end;

procedure T_frmProducaoLaticinio.BitBtn4Click(Sender: TObject);

begin

if(txtNumero.Text='0')then
exit;

    frm:=Tform.create(self);

          frm.Width:=250;
          frm.Height:=180;
          frm.Position:=poDesktopCenter;
          frm.BorderStyle:=bsDialog;

          pnlparam.Parent:=frm;
          pnlparam.visible:=true;
          pnlparam.Align:=alClient;
          rgparam.ItemIndex:=0;
          frm.ShowModal;







end;

procedure T_frmProducaoLaticinio.bitLiberarDigitacaoClick(Sender: TObject);
begin

if(_dm2.cdsMovproducaoencerrada.AsString='S') or (_dm2.cdsMovproducaopreproducaoconfirmada.AsString='S')then
exit;

    glb_campo:='gerente';
    _frmLogin:=T_frmLogin.Create(self);
    _frmLogin.lblfuncao.Caption:='Reabrir digitação de ítens na produção (Gerente)';
    _frmLogin.ShowModal;
    _frmLogin.Release;

    if(glb_permissao='N')then
    exit;


     _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add(' update  movproducaodiaria set itensconfirmados="N" where ');
      _dm.qrPadrao.SQL.Add(' codigofilial='+quotedstr(glb_filial)+' and ');
      _dm.qrPadrao.SQL.Add(' numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm.qrPadrao.ExecSQL();

       bitbtnConfirmar.enabled:=true;
       pnlFerramentasPreproducao.Enabled:=true;
       tabDadosProducao.Enabled:=false;
       //gerarGrids(_dm2.cdsMovproducaonumero.AsString);

end;

procedure T_frmProducaoLaticinio.bitRequisitarClick(Sender: TObject);
var
sqlInsert,sqlcustosleite,sqlcustoscreme,sqlcustosmanteiga,numeroperda:string;
quantidadeProduzida,custoCreme,CustoManteiga,totalcustoproducao,custoLeite,qtdleite,qtdcreme,qtdmanteiga:currency;//,totalcustoproducao:currency;
begin
   totalcustoproducao:=0;


   if(  _dm2.cdsMovproducaopreproducaoconfirmada.AsString<>'S')then
   begin
        application.MessageBox('Confirme a pré-produção para requisitar os insumos!','Pergunta',MB_ICONEXCLAMATION+MB_OK);
        exit;
   end;

   if(application.MessageBox('Confirmar baixa nos insumos de produção?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
    exit;



    sqlcustosleite:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoLeite FROM resumoprodleite    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString);
    sqlcustoscreme:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoCreme FROM resumoprodcreme    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString);
    sqlcustosmanteiga:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoManteiga FROM resumoprodmanteiga    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString);

    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao2.SQL.Clear;
    _dm2.qrPadrao2.SQL.add(sqlcustosleite);
    _dm2.qrPadrao2.open;
    custoLeite:= _dm2.qrPadrao2.FieldByName('custoLeite').AsCurrency;


    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao2.SQL.Clear;
    _dm2.qrPadrao2.SQL.add(sqlcustoscreme);
    _dm2.qrPadrao2.open;
    custoCreme:= _dm2.qrPadrao2.FieldByName('custoCreme').AsCurrency;


    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao2.SQL.Clear;
    _dm2.qrPadrao2.SQL.add(sqlcustosmanteiga);
    _dm2.qrPadrao2.open;
    CustoManteiga:= _dm2.qrPadrao2.FieldByName('custoManteiga').AsCurrency;


   // totalcustoproducao:=   custoLeite+  custoCreme +CustoManteiga;

     // _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT quantidadeajustada FROM resumoprodleite WHERE  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString)+' and codigofilial="'+glb_filial+'"');
   _dm2.qrPadrao2.open;
    qtdleite:= _dm2.qrPadrao2.FieldByName('quantidadeajustada').AsCurrency;



    // _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT quantidadeajustada FROM resumoprodcreme WHERE  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString)+' and codigofilial="'+glb_filial+'"');
   _dm2.qrPadrao2.open;
    qtdcreme:= _dm2.qrPadrao2.FieldByName('quantidadeajustada').AsCurrency;



    // _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT quantidadeajustada FROM resumoprodmanteiga WHERE  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString)+' and codigofilial="'+glb_filial+'"');
   _dm2.qrPadrao2.open;
    qtdmanteiga:= _dm2.qrPadrao2.FieldByName('quantidadeajustada').AsCurrency;




 //================================================ produtos do padrão leite ==============================================================
               sqlInsert:=' INSERT INTO producaomovmateria(codigofilial,inc_prod_producao,idproducao,codigoproduto,codigomateria,descricaomateria,quantidade,quantidademateria,custounitario,data,totalmateriautilizada,operador)'+
                          ' SELECT ';

              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrPadrao.SQL.Clear;
              _dm2.qrPadrao.sql.add(sqlInsert);
              _dm2.qrPadrao.sql.add(quotedstr(glb_filial)+','); // codigofilial
               _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsproducaoitensid.asstring)+','); // inc

              _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //  idproducao
              _dm2.qrPadrao.sql.add('c.codpreproducao,'); //   codigoproduto
              _dm2.qrPadrao.sql.add('c.codigo,');  // codigomateria
              _dm2.qrPadrao.sql.add('c.produto,');  //  descricaomateria
              _dm2.qrPadrao.sql.add(quotedstr(formatcurr('###0.000',_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency))+','); //  quantidade
             if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('c.quantidade,') //quantidademateria  quando o parâmetro for por KG
              else
              _dm2.qrPadrao.sql.add(quotedstr('0.00')+','); //quantidademateria     quando o parâmetro for leite utilizado

             // _dm2.qrPadrao.sql.add('custo,'); // custounitario
              _dm2.qrPadrao.sql.add('(SELECT custo FROM '+glb_produtos+'  WHERE codigo=c.codigo AND CodigoFilial='+quotedstr(glb_filial)+' LIMIT 1),'); // custounitario
              _dm2.qrPadrao.sql.add('current_date,');//  data

              //_dm2.qrPadrao.sql.add('(quantidade * '+currtostr(quantidadeProduzida)+'),');
              if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('(quantidade * '+currtostr(_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency)+'),')// total utilizado de materia quando cácluculo for por KG produzida
              else
              _dm2.qrPadrao.sql.add('((quantidade / parametroleite) * '+formatcurr('##0.00',qtdleite)+' ),'); //  quantidade   utilizado de materia

              _dm2.qrPadrao.sql.add(quotedstr(glb_usuario)+' FROM composicaolaticinio as c WHERE codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND tipoinsumo ="outros" '+
               ' AND tipoparametro ="L" ');  //  operador
              _dm2.qrPadrao.execsql;

 //=========================================  produtos do padrão creme  =====================================================================

               sqlInsert:=' INSERT INTO producaomovmateria(codigofilial,inc_prod_producao,idproducao,codigoproduto,codigomateria,descricaomateria,quantidade,quantidademateria,custounitario,data,totalmateriautilizada,operador)'+
                          ' SELECT ';

              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrPadrao.SQL.Clear;
              _dm2.qrPadrao.sql.add(sqlInsert);
              _dm2.qrPadrao.sql.add(quotedstr(glb_filial)+','); // codigofilial
               _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsproducaoitensid.asstring)+','); // inc

              _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //  idproducao
              _dm2.qrPadrao.sql.add('c.codpreproducao,'); //   codigoproduto
              _dm2.qrPadrao.sql.add('c.codigo,');  // codigomateria
              _dm2.qrPadrao.sql.add('c.produto,');  //  descricaomateria
              _dm2.qrPadrao.sql.add(quotedstr(formatcurr('###0.000',_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency))+','); //  quantidade
             if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('c.quantidade,') //quantidademateria  quando o parâmetro for por KG
              else
              _dm2.qrPadrao.sql.add(quotedstr('0.00')+','); //quantidademateria     quando o parâmetro for leite utilizado

             // _dm2.qrPadrao.sql.add('custo,'); // custounitario
              _dm2.qrPadrao.sql.add('(SELECT custo FROM '+glb_produtos+'  WHERE codigo=c.codigo AND CodigoFilial='+quotedstr(glb_filial)+' LIMIT 1),'); // custounitario
              _dm2.qrPadrao.sql.add('current_date,');//  data

              //_dm2.qrPadrao.sql.add('(quantidade * '+currtostr(quantidadeProduzida)+'),');
              if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('(quantidade * '+currtostr(_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency)+'),')// total utilizado de materia quando cácluculo for por KG produzida
              else
              _dm2.qrPadrao.sql.add('((quantidade / parametroleite) * '+formatcurr('##0.00',qtdcreme)+' ),'); //  quantidade   utilizado de materia

              _dm2.qrPadrao.sql.add(quotedstr(glb_usuario)+' FROM composicaolaticinio as c WHERE codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND tipoinsumo ="outros" '+
               ' AND tipoparametro ="C" ');  //  operador
              _dm2.qrPadrao.execsql;


 //========================================  produtos do padrão manteiga  ======================================================================
              sqlInsert:=' INSERT INTO producaomovmateria(codigofilial,inc_prod_producao,idproducao,codigoproduto,codigomateria,descricaomateria,quantidade,quantidademateria,custounitario,data,totalmateriautilizada,operador)'+
                          ' SELECT ';

              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrPadrao.SQL.Clear;
              _dm2.qrPadrao.sql.add(sqlInsert);
              _dm2.qrPadrao.sql.add(quotedstr(glb_filial)+','); // codigofilial
              _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsproducaoitensid.asstring)+','); // inc
              _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //  idproducao
              _dm2.qrPadrao.sql.add('c.codpreproducao,'); //   codigoproduto
              _dm2.qrPadrao.sql.add('c.codigo,');  // codigomateria
              _dm2.qrPadrao.sql.add('c.produto,');  //  descricaomateria
              _dm2.qrPadrao.sql.add(quotedstr(formatcurr('###0.000',_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency))+','); //  quantidade
             if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('c.quantidade,') //quantidademateria  quando o parâmetro for por KG
              else
              _dm2.qrPadrao.sql.add(quotedstr('0.00')+','); //quantidademateria     quando o parâmetro for leite utilizado

             // _dm2.qrPadrao.sql.add('custo,'); // custounitario
              _dm2.qrPadrao.sql.add('(SELECT custo FROM '+glb_produtos+'  WHERE codigo=c.codigo AND CodigoFilial='+quotedstr(glb_filial)+' LIMIT 1),'); // custounitario
              _dm2.qrPadrao.sql.add('current_date,');//  data

              //_dm2.qrPadrao.sql.add('(quantidade * '+currtostr(quantidadeProduzida)+'),');
              if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('(quantidade * '+currtostr(_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency)+'),')// total utilizado de materia quando cácluculo for por KG produzida
              else
              _dm2.qrPadrao.sql.add('((quantidade / parametroleite) * '+formatcurr('##0.00',qtdmanteiga)+' ),'); //  quantidade   utilizado de materia

              _dm2.qrPadrao.sql.add(quotedstr(glb_usuario)+' FROM composicaolaticinio as c WHERE codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND tipoinsumo ="outros" '+
               ' AND tipoparametro ="M" ');  //  operador
              _dm2.qrPadrao.execsql;


 //==============================================================================================================



       //Obtem custo da produção
       _dm2.ConnecDm2.Connected:=false;
       _dm2.qrPadrao2.SQL.Clear;
       _dm2.qrPadrao2.SQL.add('SELECT SUM(totalmateriautilizada * custounitario) AS totalProducao FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString));
       _dm2.qrPadrao2.open;


       // soma valor dos insumos predefinidos com o leite, creme e manteiga
        totalcustoproducao:= _dm2.qrPadrao2.FieldByName('totalProducao').AsCurrency + custoLeite + custocreme + customanteiga;

        _dm.ConnecDm.Connected:=false;
        _dm.qrPadrao.SQL.Clear;
        _dm.qrPadrao.SQL.Add('UPDATE movproducaodiaria SET totalcustoproducao=totalcustoproducao + '+quotedstr(formatcurr('##0.00',totalcustoproducao))+'  WHERE numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
        _dm.qrPadrao.execsql;

         //====================




         //2-BAIXA DOS INSUMOS
         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao.SQL.Clear;
         _dm.qrPadrao.SQL.Add('SELECT codigomateria,descricaomateria,SUM(totalmateriautilizada) as materiautilizada FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigofilial='+glb_filial+' AND codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString)+' GROUP BY codigomateria');
         _dm.qrPadrao.open;


         _dm.qrPadrao.first;
         while not _dm.qrPadrao.eof do
         begin

            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(_dm.qrPadrao.FieldByName('materiautilizada').AsString)+' WHERE codigo ='+quotedstr( _dm.qrPadrao.FieldByName('codigomateria').AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();

             _dm.qrPadrao.next;

         end;

            //baixa no leite creme em manteiga
            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',qtdleite))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();

            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',qtdcreme))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();

            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',qtdmanteiga))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();


//LANÇANDO NO CONSUMO

  _dm2.qrPadrao2.SQL.Clear;
  _dm2.qrPadrao2.SQL.Add('SELECT numero,numeroproducao FROM contperdas WHERE numeroproducao='+quotedstr(txtnumero.Text)+' LIMIT 1;');
  _dm2.qrPadrao2.open;

  if(_dm2.qrPadrao2.FieldByName('numeroproducao').AsString = '')then
  begin

  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('INSERT INTO contperdas(numeroproducao,DATA,encerrada,codigofilial,operador,ip,nf,nfserie,cfop,total,tipo) VALUES ( '+
  quotedstr(txtnumero.Text)+','+
  'CURRENT_DATE,"S",'
  +quotedstr(glb_filial)+','
  +quotedstr(glb_usuario)+','
  +quotedstr(glb_ip)+','
  +quotedstr('0')+','
  +quotedstr('0')+','
  +quotedstr('5.927')+','
  +quotedstr('0.00')+','
  +quotedstr('C')+')');
  _dm.qrPadrao.ExecSQL();


    //OBTEM NÚMERO DA ÚLTIMA PERDA LANÇADA
  _dm2.qrPadrao2.SQL.Clear;
  _dm2.qrPadrao2.SQL.Add('SELECT MAX(numero) AS numeroperda FROM contperdas WHERE operador='+quotedstr(glb_usuario)+' AND codigofilial='+quotedstr(glb_filial)+';');
  _dm2.qrPadrao2.open;
   numeroperda := _dm2.qrPadrao2.FieldByName('numeroperda').AsString;

  end
   else
    numeroperda := _dm2.qrPadrao2.FieldByName('numero').AsString;







  _dm.ConnecDm.Connected:=false;
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add(' INSERT INTO produtosperdas (incprodutoacabado,numero,encerrada,numeroproducao,codigofilial,codigo,produto,quantidade,DATA,operador,destino,observacao,custo,preco,tipo,grupo,subgrupo,situacao,fornecedor)'+
   ' SELECT  inc_prod_producao,'+quotedstr(numeroperda)+','+
   ' "S",'+quotedstr(txtnumero.Text)+' ,codigofilial,'+
   ' codigomateria,'+
   ' descricaomateria,'+
   ' totalmateriautilizada,'+
   ' data,'+
      quotedstr(glb_usuario)+','+
      quotedstr('INSUMOS DE PRODUÇÃO')+','+
      quotedstr('PRODUÇÃO N°'+_dm2.cdsMovproducaonumero.AsString)+','+
   ' custounitario,'+
   ' precounitario,'+
   '  "C",'+
   ' grupo,'+
   ' subgrupo,'+
   ' (SELECT p.situacao FROM '+glb_produtos+' as p WHERE p.codigo=codigomateria AND p.codigofilial='+quotedstr(glb_filial)+'),'+
   ' "" FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND codigofilial='+quotedstr(glb_filial)+';');
    _dm.qrPadrao.execsql;
     clipboard.AsText:=    _dm.qrPadrao.sql.text;





   //leite
   if(qtdleite>0)then
   begin

  _dm.ConnecDm.Connected:=false;
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add(' INSERT INTO produtosperdas (numero,encerrada,numeroproducao,codigofilial,codigo,produto,quantidade,DATA,operador,destino,observacao,custo,preco,tipo,grupo,subgrupo,situacao,fornecedor)'+
   ' VALUES ('+quotedstr(numeroperda)+','+
   ' "S",'+quotedstr(txtnumero.Text)+' ,'+quotedstr(_dm2.cdsMovproducaocodigofilial.AsString)+','+
   quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+','+
   quotedstr(_dm.cdsConfigLaticinioprodpadraoleite.AsString)+','+
   quotedstr(formatcurr('##0.00',qtdleite))+','+
   ' current_date,'+
      quotedstr(glb_usuario)+','+
      quotedstr('INSUMOS DE PRODUÇÃO')+','+
      quotedstr('PRODUÇÃO N°'+_dm2.cdsMovproducaonumero.AsString)+','+
   ' (SELECT custo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT precovenda FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   '  "C",'+
   ' (SELECT grupo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT subgrupo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT situacao FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' "");');
    _dm.qrPadrao.execsql;
   end;

   //creme
   if(qtdcreme>0)then
   begin

   _dm.ConnecDm.Connected:=false;
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add(' INSERT INTO produtosperdas (numero,encerrada,numeroproducao,codigofilial,codigo,produto,quantidade,DATA,operador,destino,observacao,custo,preco,tipo,grupo,subgrupo,situacao,fornecedor)'+
   ' VALUES ('+quotedstr(numeroperda)+','+
   ' "S",'+quotedstr(txtnumero.Text)+' ,'+quotedstr(_dm2.cdsMovproducaocodigofilial.AsString)+','+
   quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+','+
   quotedstr(_dm.cdsConfigLaticinioprodpadraocreme.AsString)+','+
   quotedstr(formatcurr('##0.00',qtdcreme))+','+
   ' current_date,'+
      quotedstr(glb_usuario)+','+
      quotedstr('INSUMOS DE PRODUÇÃO')+','+
      quotedstr('PRODUÇÃO N°'+_dm2.cdsMovproducaonumero.AsString)+','+
   ' (SELECT custo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT precovenda FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   '  "C",'+
   ' (SELECT grupo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT subgrupo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT situacao FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' "");');
     _dm.qrPadrao.execsql;
   end;


   // manteiga
   if(qtdmanteiga>0)then
   begin

   _dm.ConnecDm.Connected:=false;
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add(' INSERT INTO produtosperdas (numero,encerrada,numeroproducao,codigofilial,codigo,produto,quantidade,DATA,operador,destino,observacao,custo,preco,tipo,grupo,subgrupo,situacao,fornecedor)'+
   ' VALUES ('+quotedstr(numeroperda)+','+
   ' "S",'+quotedstr(txtnumero.Text)+' ,'+quotedstr(_dm2.cdsMovproducaocodigofilial.AsString)+','+
   quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+','+
   quotedstr(_dm.cdsConfigLaticinioprodpadraomanteiga.AsString)+','+
   quotedstr(formatcurr('##0.00',qtdmanteiga))+','+
   ' current_date,'+
      quotedstr(glb_usuario)+','+
      quotedstr('INSUMOS DE PRODUÇÃO')+','+
      quotedstr('PRODUÇÃO N°'+_dm2.cdsMovproducaonumero.AsString)+','+
   ' (SELECT custo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT precovenda FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   '  "C",'+
   ' (SELECT grupo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT subgrupo FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' (SELECT situacao FROM '+glb_produtos+'  WHERE codigo=' +quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+'),'+
   ' "");');
   _dm.qrPadrao.ExecSQL();
   end;

   //FIM LANÇANDO NO CONSUMO






     //atualiza a tabela produção itens para item requisitado
            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE producaoitens SET materiarequisitada = "S"  WHERE codigo ='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND id='+quotedstr(_dm2.cdsproducaoitensid.asstring)+' AND codigofilial='+quotedstr(glb_filial)+' AND numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
            _dm.qrpadrao2.ExecSQL();

           _dm2.cdsproducaoitens.Refresh;


         _dm2.qrPadrao.SQL.Clear;
         _dm2.qrPadrao.SQL.add('SELECT COUNT(1) as total FROM producaoitens WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigofilial="'+glb_filial+'" AND materiarequisitada="N"');
         _dm2.qrPadrao.open;

         if( _dm2.qrPadrao.FieldByName('total').AsInteger = 0)then
         begin

            {
            //SALVA DADOS DA PRÉ-PRODUÇÃO
            totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
            salvardados('T',_dm2.cdsMovproducaonumero.AsString);


            //carrega saldo atual do leite
                  _dm.ConnecDm.Connected:=false;
                  _dm.qrPadrao.SQL.Clear;
                  _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
                  _dm.qrPadrao.open;

                  txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;
             //----------------
             }


            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE movproducaodiaria SET materiarequisitada = "S"  WHERE  codigofilial='+quotedstr(glb_filial)+' AND numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
            _dm.qrpadrao2.ExecSQL();
         end;


           _dm2.cdsMovproducao.Refresh;
           lbltotprod.Caption:=formatcurr('##0.00',_dm2.cdsMovproducaototalcustoproducao.AsCurrency);
           lblmateria.Caption:='Insumos já requisitados';
           lblProdMarcado.Caption:='Produto:  '+_dm2.cdsproducaoitensproduto.AsString;
           bitRequisitar.Enabled:=false;



end;

procedure T_frmProducaoLaticinio.BitBtn5Click(Sender: TObject);
begin

     //  if(application.MessageBox('Salvar dados de produção?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
     //  exit;

      if(_dm2.cdsMovproducaoencerrada.Asstring='S')then
      begin
      application.MessageBox('Produção já encerrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
      exit;
      end;

       salvardados('T',_dm2.cdsMovproducaonumero.AsString);
       application.MessageBox('Dados salvos com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
end;

procedure T_frmProducaoLaticinio.bitbtnConfirmarClick(Sender: TObject);
begin




      if(_dm2.cdsproducaoitens.RecordCount=0)then
      begin
       application.MessageBox('Informe os ítens da pré-produção','Alerta',MB_ICONEXCLAMATION+MB_OK);
        exit;
      end;



    if(_dm2.cdsResumoleite.RecordCount > 0) or (_dm2.cdsResumocreme.RecordCount > 0)  or (_dm2.cdsResumomanteiga.RecordCount > 0) then
    begin

          if(application.MessageBox('Relançar as informações  da pré-produção?','Pergunta',MB_ICONquestion+MB_YESNO)=idno)then
          begin
           exit;
          end

    else
    begin



      _dm.ConnecDm.Connected:=false;

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;


      _dm.qrPadrao.SQL.Add(' delete from resumoprodleite where  ');
      _dm.qrPadrao.SQL.Add(' codigofilial='+quotedstr(glb_filial)+' and ');
      _dm.qrPadrao.SQL.Add(' numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');

      _dm.qrPadrao.SQL.Add(' delete from resumoprodcreme where  ');
      _dm.qrPadrao.SQL.Add(' codigofilial='+quotedstr(glb_filial)+' and ');
      _dm.qrPadrao.SQL.Add(' numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');

      _dm.qrPadrao.SQL.Add(' delete from resumoprodmanteiga where  ');
      _dm.qrPadrao.SQL.Add(' codigofilial='+quotedstr(glb_filial)+' and ');
      _dm.qrPadrao.SQL.Add(' numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm.qrPadrao.ExecSQL();


      if(application.MessageBox('Zerar dados de consumo (Leite, creme e manteiga)?','Pergunta',MB_ICONquestion+MB_YESNO)=idyes)then
       begin



      {_dm.ConnecDm.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add(' update dadosproducaoleite set entrada="0.00",destinado="0.00",utilizado="0.00",vendido="0.00",perda="0.00",salvo="N" ');
      _dm.qrPadrao2.SQL.add(' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');


      _dm.qrPadrao2.SQL.add(' update dadosproducaocreme set comprado="0.00",destinado="0.00",desnatado="0.00",padronizado="0.00",soro="0.00",sorocoalho="0.00",utilizado="0.00",saldo="0.00",estoque="0.00",perda="0.00",salvo="N" ');
      _dm.qrPadrao2.SQL.add(' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');


      _dm.qrPadrao2.SQL.add('  update dadosproducaomanteiga set cremederretido="0.00",manteigaobitida="0.00",rendimento="0.00",manteigautilizada="0.00",destinado="0.00",saldo="0.00",estoque="0.00",perda="0.00",salvo="N" ');
      _dm.qrPadrao2.SQL.add('  where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');
      _dm.qrPadrao2.ExecSQL(); }


      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add(' update dadosproducaoleite set destinado="0.00",utilizado="0.00",vendido="0.00",perda="0.00",salvo="N" ');
      _dm.qrPadrao2.SQL.add(' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');


      _dm.qrPadrao2.SQL.add(' update dadosproducaocreme set comprado="0.00",destinado="0.00",desnatado="0.00",padronizado="0.00",soro="0.00",sorocoalho="0.00",utilizado="0.00",saldo="0.00",estoque="0.00",perda="0.00",salvo="N" ');
      _dm.qrPadrao2.SQL.add(' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');


      _dm.qrPadrao2.SQL.add('  update dadosproducaomanteiga set cremederretido="0.00",manteigaobitida="0.00",rendimento="0.00",manteigautilizada="0.00",destinado="0.00",saldo="0.00",estoque="0.00",perda="0.00",salvo="N" ');
      _dm.qrPadrao2.SQL.add('  where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+';');
      _dm.qrPadrao2.ExecSQL();



       end;






      gerarGrids(_dm2.cdsMovproducaonumero.AsString);
      end;

    end;




      //resumo producao leite


      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrLeite.SQL.clear;
      _dm2.qrLeite.SQL.Add('SELECT ip.id,ip.codigo,ip.produto, cp.tipoinsumo, ip.quantidadeleite,ip.quantidadecreme,ip.quantidademanteiga FROM composicaolaticinio AS cp, producaoitens AS ip ');
      _dm2.qrLeite.SQL.Add('WHERE cp.codpreproducao=ip.codigo AND tipoinsumo="leite" and ip.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm2.qrLeite.open;

       _dm2.qrLeite.First;
       while not  _dm2.qrLeite.eof  do
       begin

           _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('insert into resumoprodleite(codigo,inc_prod_producao,produto,quantidade,codigofilial,numeroproducao) values (');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrLeite.fieldbyname('codigo').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrLeite.fieldbyname('id').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrLeite.fieldbyname('produto').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrLeite.fieldbyname('quantidadeleite').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
           _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+')');
            _dm.qrPadrao.ExecSQL();

        _dm2.qrLeite.next;
       end;


       //resumo producao creme


      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrCreme.SQL.clear;
      _dm2.qrCreme.SQL.Add('SELECT ip.id,ip.codigo,ip.produto, cp.tipoinsumo, ip.quantidadeleite,ip.quantidadecreme,ip.quantidademanteiga FROM composicaolaticinio AS cp, producaoitens AS ip ');
      _dm2.qrCreme.SQL.Add('WHERE cp.codpreproducao=ip.codigo AND tipoinsumo="creme" and ip.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm2.qrCreme.open;

      _dm2.qrCreme.First;
       while not  _dm2.qrCreme.eof  do
       begin

            _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('insert into resumoprodcreme(codigo,inc_prod_producao,produto,quantidade,codigofilial,numeroproducao) values (');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrCreme.fieldbyname('codigo').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrCreme.fieldbyname('id').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrCreme.fieldbyname('produto').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrCreme.fieldbyname('quantidadecreme').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
           _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+')');
            _dm.qrPadrao.ExecSQL();

        _dm2.qrCreme.next;
       end;



       //resumo producao manteiga



      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrManteiga.SQL.clear;
      _dm2.qrManteiga.SQL.Add('SELECT ip.id,ip.codigo,ip.produto, cp.tipoinsumo, ip.quantidadeleite,ip.quantidadecreme,ip.quantidademanteiga FROM composicaolaticinio AS cp, producaoitens AS ip ');
      _dm2.qrManteiga.SQL.Add('WHERE cp.codpreproducao=ip.codigo AND tipoinsumo="manteiga" and ip.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm2.qrManteiga.open;

      _dm2.qrManteiga.First;
       while not  _dm2.qrManteiga.eof  do
       begin
           _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('insert into resumoprodmanteiga(codigo,inc_prod_producao,produto,quantidade,codigofilial,numeroproducao) values (');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrManteiga.fieldbyname('codigo').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrManteiga.fieldbyname('id').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrManteiga.fieldbyname('produto').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrManteiga.fieldbyname('quantidademanteiga').AsString)+',');
           _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
           _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+')');
            _dm.qrPadrao.ExecSQL();


        _dm2.qrManteiga.next;
       end;


      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add(' update  movproducaodiaria set itensconfirmados="S" where ');
      _dm.qrPadrao.SQL.Add(' codigofilial='+quotedstr(glb_filial)+' and ');
      _dm.qrPadrao.SQL.Add(' numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm.qrPadrao.ExecSQL();


        application.MessageBox('Itens confirmados','Mensagem',MB_ICONINFORMATION+MB_OK);

       obtersaldoleiteClick(sender);

       bitbtnConfirmar.enabled:=false;
       pnlFerramentasPreproducao.Enabled:=false;
       tabDadosProducao.Enabled:=true;
       gerarGrids(_dm2.cdsMovproducaonumero.AsString);
       bitLiberarDigitacao.Enabled:=true;



       //carrega saldo do leite

            _dm.ConnecDm.Connected:=false;
            _dm.qrPadrao.SQL.Clear;
            _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
            _dm.qrPadrao.open;


            txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;

       //----------------

end;

procedure T_frmProducaoLaticinio.btnabrirClick(Sender: TObject);
//var
//numero:string;
begin

   case rgTipoPesq.ItemIndex of
      0:
      begin
         numeroPesq:=txtnumeropesquisa.Text;
         continuar:='S';
         frm.ModalResult:=-1;
      { _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsMovproducao.Close;
       _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND numero = '+quotedstr(txtNumeropesquisa.Text);
       _dm2.sdsMovproducao.execsql;
       _dm2.cdsMovproducao.Open;
       _dm2.cdsMovproducao.refresh;



       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsproducaoitens.Close;
       _dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoitens.execsql;
       _dm2.cdsproducaoitens.Open;
       _dm2.cdsproducaoitens.refresh;

       if(_dm2.cdsMovproducao.RecordCount=0)then
       begin
         application.MessageBox('Produção não encontrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
         txtNumero.text:='0';
         lblnrproducao.Caption:='0';
         gerarGrids(_dm2.cdsMovproducaonumero.AsString);
         exit;
       end;




      //DADOS DA PRODUÇÃO

      // [ LEITE ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaoleite.close;
      _dm2.sdsproducaoleite.CommandText:='SELECT * FROM dadosproducaoleite WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaoleite.ExecSQL;
      _dm2.cdsproducaoleite.Open;
      _dm2.cdsproducaoleite.refresh;

      txtleitesobra.Value:= _dm2.cdsProducaoLeitesobra.AsCurrency;

      // preenche os campos dos dados da produção com os valores salvos
      if(_dm2.cdsProducaoLeitesalvo.AsString='S')then
      begin

      txtLeiteEntrada.Value:=  _dm2.cdsProducaoLeiteentrada.AsCurrency;
      txtLeiteDestinado.Value:=  _dm2.cdsProducaoLeitedestinado.AsCurrency;
      txtLeiteUtilizado.Value:=  _dm2.cdsProducaoLeiteutilizado.AsCurrency;
      txtLeiteVendido.Value:=  _dm2.cdsProducaoLeitevendido.AsCurrency;
      txtLeiteSaldo.Value:= _dm2.cdsProducaoLeitesaldo.AsCurrency;
      txtLeitePerda.Value:= _dm2.cdsProducaoLeiteperda.AsCurrency;
      end
      else
      begin


      txtLeiteEntrada.Value:= 0;
      txtLeiteVendido.Value:=0;
      txtLeiteSaldo.Value:= 0;
      txtLeitePerda.Value:= 0;
      txtLeiteDestinado.Value:=  0;
      txtLeiteUtilizado.Value:=0;


      end;


     // [ CREME ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaocreme.close;
      _dm2.sdsproducaocreme.CommandText:='SELECT * FROM dadosproducaocreme WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaocreme.ExecSQL;
      _dm2.cdsproducaocreme.Open;
      _dm2.cdsproducaocreme.refresh;

      txtcremesobra.Value:= _dm2.cdsProducaocremesobra.AsCurrency;
       // preenche os campos dos dados da produção com os valores salvos
      if(_dm2.cdsProducaocremesalvo.AsString='S')then
      begin
        txtCremesobra.Value:= _dm2.cdsProducaoCremesobra.AsCurrency;
        txtCremeComprado.Value:= _dm2.cdsProducaoCremecomprado.AsCurrency;
        txtCremeDesnatado.Value:=  _dm2.cdsProducaoCremedesnatado.AsCurrency;
        txtCremePadronizado.Value:=  _dm2.cdsProducaoCremepadronizado.AsCurrency;
        txtCremeSoro.Value:=   _dm2.cdsProducaocremesoro.AsCurrency;
        txtCremeSoroCoalho.Value:=  _dm2.cdsProducaoCremesorocoalho.AsCurrency;
        txtCremeVendido.Value:=  _dm2.cdsProducaoCremevendido.AsCurrency;
        txtcremedestinado.Value:=  _dm2.cdsProducaoCremedestinado.AsCurrency;
        txtCremeUtilizado.Value:=  _dm2.cdsProducaocremeutilizado.AsCurrency;
        txtCremeSaldo.Value:=  _dm2.cdsProducaoCremesaldo.AsCurrency;
        txtCremEmEstoque.Value:= _dm2.cdsProducaoCremeestoque.AsCurrency;
        txtCremePerda.Value:=  _dm2.cdsProducaoCremeperda.AsCurrency;

      end
      else
      begin
      //  txtCremesobra.Value:=0;
        txtCremeComprado.Value:= 0;
        txtCremeDesnatado.Value:=  0;
        txtCremePadronizado.Value:= 0;
        txtCremeSoro.Value:=   0;
        txtCremeSoroCoalho.Value:= 0;
        txtCremeVendido.Value:=  0;
        txtCremeSaldo.Value:=  0;
        txtCremePerda.Value:=  0;
        txtcremedestinado.Value:=  0;
        txtCremEmEstoque.Value:= 0;
        txtCremeUtilizado.Value:=  0;


      end;




      //[ MANTEIGA ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaomanteiga.close;
      _dm2.sdsproducaomanteiga.CommandText:='SELECT * FROM dadosproducaomanteiga WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaomanteiga.ExecSQL;
      _dm2.cdsproducaomanteiga.Open;
      _dm2.cdsproducaomanteiga.refresh;

      txtmanteigasobra.Value:= _dm2.cdsProducaomanteigasobra.AsCurrency;

       // preenche os campos dos dados da produção com os valores salvos
       if(_dm2.cdsProducaomanteigasalvo.AsString='S')then
      begin

      txtManteigaCderretido.Value:= _dm2.cdsProducaoManteigacremederretido.AsCurrency;
      txtManteigaObitida.Value:=  _dm2.cdsProducaoManteigamanteigaobitida.AsCurrency;
      txtManteigaRendimento.Value:= _dm2.cdsProducaoManteigarendimento.AsCurrency;
      txtManteigaDestinada.Value:=  _dm2.cdsProducaoManteigadestinado.ascurrency;
      txtManteigaUtilizada.Value:=  _dm2.cdsProducaoManteigamanteigautilizada.AsCurrency;
      txtManteigaSaldo.Value:=  _dm2.cdsProducaoManteigasaldo.AsCurrency;
      txtManteigaEstoque.Value:=  _dm2.cdsProducaoManteigaestoque.AsCurrency;
      txtManteigasobra.Value:=  _dm2.cdsProducaoManteigasobra.AsCurrency;
      txtPerda.Value:=  _dm2.cdsProducaoManteigaperda.AsCurrency;
      end
      else
      begin
      txtManteigaCderretido.Value:= 0;
      txtManteigaObitida.Value:= 0;
      txtManteigaRendimento.Value:=0;
      txtManteigaSaldo.Value:= 0;
      txtManteigaEstoque.Value:=0;
      txtPerda.Value:=0;
      txtManteigaDestinada.Value:= 0;
      txtManteigaUtilizada.Value:= 0;
     // txtManteigasobra.Value:=0;

      end;




       //FIM abertura dados da produção

        datatxtaproducao.text:=_dm2.cdsMovproducaodata.asstring;
        lblnrproducao.Caption:= _dm2.cdsMovproducaonumero.AsString;
        txtNumero.Text:=_dm2.cdsMovproducaonumero.AsString;
        cboFilial.Text:=_dm2.cdsMovproducaocodigofilial.AsString;
        lblDataini.Caption:=_dm2.cdsMovproducaodata.AsString+'  '+_dm2.cdsMovproducaohora.AsString;
        pnlAbertura.Enabled:=true;
        pnlDadosFim.Enabled:=true;
        pnlitens.Enabled:=true;
        //pnlabrir.Visible:=false;
        gerarGrids(_dm2.cdsMovproducaonumero.AsString);
        lblDatafim.Caption:=_dm2.cdsMovproducaodatafinalizacao.AsString+'  '+_dm2.cdsMovproducaohorafinalizacao.AsString;
        cboOperadorFim.Text:=  _dm2.cdsMovproducaooperadorfinalizacao.AsString;
        cboOperadorAbertura.Text:=_dm2.cdsMovproducaooperador.AsString;  }
      end;
      1:
      begin

         numeroPesq:=_dm2.cdsMovproducaonumero.AsString;
         continuar:='S';
         frm.ModalResult:=-1;


     { numero:= _dm2.cdsMovproducaonumero.AsString;

       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsMovproducao.Close;
      // _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND data = '+quotedstr(formatdatetime('yyyy-mm-dd',datapesqini.Date));
       _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND numero = '+quotedstr(numero);
       _dm2.sdsMovproducao.execsql;
       _dm2.cdsMovproducao.Open;
       _dm2.cdsMovproducao.refresh;

       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsproducaoitens.Close;
      // _dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoitens.execsql;
       _dm2.cdsproducaoitens.Open;
       _dm2.cdsproducaoitens.refresh;


       if(_dm2.cdsMovproducao.RecordCount=0)then
       begin
         application.MessageBox('Produção não encontrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
         txtNumero.text:='0';
         lblnrproducao.Caption:='0';
         gerarGrids(_dm2.cdsMovproducaonumero.AsString);
         exit;
       end;



      //DADOS DA PRODUÇÃO

      // [ LEITE ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaoleite.close;
      _dm2.sdsproducaoleite.CommandText:='SELECT * FROM dadosproducaoleite WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaoleite.ExecSQL;
      _dm2.cdsproducaoleite.Open;
      _dm2.cdsproducaoleite.refresh;

      txtleitesobra.Value:= _dm2.cdsProducaoLeitesobra.AsCurrency;

      // preenche os campos dos dados da produção com os valores salvos
      if(_dm2.cdsProducaoLeitesalvo.AsString='S')then
      begin

      txtLeiteEntrada.Value:=  _dm2.cdsProducaoLeiteentrada.AsCurrency;
      txtLeiteDestinado.Value:=  _dm2.cdsProducaoLeitedestinado.AsCurrency;
      txtLeiteUtilizado.Value:=  _dm2.cdsProducaoLeiteutilizado.AsCurrency;
      txtLeiteVendido.Value:=  _dm2.cdsProducaoLeitevendido.AsCurrency;
      txtLeiteSaldo.Value:= _dm2.cdsProducaoLeitesaldo.AsCurrency;
      txtLeitePerda.Value:= _dm2.cdsProducaoLeiteperda.AsCurrency;
      end
      else
      begin
      txtLeiteEntrada.Value:= 0;
      txtLeiteVendido.Value:=0;
      txtLeiteSaldo.Value:= 0;
      txtLeitePerda.Value:= 0;

      end;



     // [ CREME ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaocreme.close;
      _dm2.sdsproducaocreme.CommandText:='SELECT * FROM dadosproducaocreme WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaocreme.ExecSQL;
      _dm2.cdsproducaocreme.Open;
      _dm2.cdsproducaocreme.refresh;


      txtcremesobra.Value:= _dm2.cdsProducaocremesobra.AsCurrency;

       // preenche os campos dos dados da produção com os valores salvos
      if(_dm2.cdsProducaocremesalvo.AsString='S')then
      begin

        txtCremeComprado.Value:= _dm2.cdsProducaoCremecomprado.AsCurrency;
        txtCremeDesnatado.Value:=  _dm2.cdsProducaoCremedesnatado.AsCurrency;
        txtCremePadronizado.Value:=  _dm2.cdsProducaoCremepadronizado.AsCurrency;
        txtCremeSoro.Value:=   _dm2.cdsProducaocremesoro.AsCurrency;
        txtCremeSoroCoalho.Value:=  _dm2.cdsProducaoCremesorocoalho.AsCurrency;
        txtCremeVendido.Value:=  _dm2.cdsProducaoCremevendido.AsCurrency;
        txtcremedestinado.Value:=  _dm2.cdsProducaoCremedestinado.AsCurrency;
        txtCremeUtilizado.Value:=  _dm2.cdsProducaocremeutilizado.AsCurrency;
        txtCremeSaldo.Value:=  _dm2.cdsProducaoCremesaldo.AsCurrency;
        txtCremePerda.Value:=  _dm2.cdsProducaoCremeperda.AsCurrency;

      end
      else
      begin
         txtCremeComprado.Value:= 0;
        txtCremeDesnatado.Value:=  0;
        txtCremePadronizado.Value:= 0;
        txtCremeSoro.Value:=   0;
        txtCremeSoroCoalho.Value:= 0;
        txtCremeVendido.Value:=  0;
        txtCremeSaldo.Value:=  0;
        txtCremePerda.Value:=  0;

      end;




      //[ MANTEIGA ]
      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsproducaomanteiga.close;
      _dm2.sdsproducaomanteiga.CommandText:='SELECT * FROM dadosproducaomanteiga WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaomanteiga.ExecSQL;
      _dm2.cdsproducaomanteiga.Open;
      _dm2.cdsproducaomanteiga.refresh;

      txtmanteigasobra.Value:= _dm2.cdsProducaomanteigasobra.AsCurrency;

       // preenche os campos dos dados da produção com os valores salvos
       if(_dm2.cdsProducaomanteigasalvo.AsString='S')then
      begin

      txtManteigaCderretido.Value:= _dm2.cdsProducaoManteigacremederretido.AsCurrency;
      txtManteigaObitida.Value:=  _dm2.cdsProducaoManteigamanteigaobitida.AsCurrency;
      txtManteigaRendimento.Value:= _dm2.cdsProducaoManteigarendimento.AsCurrency;
      txtManteigaDestinada.Value:=  _dm2.cdsProducaoManteigadestinado.ascurrency;
      txtManteigaUtilizada.Value:=  _dm2.cdsProducaoManteigamanteigautilizada.AsCurrency;
      txtManteigaSaldo.Value:=  _dm2.cdsProducaoManteigasaldo.AsCurrency;
      txtManteigaEstoque.Value:=  _dm2.cdsProducaoManteigaestoque.AsCurrency;
      txtPerda.Value:=  _dm2.cdsProducaoManteigaperda.AsCurrency;

      end
      else
      begin
      txtManteigaCderretido.Value:= 0;
      txtManteigaObitida.Value:= 0;
      txtManteigaRendimento.Value:=0;
      txtManteigaSaldo.Value:=  0;
      txtManteigaEstoque.Value:= 0;
      txtPerda.Value:= 0;

      end;





       //FIM abertura dados da produção



        datatxtaproducao.text:=_dm2.cdsMovproducaodata.asstring;
        lblnrproducao.Caption:= _dm2.cdsMovproducaonumero.AsString;
        txtNumero.Text:=_dm2.cdsMovproducaonumero.AsString;
        cboFilial.Text:=_dm2.cdsMovproducaocodigofilial.AsString;
        lblDataini.Caption:=_dm2.cdsMovproducaodata.AsString+'  '+_dm2.cdsMovproducaohora.AsString;


        pnlAbertura.Enabled:=true;
        pnlDadosFim.Enabled:=true;
        pnlitens.Enabled:=true;
       // pnlabrir.Visible:=false;
        gerarGrids(_dm2.cdsMovproducaonumero.AsString);   }


      end;
   end;

 {  if(_dm2.cdsMovproducaoitensconfirmados.AsString = 'S')then
    begin
      bitbtnConfirmar.enabled:=false;
      pnlFerramentasPreproducao.Enabled:=false;
       bitLiberarDigitacao.Enabled:=true;

    end
    else
    begin
      bitbtnConfirmar.enabled:=true;
      pnlFerramentasPreproducao.Enabled:=true;
       bitLiberarDigitacao.Enabled:=false;
    end;


       if(_dm2.cdsMovproducaopreproducaoconfirmada.AsString='S')then
        tabDadosProducao.Enabled:=false
       else
        tabDadosProducao.Enabled:=true;

        if(_dm2.cdsproducaoitens.RecordCount=0)then
        tabDadosProducao.Enabled:=false;  }


      //  frm.ModalResult:=-1;

end;

procedure T_frmProducaoLaticinio.btnExcProdPreClick(Sender: TObject);
begin

  if(application.MessageBox('Excluir item da produção?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
  exit;

   _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('delete from producaoitens where id='+quotedstr(_dm2.cdsproducaoitensid.AsString));
    _dm.qrPadrao.execsql;


     _dm2.cdsproducaoitens.close;
    _dm2.cdsproducaoitens.open;
    _dm2.cdsproducaoitens.refresh;
end;

procedure T_frmProducaoLaticinio.BitBtn6Click(Sender: TObject);
begin
    continuar:='N';
    frm.ModalResult:=-1;
end;

procedure T_frmProducaoLaticinio.BitBtn7Click(Sender: TObject);
begin



  //  if(application.MessageBox('Após a confirmação, não será possível alterar. Deseja continuar?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
 //   exit;



  {
    glb_campo:='encerrarproducao';

    _frmLogin:=T_frmLogin.Create(self);
        _frmLogin.lblfuncao.Caption:='Encerrar Pre-produção diária';
    _frmLogin.ShowModal;
    _frmLogin.Release;

    if(glb_permissao='N')then
    exit;   }




      if(application.MessageBox('Confirmar dados da pré-produção?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       exit;

    //SALVA DADOS DA PRÉ-PRODUÇÃO
    totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
    salvardados('T',_dm2.cdsMovproducaonumero.AsString);


       {
      _dm.ConnecDm.Connected:=false;
        _dm.qrPadrao.SQL.Clear;
        _dm.qrPadrao.SQL.Add('UPDATE movproducaodiaria SET totalcustoproducao=totalcustoproducao + '+quotedstr(formatcurr('##0.00',totalcustoproducao))+'  WHERE numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
        _dm.qrPadrao.execsql;
         }

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' update movproducaodiaria set preproducaoconfirmada="S" where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm.qrPadrao.execsql;

    _dm2.cdsMovproducao.Refresh;
      tabDadosProducao.Enabled:=false;


end;

procedure T_frmProducaoLaticinio.BitBtn8Click(Sender: TObject);
var
linha:integer;

begin

                 _dm.ConnecDm.Connected:=false;
                 _dm.qrpadrao.sql.Clear;
                 _dm.qrpadrao.sql.Add(' SELECT m.numero,m.datafinalizacao,SUM(a.qtdconferida) AS Total_Entrada FROM analise AS a, movanalise AS m  WHERE m.codigofilial ='+quotedstr(copy(cbofilial.Text,1,5))+' AND m.datafinalizacao='+quotedstr(formatdatetime('yyyy-mm-dd',datacoleta.Date)));
                 _dm.qrpadrao.sql.Add( ' and m.numero=a.numero GROUP BY m.numero ');
                 _dm.qrpadrao.Open;



                 gridColeta.RowCount:=1;
                 linha:=0;
                  txtSaldoColeta.Value:=0;
                  numAnalises:='';

//                if(_dm.qrpadrao.RecordCount>0)then
 //               begin



                   _dm.qrpadrao.first;
                  while not _dm.qrpadrao.Eof do
                  begin


                    gridColeta.RowCount:=gridColeta.RowCount+1;
                    linha:=linha+1;

                    numAnalises:=numAnalises+'  ['+_dm.qrpadrao.fieldbyname('numero').Asstring+']';

                    gridColeta.Cells[0,linha]:=_dm.qrpadrao.fieldbyname('numero').Asstring;
                    gridColeta.Cells[1,linha]:=formatcurr('##0.00',_dm.qrpadrao.fieldbyname('Total_Entrada').AsCurrency);


                    txtSaldoColeta.Value:= txtSaldoColeta.Value + _dm.qrpadrao.fieldbyname('Total_Entrada').AsCurrency;

                    _dm.qrpadrao.Next;
                  end;

        //         end;





end;

procedure T_frmProducaoLaticinio.btnlancprodClick(Sender: TObject);
begin
    _frmProdPreProducao:=T_frmProdPreProducao.Create(self);
    _frmProdPreProducao.ShowModal();

   {
    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT count(1) as total FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.Asstring)+' AND codigofilial='+quotedstr(glb_filial));
    _dm.qrPadrao.open;
    }


    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT count(1) as total FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm.cdsPrd2codigo.Asstring)+' AND codigofilial='+quotedstr(glb_filial));
    _dm.qrPadrao.open;




     if(_dm.qrPadrao.fieldbyname('total').AsInteger=0)then
     begin
        application.MessageBox('Produto sem composição, verifique!','Alerta',MB_ICONEXCLAMATION+MB_OK);
        exit;
     end;

    {
    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT count(1) as total FROM produtosembalagens WHERE codprodpreproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.Asstring)+' AND codigofilial='+quotedstr(glb_filial));
    _dm.qrPadrao.open;
     }

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT count(1) as total FROM produtosembalagens WHERE codprodpreproducao='+quotedstr(_dm.cdsPrd2codigo.Asstring)+' AND codigofilial='+quotedstr(glb_filial));
    _dm.qrPadrao.open;


     if(_dm.qrPadrao.fieldbyname('total').AsInteger=0)then
     begin
        application.MessageBox('Produto sem embalagens definidas, verifique!','Alerta',MB_ICONEXCLAMATION+MB_OK);
        exit;
     end;


    {
    lblCod.Caption:=_dm2.cdsProdPreProducaocodigo.Asstring;
    lblProd.Caption:=_dm2.cdsProdPreProducaodescricao.Asstring;
     }

    lblCod.Caption:=_dm.cdsPrd2codigo.Asstring;
    lblProd.Caption:=_dm.cdsPrd2descricao.Asstring;
   // txtqtdleite.SetFocus;

    _frmProdPreProducao.release;
end;

procedure T_frmProducaoLaticinio.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With DBGrid2.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(DBGrid2.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.Columns[DataCol].Field, State);
end;

end;

procedure T_frmProducaoLaticinio.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With DBGrid3.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(DBGrid3.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 DBGrid3.DefaultDrawDataCell(Rect, DBGrid3.Columns[DataCol].Field, State);
end;




     if (Column.Field=_dm2.cdsFulxogramaProducaostatus) then
  begin
    if (_dm2.cdsFulxogramaProducaostatus.AsInteger = 0)then
     begin
     DBGrid3.Canvas.FillRect(Rect);
     imgstatus.Draw(DBGrid3.Canvas,Rect.Left+10,Rect.Top+1,0);
     end
     else if _dm2.cdsFulxogramaProducaostatus.AsInteger = 1 then
     begin
     DBGrid3.Canvas.FillRect(Rect);
     imgstatus.Draw(DBGrid3.Canvas,Rect.Left+10,Rect.Top+1,1);
     end
     else if _dm2.cdsFulxogramaProducaostatus.AsInteger = 2 then
     begin
     DBGrid3.Canvas.FillRect(Rect);
     imgstatus.Draw(DBGrid3.Canvas,Rect.Left+10,Rect.Top+1,2);
     end

    else
      DBGrid3.Canvas.FillRect(Rect);
  end;



end;

procedure T_frmProducaoLaticinio.dsProdutosDataChange(Sender: TObject;
  Field: TField);
begin
   _dm2.ConnecDm2.Connected:=false;
   _dm2.cdsFulxogramaProducao.Close;
   _dm2.sdsFulxogramaProducao.CommandText:='SELECT '+
      'id,'+
      'inc_prod_producao,'+
      'codigoproduto,'+
      'codigofilial,'+
      'numeroproducao,'+
      'codigoetapaprod,'+
      'IFNULL( IF(STATUS=0,TIMEDIFF(TIMESTAMP(CURRENT_DATE,CURRENT_TIME),horainicio),TIMEDIFF(horatermino,horainicio)),"00:00:00") AS duracao,'+
      '(SELECT processo FROM cadetapaproducao WHERE id=codigoetapaprod) AS processo,'+
      '(SELECT duracaoestimada FROM cadetapaproducao WHERE id=codigoetapaprod) AS duracaoestimada,'+
      'horainicio,'+
      'horatermino,'+
      'operadorinicio,'+
      'operadortermino,'+
      'iniciado,'+
      'status,'+
      'finalizado FROM fluxogramaproducao WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+
      ' AND inc_prod_producao='+quotedstr(_dm2.cdsproducaoitensid.AsString);
   _dm2.sdsFulxogramaProducao.execsql;
   _dm2.cdsFulxogramaProducao.Open;
   _dm2.cdsFulxogramaProducao.Refresh;



   if(_dm2.cdsproducaoitensmateriarequisitada.asstring='S')then
   begin

      try
           imgMateria.Picture.LoadFromFile('C:\iqsistemas\SICElaticinios\logos\circulo_1_80.png');
      except
      end;
      lblmateria.Caption:='Insumos já requisitados';
      lblProdMarcado.Caption:='Produto:  '+_dm2.cdsproducaoitensproduto.AsString;
      bitRequisitar.Enabled:=false;
   end
   else
   begin

      try
        imgMateria.Picture.LoadFromFile('C:\iqsistemas\SICElaticinios\logos\circulo_2_80.png');
        except
      end;
        lblmateria.Caption:='Insumos não requisitados';
        lblProdMarcado.Caption:='Produto:   '+_dm2.cdsproducaoitensproduto.AsString;
        bitRequisitar.Enabled:=true;
   end;


end;

procedure T_frmProducaoLaticinio.btnlancClick(Sender: TObject);
begin
{    if(txtqtdleite.Value=0)then
    begin
    application.MessageBox('Informe a quantidade!','Alerta',MB_ICONEXCLAMATION+MB_OK);
    exit;
    end;       }

    if(lblcod.caption='...')then
    begin
    application.MessageBox('Selecione o produto!','Alerta',MB_ICONEXCLAMATION+MB_OK);
    exit;
    end;


    {_dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' select count(1) as total from producaoitens where codigo='+quotedstr(lblCod.Caption)+' and numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm.qrPadrao.open;

    if( _dm.qrPadrao.FieldByName('total').AsInteger >0)then
    begin
    application.MessageBox('Produto já foi lançado','Alerta',MB_ICONEXCLAMATION+MB_OK);
    exit;
    end; }

    {
    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' INSERT INTO producaoitens(codigo,produto,unidade,quantidadeleite,quantidadecreme,quantidademanteiga,quantidadesoro,codigofilial,numeroproducao) VALUES (');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaodescricao.AsString)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProdPreProducaounidade.AsString)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtqtdleite.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtqtdcreme.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtqtdmanteiga.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtsoro.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+')');
    _dm.qrPadrao.ExecSQL;
     }



    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' INSERT INTO producaoitens(codigo,produto,unidade,quantidadeleite,quantidadecreme,quantidademanteiga,quantidadesoro,codigofilial,numeroproducao) VALUES (');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2codigo.AsString)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2descricao.AsString)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsPrd2unidade.AsString)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtqtdleite.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtqtdcreme.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtqtdmanteiga.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtsoro.Value))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+')');
    _dm.qrPadrao.ExecSQL;







    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('INSERT INTO fluxogramaproducao(codigoproduto,inc_prod_producao,codigofilial,numeroproducao,codigoetapaprod)'+
     'SELECT '+quotedstr(_dm.cdsPrd2codigo.AsString)+','+
     '(SELECT MAX(id) FROM producaoitens WHERE codigo ="'+_dm.cdsPrd2codigo.AsString+'" AND numeroproducao="'+_dm2.cdsMovproducaonumero.AsString+'") AS inc,'+
     quotedstr(glb_filial)+','+
     quotedstr(_dm2.cdsMovproducaonumero.AsString)+
     ',id FROM cadetapaproducao WHERE codigoproduto='+quotedstr(_dm.cdsPrd2codigo.AsString)+
     ' AND codigofilial='+quotedstr(glb_filial)+' ORDER BY ordem');
     _dm.qrPadrao.ExecSQL;







    _dm2.cdsproducaoitens.close;
    _dm2.sdsproducaoitens.CommandText:='select * from producaoitens where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
    _dm2.cdsproducaoitens.open;
    _dm2.cdsproducaoitens.refresh;

    txtqtdleite.Value:=0;
    txtqtdcreme.Value:=0;
    txtqtdmanteiga.Value:=0;

    lblCod.Caption:='...';
    lblProd.Caption:='...';

    btnlancprod.SetFocus;
    _dm.ConnecDm.Connected:=false;
end;

procedure T_frmProducaoLaticinio.BitBtn9Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmProducaoLaticinio.btnIncProdPreClick(Sender: TObject);
begin

    frm:=Tform.create(self);

    frm.Width:=570;
    frm.Height:=190;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlLancar.Parent:=frm;
    pnlLancar.visible:=true;
    pnlLancar.Align:=alClient;
    frm.ShowModal;


end;

procedure T_frmProducaoLaticinio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if(_dm2.cdsMovproducaoencerrada.Asstring='S')then
               exit;

               if(_dm2.cdsMovproducaonumero.Asstring='0')then
               exit;

                if(_dm2.cdsMovproducaomateriarequisitada.AsString='N')then
                begin
                   //carrega saldo atual do leite
                            _dm.ConnecDm.Connected:=false;
                            _dm.qrPadrao.SQL.Clear;
                            _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
                            _dm.qrPadrao.open;

                            txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;
                   //----------------

                      //SALVA DADOS DA PRÉ-PRODUÇÃO
                      totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
                      salvardados('T',_dm2.cdsMovproducaonumero.AsString);

                end;
end;

procedure T_frmProducaoLaticinio.FormShow(Sender: TObject);
begin

  FormatSettings.DecimalSeparator:='.';
  PageControl1.ActivePageIndex:=0;

    _dm.cdsSenhas.Close;
    _dm.cdsSenhas.Open;
    _dm.cdsSenhas.refresh;

    cboOperadorAbertura.Items.clear;
    cboOperadorFim.Items.clear;


    _dm.cdsSenhas.first;
    while not _dm.cdsSenhas.eof do
    begin

      cboOperadorAbertura.Items.Add(_dm.cdsSenhasoperador.AsString);
      cboOperadorFim.Items.Add(_dm.cdsSenhasoperador.AsString);


    _dm.cdsSenhas.next;
    end;

    _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsproducaoitens.Close;
    _dm2.sdsproducaoitens.commandtext:='select * from producaoitens  where codigofilial="00001"  limit 0';
    _dm2.sdsproducaoitens.execsql;
    _dm2.cdsproducaoitens.Open;
    _dm2.cdsproducaoitens.Refresh;




end;

procedure T_frmProducaoLaticinio.gridCremeDblClick(Sender: TObject);
begin
{Application.HintHidePause:=20000;
hint:=gridCreme.Cells[colLeite,0];
ShowHint:=true;  }
end;

procedure T_frmProducaoLaticinio.gridCremeDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
     var
  CellText, Texto: string;
  Col,I : Integer;
   totalCremeUtilizado:currency;
begin

    if(gridCreme.Cells[ACol, ARow]='')then
    gridCreme.Cells[ACol, ARow]:='0.00';



   totalCremeUtilizado:=0;
   try
   begin
       for I := 0 to gridCreme.colCount-1 do
       begin
           if(arow>0) then
           begin
           totalCremeUtilizado:=totalCremeUtilizado+ strtocurr(gridCreme.Cells[I,1]);
           txtcremeUtilizado.Value :=  totalCremeUtilizado;
           end;
       end;


   end
   except

  end;




     if Arow=1 then
      begin
        gridCreme.Canvas.Brush.Color := clInfoBk;
        gridCreme.Canvas.FillRect(Rect);
        CellText := gridCreme.Cells[ACol, ARow]
      end;

       if Arow=0 then
      begin
        gridCreme.Canvas.Brush.Color := clMoneyGreen;
        gridCreme.Canvas.FillRect(Rect);
        CellText := gridCreme.Cells[ACol, ARow]
      end;

      gridCreme.Canvas.TextOut(Rect.Left + 4, Rect.Top + 4, CellText);
end;

procedure T_frmProducaoLaticinio.gridCremeKeyPress(Sender: TObject;
  var Key: Char);
begin
validaNumeros(key);
end;

procedure T_frmProducaoLaticinio.gridCremeSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
colLeite:=acol;
end;

procedure T_frmProducaoLaticinio.gridLeiteDblClick(Sender: TObject);
begin
                 {
Application.HintHidePause:=20000;
hint:=gridLeite.Cells[colLeite,0];
ShowHint:=true; }
end;

procedure T_frmProducaoLaticinio.gridLeiteDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
    var
  CellText, Texto: string;
  Col,I : Integer;
  totalLeiteUtilizada:currency;
begin

if(gridLeite.Cells[ACol, ARow]='')then
gridLeite.Cells[ACol, ARow]:='0.00';

   totalLeiteUtilizada:=0;
   try
   begin
       for I := 0 to gridleite.colCount-1 do
       begin
           if(arow>0) then
           begin
           totalLeiteUtilizada:=totalLeiteUtilizada+ strtocurr(gridleite.Cells[I,1]);
           txtLeiteUtilizado.Value :=  totalLeiteUtilizada;
           end;
       end;


   end
   except

  end;

   //atualiza valores
  totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);


      if Arow=1 then
      begin
        gridLeite.Canvas.Brush.Color := clInfoBk;
        gridLeite.Canvas.FillRect(Rect);
        CellText := gridLeite.Cells[ACol, ARow]
      end;

      if Arow=0 then
      begin
        gridLeite.Canvas.Brush.Color := clMoneyGreen;
        gridLeite.Canvas.FillRect(Rect);
        CellText := gridLeite.Cells[ACol, ARow]
      end;



      gridLeite.Canvas.TextOut(Rect.Left + 4, Rect.Top + 4, CellText);
end;

procedure T_frmProducaoLaticinio.gridLeiteKeyPress(Sender: TObject;
  var Key: Char);
begin
validaNumeros(key);
end;

procedure T_frmProducaoLaticinio.gridLeiteSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
colLeite:=acol;

end;

procedure T_frmProducaoLaticinio.gridManteigaDblClick(Sender: TObject);
begin
{Application.HintHidePause:=20000;
hint:=gridManteiga.Cells[colLeite,0];
ShowHint:=true; }
end;

procedure T_frmProducaoLaticinio.gridManteigaDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
     var
  CellText, Texto: string;
  Col,I : Integer;
   totalmanteigaUtilizada:currency;
begin



   totalmanteigaUtilizada:=0;
   try
   begin
       for I := 0 to gridManteiga.colCount-1 do
       begin
           if(arow>0) then
           begin
           totalmanteigaUtilizada:=totalmanteigaUtilizada+ strtocurr(gridManteiga.Cells[I,1]);
           txtmanteigaUtilizada.Value :=  totalmanteigaUtilizada;
           end;
       end;


   end
   except

  end;




if(gridManteiga.Cells[ACol, ARow]='')then
gridManteiga.Cells[ACol, ARow]:='0.00';

        if Arow=1 then
      begin
        gridManteiga.Canvas.Brush.Color := clInfoBk;
        gridManteiga.Canvas.FillRect(Rect);
        CellText := gridManteiga.Cells[ACol, ARow]
      end;


      if Arow=0 then
      begin
        gridManteiga.Canvas.Brush.Color := clMoneyGreen;
        gridManteiga.Canvas.FillRect(Rect);
        CellText := gridManteiga.Cells[ACol, ARow]
      end;

      gridManteiga.Canvas.TextOut(Rect.Left + 4, Rect.Top + 4, CellText);
end;

procedure T_frmProducaoLaticinio.gridManteigaKeyPress(Sender: TObject;
  var Key: Char);
begin
validaNumeros(key);
end;

procedure T_frmProducaoLaticinio.gridManteigaSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
colLeite:=acol;
end;

procedure T_frmProducaoLaticinio.gridProdPreDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridProdPre.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridProdPre.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridProdPre.DefaultDrawDataCell(Rect, gridProdPre.Columns[DataCol].Field, State);
end;

end;

procedure T_frmProducaoLaticinio.RDproducaoBeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
     {

    with RDproducao do
    begin
    imp(1,1,_dm.cdsFiliaisfantasia.AsString);
    imp(2,1,_dm.cdsFiliaisfantasia.AsString);
    imp(3,1,_dm.cdsFiliaisfantasia.AsString);
    imp(4,1,_dm.cdsFiliaisfantasia.AsString);
    imp(5,1,_dm.cdsFiliaisfantasia.AsString);

    end;

       }


end;

procedure T_frmProducaoLaticinio.rgTipoPesqClick(Sender: TObject);
begin
btnabrir.Enabled:=true;

   case rgTipoPesq.ItemIndex of
      0:
      begin
      pnlNumero.Visible:=true;
      pnldata.Visible:=false;

      end;
      1:
      begin
       pnlNumero.Visible:=false;
       pnldata.Visible:=true;

      end;
   end;
end;

procedure T_frmProducaoLaticinio.txtCremeCompradoExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtCremeDesnatadoExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtCremEmEstoqueExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtCremePadronizadoExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtcremesobraExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtCremeSoroCoalhoExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtCremeSoroExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtCremeVendidoExit(Sender: TObject);
begin
 totalizarValores('C',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtLeiteEntradaExit(Sender: TObject);
begin
 //atualiza dados leite
 totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtLeiteSaldoExit(Sender: TObject);
begin
  //atualiza valores
  totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtLeiteSobraExit(Sender: TObject);
begin
 totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtLeiteVendidoExit(Sender: TObject);
begin
 //atualiza dados leite
 totalizarValores('L',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtManteigaCderretidoExit(Sender: TObject);
begin
 totalizarValores('M',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtManteigaEstoqueExit(Sender: TObject);
begin
 totalizarValores('M',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtManteigaObitidaExit(Sender: TObject);
begin
 totalizarValores('M',_dm2.cdsMovproducaonumero.AsString);
end;

procedure T_frmProducaoLaticinio.txtnumeropesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
if(key=#13)then
btnabrir.SetFocus;
end;

procedure T_frmProducaoLaticinio.txtqtdleiteKeyPress(Sender: TObject; var Key: Char);
begin
  if(key=#13)then
  begin
  btnlanc.SetFocus;
  end;

end;

end.
