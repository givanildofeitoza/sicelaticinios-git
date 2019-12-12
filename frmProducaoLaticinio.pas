unit frmProducaoLaticinio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit,
  RxCurrEdit;

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
    BitBtn4: TBitBtn;
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
    BitBtn13: TBitBtn;
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
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure txtLeiteSobraExit(Sender: TObject);
    procedure bitLiberarDigitacaoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
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
main,dm,dm2,clipbrd,frmprodutos,frmsilos,frmlogin,frmProdPreProducao;
procedure totalizarValores(tipo:string; nrProducao:string);
begin

      if(tipo='L') or (tipo='T')then
      begin

      try
      begin
       _frmProducaoLaticinio.txtLeiteperda.Value:= _frmProducaoLaticinio.txtLeiteSobra.Value + _frmProducaoLaticinio.txtLeiteEntrada.Value - _frmProducaoLaticinio.txtLeiteUtilizado.Value - _frmProducaoLaticinio.txtLeiteVendido.Value - _frmProducaoLaticinio.txtLeitesaldo.Value;

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

   if(_dm2.cdsMovproducaoencerrada.Asstring='S')then
   begin
     application.MessageBox('Produção já encerrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
     exit;
   end;


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
          _dm2.qrLeite.SQL.Add(' p.quantidadeleite='+quotedstr(_frmProducaoLaticinio.gridLeite.Cells[I,1])+'  WHERE r.codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridLeite.Cells[I,0],1,4))+') AND r.numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.SQL.Add(' and p.numeroproducao=r.numeroproducao and p.codigo=r.codigo');
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
          _dm2.qrLeite.SQL.Add(' p.quantidadecreme='+quotedstr(_frmProducaoLaticinio.gridcreme.Cells[I,1])+'  WHERE r.codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridcreme.Cells[I,0],1,4))+') AND r.numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.SQL.Add(' and p.numeroproducao=r.numeroproducao and p.codigo=r.codigo');
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
          _dm2.qrLeite.SQL.Add(' p.quantidademanteiga='+quotedstr(_frmProducaoLaticinio.gridmanteiga.Cells[I,1])+'  WHERE r.codigo=abs('+quotedstr(copy(_frmProducaoLaticinio.gridmanteiga.Cells[I,0],1,4))+') AND r.numeroproducao='+quotedstr(nrProducao));
          _dm2.qrLeite.SQL.Add(' and p.numeroproducao=r.numeroproducao and p.codigo=r.codigo');
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

          application.MessageBox('Dados salvos com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);





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

                  _frmProducaoLaticinio.gridleite.Cells[c,0]:= _dm2.cdsResumoleitecodigo.AsString.PadLeft(4,'0') +'-'+_dm2.cdsResumoleiteproduto.AsString;

                  if(_dm2.cdsResumoleitesalvo.AsString='N')then
                  _frmProducaoLaticinio.gridleite.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumoleitequantidade.ascurrency)
                  else
                  _frmProducaoLaticinio.gridleite.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumoleitequantidadeajustada.ascurrency);


                  _frmProducaoLaticinio.gridleite.ColWidths[c]:=160;
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

                  _frmProducaoLaticinio.gridcreme.Cells[c,0]:= _dm2.cdsResumocremecodigo.AsString.PadLeft(4,'0') +'-'+_dm2.cdsResumocremeproduto.AsString;

                  if(_dm2.cdsResumocremesalvo.AsString='N')then
                  _frmProducaoLaticinio.gridcreme.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumocremequantidade.ascurrency)
                  else
                  _frmProducaoLaticinio.gridcreme.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumocremequantidadeajustada.ascurrency);

                  _frmProducaoLaticinio.gridcreme.ColWidths[c]:=160;
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

                  _frmProducaoLaticinio.gridmanteiga.Cells[c,0]:= _dm2.cdsResumomanteigacodigo.AsString.PadLeft(4,'0') +'-'+_dm2.cdsResumomanteigaproduto.AsString;

                  if(_dm2.cdsResumomanteigasalvo.AsString='N')then
                  _frmProducaoLaticinio.gridmanteiga.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumomanteigaquantidade.ascurrency)
                  else
                  _frmProducaoLaticinio.gridmanteiga.Cells[c,1]:= formatcurr('##0.00',_dm2.cdsResumomanteigaquantidadeajustada.ascurrency);

                  _frmProducaoLaticinio.gridmanteiga.ColWidths[c]:=160;
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

procedure T_frmProducaoLaticinio.BitBtn13Click(Sender: TObject);
begin


        if(application.MessageBox('Obter saldo atual do leite?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_yes)then
        begin

            _dm.ConnecDm.Connected:=false;
            _dm.qrPadrao.SQL.Clear;
            _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
            _dm.qrPadrao.open;


            txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;

        end
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

        end;

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
       _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND data = '+quotedstr(formatdatetime('yyyy-mm-dd',datapesqini.Date));
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



        //pega sobra do leite produção anterior
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



     datatxtaproducao.Date:=now;
     lblnrproducao.Caption:= _dm2.cdsMovproducaonumero.AsString;
    // bitbtnConfirmar.Click;
      gerarGrids(_dm2.cdsMovproducaonumero.AsString);


      //dados da produção



end;

procedure T_frmProducaoLaticinio.BitBtn2Click(Sender: TObject);
begin
datapesqini.Date:=now;
continuar:='N';
     frm:=Tform.create(self);

    frm.Width:=520;
    frm.Height:=360;
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



       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsproducaoitens.Close;
       //_dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoitens.commandtext:='SELECT * FROM producaoitens WHERE codigofilial='+quotedstr(glb_filial)+' AND numeroproducao = '+quotedstr(numeroPesq);
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
        cboOperadorAbertura.Text:=_dm2.cdsMovproducaooperador.AsString;




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

procedure T_frmProducaoLaticinio.BitBtn5Click(Sender: TObject);
begin

     //  if(application.MessageBox('Salvar dados de produção?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
     //  exit;

       salvardados('T',_dm2.cdsMovproducaonumero.AsString);

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
      _dm2.qrLeite.SQL.Add('SELECT ip.codigo,ip.produto, cp.tipoinsumo, ip.quantidadeleite,ip.quantidadecreme,ip.quantidademanteiga FROM composicaolaticinio AS cp, producaoitens AS ip ');
      _dm2.qrLeite.SQL.Add('WHERE cp.codpreproducao=ip.codigo AND tipoinsumo="leite" and ip.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm2.qrLeite.open;

       _dm2.qrLeite.First;
       while not  _dm2.qrLeite.eof  do
       begin

           _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('insert into resumoprodleite(codigo,produto,quantidade,codigofilial,numeroproducao) values (');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrLeite.fieldbyname('codigo').AsString)+',');
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
      _dm2.qrCreme.SQL.Add('SELECT ip.codigo,ip.produto, cp.tipoinsumo, ip.quantidadeleite,ip.quantidadecreme,ip.quantidademanteiga FROM composicaolaticinio AS cp, producaoitens AS ip ');
      _dm2.qrCreme.SQL.Add('WHERE cp.codpreproducao=ip.codigo AND tipoinsumo="creme" and ip.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm2.qrCreme.open;

      _dm2.qrCreme.First;
       while not  _dm2.qrCreme.eof  do
       begin

            _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('insert into resumoprodcreme(codigo,produto,quantidade,codigofilial,numeroproducao) values (');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrCreme.fieldbyname('codigo').AsString)+',');
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
      _dm2.qrManteiga.SQL.Add('SELECT ip.codigo,ip.produto, cp.tipoinsumo, ip.quantidadeleite,ip.quantidadecreme,ip.quantidademanteiga FROM composicaolaticinio AS cp, producaoitens AS ip ');
      _dm2.qrManteiga.SQL.Add('WHERE cp.codpreproducao=ip.codigo AND tipoinsumo="manteiga" and ip.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
      _dm2.qrManteiga.open;

      _dm2.qrManteiga.First;
       while not  _dm2.qrManteiga.eof  do
       begin
           _dm.ConnecDm.Connected:=false;
           _dm.qrPadrao.SQL.Clear;
           _dm.qrPadrao.SQL.Add('insert into resumoprodmanteiga(codigo,produto,quantidade,codigofilial,numeroproducao) values (');
           _dm.qrPadrao.SQL.Add(quotedstr( _dm2.qrManteiga.fieldbyname('codigo').AsString)+',');
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

       bitbtnConfirmar.enabled:=false;
       pnlFerramentasPreproducao.Enabled:=false;
       tabDadosProducao.Enabled:=true;
       gerarGrids(_dm2.cdsMovproducaonumero.AsString);
       bitLiberarDigitacao.Enabled:=true;

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


    glb_campo:='encerrarproducao';

    _frmLogin:=T_frmLogin.Create(self);
        _frmLogin.lblfuncao.Caption:='Encerrar Pre-produção diária';
    _frmLogin.ShowModal;
    _frmLogin.Release;

    if(glb_permissao='N')then
    exit;




      if(application.MessageBox('Confirmar dados da pré-produção?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       exit;

    //SALVA DADOS DA PRÉ-PRODUÇÃO
    salvardados('T',_dm2.cdsMovproducaonumero.AsString);


    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' update movproducaodiaria set preproducaoconfirmada="S" where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm.qrPadrao.execsql;

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


    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' select count(1) as total from producaoitens where codigo='+quotedstr(lblCod.Caption)+' and numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm.qrPadrao.open;

    if( _dm.qrPadrao.FieldByName('total').AsInteger >0)then
    begin
    application.MessageBox('Produto já foi lançado','Alerta',MB_ICONEXCLAMATION+MB_OK);
    exit;
    end;

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

procedure T_frmProducaoLaticinio.FormShow(Sender: TObject);
begin

  FormatSettings.DecimalSeparator:='.';


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
