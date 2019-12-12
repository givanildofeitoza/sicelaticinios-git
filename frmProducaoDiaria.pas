unit frmProducaoDiaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit, RpBase, RpSystem, RpRave,
  RpDefine, RpCon, RpConDS, Vcl.Menus, RxCtrls, RpRender, RpRenderPDF,
  RxCurrEdit;

type
  T_frmProducaoDiaria = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    Panel1: TPanel;
    txtnumero: TEdit;
    Label1: TLabel;
    btnabrir: TBitBtn;
    pnlConsumo: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    pnlInfProducao: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Panel5: TPanel;
    btnsalvar: TBitBtn;
    BitBtn3: TBitBtn;
    btnencerrar: TBitBtn;
    BitBtn6: TBitBtn;
    Bevel3: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbldataprod: TLabel;
    lblfim: TLabel;
    lbloperadorabertura: TLabel;
    lbloperadorfim: TLabel;
    lblfilial: TLabel;
    Panel6: TPanel;
    Label12: TLabel;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    gridDerivados: TStringGrid;
    pnlAbertura: TPanel;
    Panel9: TPanel;
    Label13: TLabel;
    RadioGroup1: TRadioGroup;
    pnlData: TPanel;
    pnlNumero: TPanel;
    dataPesq: TDateEdit;
    txtPesqNum: TEdit;
    BitBtn1: TBitBtn;
    btnabrirnun: TBitBtn;
    RvDSpreProd: TRvDataSetConnection;
    rvpProducao: TRvProject;
    rvsProducao: TRvSystem;
    RvDSProducaoFinal: TRvDataSetConnection;
    RxSpeedButton1: TRxSpeedButton;
    PopEmb: TPopupMenu;
    Resuisiodeembalagens1: TMenuItem;
    Embalagensadicionais1: TMenuItem;
    RvCustomConnection1: TRvCustomConnection;
    RvRenderPDF1: TRvRenderPDF;
    rvpEmbReq: TRvProject;
    RvDemb: TRvDataSetConnection;
    btnConfirmarDerivados: TBitBtn;
    BitBtn2: TBitBtn;
    pnllote: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    txtlote: TEdit;
    txtvalidade: TDateEdit;
    BitBtn4: TBitBtn;
    DBGrid5: TDBGrid;
    BitBtn5: TBitBtn;
    Label17: TLabel;
    Label18: TLabel;
    lbllote: TLabel;
    lblvencimento: TLabel;
    txtcustoproducao: TCurrencyEdit;
    Panel3: TPanel;
    txtcustoemb: TCurrencyEdit;
    Panel8: TPanel;
    memoRetornos: TMemo;
    pnladdqtd: TPanel;
    Panel12: TPanel;
    Label16: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    txtqtdadicional: TCurrencyEdit;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    lblprod: TLabel;
    Label19: TLabel;
    btnDerivados2: TBitBtn;
    procedure btnabrirClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure gridDerivadosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btnsalvarClick(Sender: TObject);
    procedure gridDerivadosKeyPress(Sender: TObject; var Key: Char);
    procedure txtnumeroKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnabrirnunClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RvCustomConnection1GetCols(Connection: TRvCustomConnection);
    procedure RvCustomConnection1GetRow(Connection: TRvCustomConnection);
    procedure RvCustomConnection1EOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
    procedure Resuisiodeembalagens1Click(Sender: TObject);
    procedure Embalagensadicionais1Click(Sender: TObject);
    procedure btnConfirmarDerivadosClick(Sender: TObject);
    procedure btnencerrarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure txtPesqNumKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDerivados2Click(Sender: TObject);
    procedure RxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    filtro:string;
    frm:tform;
    sql2:string;
  end;

var
  _frmProducaoDiaria: T_frmProducaoDiaria;

implementation

{$R *.dfm}
uses
main,dm,dm2,clipbrd,frmEmbAdicionais,frmlogin,frmInsumosdeproducao,frmMovEmbalgem;

procedure validarDadosProducao(numeroProducao:string);
var
SQLembalagens,SQLpradoes:string;
begin

   glb_continuar:='S';


   if(_dm2.cdsMovproducaocodigofilial.AsString<>glb_filial)then
   begin
      application.MessageBox('Não é possível finalizar uma produção na filial diferente que foi criada! ','Alerta',MB_ICONEXCLAMATION+mb_ok);
      glb_continuar:='N';
   end;



//VALIDA ITENS EMBALAGENS
{
SQLembalagens:= ' SELECT COUNT(1) AS total FROM producaoderivados AS p, produtosembalagens AS e'+
                ' WHERE p.numeroproducao='+quotedstr(numeroProducao)+
                ' AND p.codigoderivado= e.codigo'+
                ' AND e.codigoembalagem = "0"';

                _dm2.ConnecDM2.Connected:=False;
                _dm2.qrpadrao.sql.clear;
                _dm2.qrpadrao.sql.Add(SQLembalagens);
                _dm2.qrpadrao.open;

                 if( _dm2.qrpadrao.FieldByName('total').AsInteger>0)then
                 begin
                   application.MessageBox('Existem produtos (derivados) sem o código da embalagem informado! ','Alerta',MB_ICONEXCLAMATION+mb_ok);


                   if(application.MessageBox('Deseja copiar os dados desses produtos para área de transfrência para corrigi-los?','Pergunta',MB_ICONQUESTION+mb_yesno)=idyes)then
                   begin
                      _dm2.ConnecDM2.Connected:=False;
                      _dm2.qrpadrao.sql.clear;
                      _dm2.qrpadrao.sql.Add(' SELECT p.codigoderivado,p.produtoderivado  FROM producaoderivados AS p, produtosembalagens AS e'+
                        ' WHERE p.numeroproducao='+quotedstr(numeroProducao)+
                        ' AND p.codigoderivado= e.codigo'+
                        ' AND e.codigoembalagem ="0"');
                      _dm2.qrpadrao.open;


                     _frmProducaoDiaria.memoRetornos.Lines.Clear;
                     _frmProducaoDiaria.memoRetornos.Lines.Add('[CÓDIGO]    [PRODUTO                                ]');
                     _dm2.qrpadrao.first;
                     while not _dm2.qrpadrao.eof do
                     begin

                     _frmProducaoDiaria.memoRetornos.Lines.Add(_dm2.qrpadrao.FieldByName('codigoderivado').asstring.PadLeft(7,'0') +'     '+_dm2.qrpadrao.FieldByName('produtoderivado').asstring);

                      _dm2.qrpadrao.next;
                     end;

                     // Clipboard.AsText:=_frmProducaoDiaria.memoRetornos.text;

                   end;
                  // else
                      glb_continuar:='N';
                      exit;
                 end;        }

 //FIM VALIDAÇÃO EMBALAGENS



 //Valida quantidades informadas

  _dm2.cdsproducaoitens.First;
  while not _dm2.cdsproducaoitens.Eof do
  begin
          if(_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency = 0)then
            glb_continuar:='N';

          _dm2.cdsproducaoitens.next;

  end;


  if(  glb_continuar='N')then
  begin
   application.MessageBox('Existem produtos sem quantidade, verifique!','Alerta',MB_ICONEXCLAMATION+mb_ok);
   exit;
  end;

 //Fim Valida quantidades informadas



 //VALIDAÇÃO PRODTUOS LEITE/ CREME E MANTEIGA

 SQLpradoes:=' SELECT codprodpadraoleite,codprodpadraocreme,codprodpadraomanteiga FROM configlaticinio WHERE codigofilial='+quotedstr(glb_filial);


      _dm2.ConnecDM2.Connected:=False;
      _dm2.qrpadrao.sql.clear;
      _dm2.qrpadrao.sql.Add(SQLpradoes);
      _dm2.qrpadrao.open;

      if(_dm2.qrpadrao.FieldByName('codprodpadraoleite').asstring='') or (_dm2.qrpadrao.FieldByName('codprodpadraocreme').asstring='') or (_dm2.qrpadrao.FieldByName('codprodpadraomanteiga').asstring='')then
      begin

         application.MessageBox('Verifique o cadastro de padrões de leite, creme e manteiga nas configurações [F7]','Alerta',MB_ICONEXCLAMATION+mb_ok);
         glb_continuar:='N';

      end;

 //FIM VALIDAÇÃO PRODTUOS LEITE/ CREME E MANTEIGA



 //VALIDAÇÃO DE ITENS E COMPOSIÇÃO
    _frmProducaoDiaria.memoRetornos.Lines.Clear;
    _frmProducaoDiaria.memoRetornos.Lines.Add('[CÓDIGO]    [PRODUTO                                ]');
    _dm2.cdsproducaoitens.First;
    while not _dm2.cdsproducaoitens.Eof do
    begin

      _dm2.ConnecDM2.Connected:=False;
      _dm2.qrpadrao.sql.clear;
      _dm2.qrpadrao.sql.Add('SELECT count(1) as total FROM composicaolaticinio where codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString));
      _dm2.qrpadrao.open;

              if(_dm2.qrpadrao.FieldByName('total').AsInteger=0)then
              begin
                     _frmProducaoDiaria.memoRetornos.Lines.Add( _dm2.cdsproducaoitenscodigo.AsString.PadLeft(7,'0')+'     '+_dm2.cdsproducaoitensproduto.AsString);
              end;

    _dm2.cdsproducaoitens.Next;
    end;



    if(_frmProducaoDiaria.memoRetornos.Lines.Count > 1)then
    begin
           application.MessageBox('Existem produtos sem Composição! ','Alerta',MB_ICONEXCLAMATION+mb_ok);

           if(application.MessageBox('Deseja copiar os dados desses produtos para área de transfrência para corrigi-los?','Pergunta',MB_ICONQUESTION+mb_yesno)=idyes)then
           begin
              Clipboard.AsText:=_frmProducaoDiaria.memoRetornos.text;
           end;
           glb_continuar:='N';
    end;

 //FIM VALIDAÇÃO ITENS COM COMPOSIÇÃO



end;

procedure incluirAuditoria(local:string; documento:string; acao:string; tabela:string);
begin

       	_dm2.ConnecDM2.Connected:=False;
				_dm2.qrpadrao.sql.clear;
				_dm2.qrpadrao.sql.Add('insert into auditoria (codigofilial,usuario,usuariosolicitante,hora,data,tabela,acao,');
				_dm2.qrpadrao.SQL.add('documento,local) ');
				_dm2.qrpadrao.sql.add('values (');
				_dm2.qrpadrao.sql.add(quotedstr(glb_filial)+',');
				_dm2.qrpadrao.sql.add(quotedstr(glb_usuario)+',');
				_dm2.qrpadrao.sql.add(quotedstr(glb_usuario)+',');
				_dm2.qrpadrao.sql.add('current_time,');
				_dm2.qrpadrao.sql.add('current_date,');
				_dm2.qrpadrao.sql.add(quotedstr(tabela)+',');
				_dm2.qrpadrao.sql.add(quotedstr(acao)+',');
				_dm2.qrpadrao.sql.add(quotedstr(documento)+',');
				_dm2.qrpadrao.sql.add(quotedstr(local)+')');
				_dm2.qrpadrao.ExecSQL;


end;

function validaNumeros(var Key: Char):string;
begin
     if not( key in['0'..'9'])  and (key<>#8)then
  begin
      key:=#0;
  end;
end;
procedure verDerivados(codigoItem:string);
var
I:integer;
begin

       _dm2.ConnecDm2.Connected;
       _dm2.qrPadrao.SQL.Clear();
       _dm2.qrPadrao.SQL.add('select lote,validade from producaoitens where codigo='+quotedstr(codigoItem)+'  and numeroproducao='+quotedstr(_dm2.cdsMovProducaonumero.AsString));
       _dm2.qrPadrao.open;


  _frmProducaoDiaria.txtlote.Text:= _dm2.qrPadrao.FieldByName('lote').AsString;;

  if(_dm2.cdsproducaoitensvalidade.AsDateTime=30/12/1899)then
  _frmProducaoDiaria.txtvalidade.text:=''
  else
  _frmProducaoDiaria.txtvalidade.date:= _dm2.qrPadrao.FieldByName('validade').AsDateTime;


     _frmProducaoDiaria.gridDerivados.Cells[0,0]:='Código';
     _frmProducaoDiaria.gridDerivados.Cells[1,0]:='Produto Derivado';
     _frmProducaoDiaria.gridDerivados.Cells[2,0]:='Qtd. Emb. KG';
     _frmProducaoDiaria.gridDerivados.Cells[3,0]:='Qtd.UN. Produzida';
   //  _frmProducaoDiaria.gridDerivados.Cells[4,0]:='Emb. Adicionais';


       _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
       _dm2.sdsproducaoderivados.CommandText:='SELECT *,(SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
       ' and codigopreproducao='+quotedstr(codigoItem);
       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
      // _dm2.cdsproducaoderivados.Refresh;

       _frmProducaoDiaria.gridDerivados.RowCount:=1;
       I:=1;

       if(_dm2.cdsproducaoderivados.RecordCount>0)then
       begin

         _dm2.cdsProducaoDerivados.First;
         for I := 1 to _dm2.cdsproducaoderivados.RecordCount do
         begin
            _frmProducaoDiaria.gridDerivados.RowCount:=_frmProducaoDiaria.gridDerivados.RowCount+1;
            _frmProducaoDiaria.gridDerivados.FixedRows:=1;

            _frmProducaoDiaria.gridDerivados.Cells[0,I]:= _dm2.cdsProducaoDerivadoscodigoderivado.AsString;
            _frmProducaoDiaria.gridDerivados.Cells[1,I]:=_dm2.cdsProducaoDerivadosprodutoderivado.AsString;
            _frmProducaoDiaria.gridDerivados.Cells[2,I]:=formatCurr('###0.000',_dm2.cdsProducaoDerivadosquantidadeembalagem.Ascurrency);
            _frmProducaoDiaria.gridDerivados.Cells[3,I]:=formatCurr('##0.00',_dm2.cdsProducaoDerivadosquantidade.Ascurrency);
           // _frmProducaoDiaria.gridDerivados.Cells[4,I]:=_dm2.cdsProducaoDerivadosembadicionais.Asstring;



            _dm2.cdsProducaoDerivados.Next;
         end;



       end;


end;

procedure preencherGrid(numeroProducao:string);
begin

       _dm2.ConnecDm2.Connected;
       _dm2.cdsProducaoLeite.close;
       _dm2.sdsProducaoLeite.CommandText:='SELECT * FROM dadosproducaoleite WHERE numeroproducao='+quotedstr(numeroProducao);
       _dm2.sdsProducaoLeite.execsql;
       _dm2.cdsProducaoLeite.open;
       _dm2.cdsProducaoLeite.Refresh;


       _dm2.ConnecDm2.Connected;
       _dm2.cdsProducaocreme.close;
       _dm2.sdsProducaocreme.CommandText:='SELECT * FROM dadosproducaocreme WHERE numeroproducao='+quotedstr(numeroProducao);
       _dm2.sdsProducaocreme.execsql;
       _dm2.cdsProducaocreme.open;
       _dm2.cdsProducaocreme.Refresh;


       _dm2.ConnecDm2.Connected;
       _dm2.cdsProducaomanteiga.close;
       _dm2.sdsProducaomanteiga.CommandText:='SELECT * FROM dadosproducaomanteiga WHERE numeroproducao='+quotedstr(numeroProducao);
       _dm2.sdsProducaomanteiga.execsql;
       _dm2.cdsProducaomanteiga.open;
       _dm2.cdsProducaomanteiga.Refresh;


         //_frmProducaoDiaria





         _dm2.sdsProducaoLeite.first;
         while not _dm2.sdsProducaoLeite.eof do
         begin


         _dm2.sdsProducaoLeite.next;
         end;


end;
procedure T_frmProducaoDiaria.btnabrirClick(Sender: TObject);
var
totalItensDerivados:integer;
begin
    filtro:='';

    datapesq.Date:=now;

    frm:=Tform.create(self);

    frm.Width:=510;
    frm.Height:=330;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

   

    pnlAbertura.Parent:=frm;
    pnlAbertura.visible:=true;
    pnlAbertura.Align:=alClient;
    frm.ShowModal;

    if(filtro='')then
    exit;




       _dm2.ConnecDm2.Connected;
       _dm2.cdsMovProducao.close;
       _dm2.sdsMovProducao.CommandText:='SELECT * FROM movproducaodiaria '+filtro;
       _dm2.sdsMovProducao.execsql;
       _dm2.cdsMovProducao.open;
       _dm2.cdsMovProducao.Refresh;


       if(_dm2.cdsMovproducao.RecordCount=0)then
       begin
           Application.MessageBox('Pré-produção não foi Encontrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
           lbldataprod.Caption:= '0000';
           lblfim.Caption:=  '0000';
           lbloperadorabertura.Caption:='0000';
           lbloperadorfim.Caption:='0000';
           lblfilial.Caption:='0000';
           txtnumero.Text:='0';

            gridDerivados.Visible:=false;
            DBGrid1.Visible:=false;
            DBGrid2.Visible:=false;
            DBGrid3.Visible:=false;
            DBGrid4.Visible:=false;
            pnlInfProducao.Enabled:=false;
            btnConfirmarDerivados.Enabled:=false;
            pnllote.Enabled:=false;

            exit;
       end;




       if(_dm2.cdsMovproducaopreproducaoconfirmada.AsString='N')then
       begin
          Application.MessageBox('Pré-produção ainda não foi encerrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
           lbldataprod.Caption:= '0000';
           lblfim.Caption:=  '0000';
           lbloperadorabertura.Caption:='0000';
           lbloperadorfim.Caption:='0000';
           lblfilial.Caption:='0000';
           txtnumero.Text:='0';

           gridDerivados.Visible:=false;
            DBGrid1.Visible:=false;
            DBGrid2.Visible:=false;
            DBGrid3.Visible:=false;
            DBGrid4.Visible:=false;
            pnlInfProducao.Enabled:=false;
            btnConfirmarDerivados.Enabled:=false;
            pnllote.Enabled:=false;

          exit;
       end;

     {
       if(_dm2.cdsMovproducaoencerrada.asstring='S')then
       begin
          Application.MessageBox('Produção já foi encerrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
          btnsalvar.Enabled:=false;
          btnencerrar.Enabled:=false;
          btnConfirmarDerivados.Enabled:=false;
          pnllote.Enabled:=false;

        DBGrid1.Visible:=true;
        DBGrid2.Visible:=true;
        DBGrid3.Visible:=true;
        DBGrid4.Visible:=true;
        gridDerivados.Visible:=true;
        gridDerivados.enabled:=false;
        exit;
       end;

      }


       txtnumero.Text:= _dm2.cdsMovproducaonumero.AsString;


        gridDerivados.Visible:=true;
        DBGrid1.Visible:=true;
        DBGrid2.Visible:=true;
        DBGrid3.Visible:=true;
        DBGrid4.Visible:=true;
        pnlInfProducao.Enabled:=true;
        btnsalvar.Enabled:=true;
        pnllote.Enabled:=true;
        txtcustoproducao.Value:=_dm2.cdsMovproducaototalcustoproducao.AsCurrency;
        txtcustoemb.value:= _dm2.cdsMovproducaocustoembalagens.ascurrency;
        btnencerrar.Enabled:=true;



        if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
        begin
         btnConfirmarDerivados.Caption:='Confirmar Derivados';
         btnDerivados2.Visible:=false;

        if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='S')then
        btnConfirmarDerivados.Enabled:=false
        else
        btnConfirmarDerivados.Enabled:=true;

        end
        else
        begin

        btnDerivados2.Visible:=true;

        if(_dm2.cdsMovproducaomateriarequisitada.AsString='S')then
        btnConfirmarDerivados.Enabled:=false
        else
        btnConfirmarDerivados.Enabled:=true;


        if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='S')then
        btnDerivados2.Enabled:=false
        else
        btnDerivados2.Enabled:=true;




        end;

        //_dm2.cdsMovproducaoitensderivadosconfirmados.AsString

       _dm2.ConnecDm2.Connected;
       _dm2.cdsProducaoLeite.close;
       _dm2.sdsProducaoLeite.CommandText:='SELECT * FROM dadosproducaoleite WHERE numeroproducao='+quotedstr(_dm2.cdsMovProducaonumero.AsString);
       _dm2.sdsProducaoLeite.execsql;
       _dm2.cdsProducaoLeite.open;
       _dm2.cdsProducaoLeite.Refresh;


       _dm2.ConnecDm2.Connected;
       _dm2.cdsProducaocreme.close;
       _dm2.sdsProducaocreme.CommandText:='SELECT * FROM dadosproducaocreme WHERE numeroproducao='+quotedstr(_dm2.cdsMovProducaonumero.AsString);
       _dm2.sdsProducaocreme.execsql;
       _dm2.cdsProducaocreme.open;
       _dm2.cdsProducaocreme.Refresh;


       _dm2.ConnecDm2.Connected;
       _dm2.cdsProducaomanteiga.close;
       _dm2.sdsProducaomanteiga.CommandText:='SELECT * FROM dadosproducaomanteiga WHERE numeroproducao='+quotedstr(_dm2.cdsMovProducaonumero.AsString);
       _dm2.sdsProducaomanteiga.execsql;
       _dm2.cdsProducaomanteiga.open;
       _dm2.cdsProducaomanteiga.Refresh;



        _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoitens.close;
       _dm2.sdsproducaoitens.CommandText:='SELECT * FROM producaoitens WHERE numeroproducao='+quotedstr(_dm2.cdsMovProducaonumero.AsString);
       _dm2.sdsproducaoitens.execsql;
       _dm2.cdsproducaoitens.open;
       _dm2.cdsproducaoitens.Refresh;






       _dm2.ConnecDm2.Connected;
       _dm2.qrPadrao.SQL.Clear();
       _dm2.qrPadrao.SQL.add('select count(1) as total from producaoderivados where numeroproducao='+quotedstr(_dm2.cdsMovProducaonumero.AsString));
       _dm2.qrPadrao.open;


       totalItensDerivados:= _dm2.qrPadrao.FieldByName('total').AsInteger;

       if(totalItensDerivados=0)then
       begin

       //   if(application.MessageBox('Incluir produtos a serem destinados ao estoque?','Pergunta',MB_ICONQUESTION+MB_YESNO)=Idyes)then
         //  begin

                       _dm2.cdsproducaoitens.first;
                       while not _dm2.cdsproducaoitens.eof do
                       begin

                          _dm2.ConnecDm2.Connected;
                          _dm2.qrPadrao.SQL.Clear;
                          _dm2.qrPadrao.SQL.add('INSERT INTO producaoderivados (numeroproducao,codigofilial,codigopreproducao,codigoderivado,produtoderivado,quantidadeembalagem,codigoembalagem,quantidade) SELECT ');
                          _dm2.qrPadrao.SQL.add(quotedstr(_dm2.cdsMovProducaonumero.AsString)+',');
                          _dm2.qrPadrao.SQL.add(quotedstr(glb_filial)+',');
                          _dm2.qrPadrao.SQL.add(quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+',');
                          _dm2.qrPadrao.SQL.add('codigo,');
                          _dm2.qrPadrao.SQL.add('descricao,');
                          _dm2.qrPadrao.SQL.add('quantidadeembalagem,');
                          _dm2.qrPadrao.SQL.add('codigoembalagem,');
                          _dm2.qrPadrao.SQL.add(quotedstr('0.00')+' FROM  produtosembalagens WHERE codprodpreproducao = '+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' and codigofilial='+quotedstr(glb_filial));
                          _dm2.qrPadrao.Execsql;


                       _dm2.cdsproducaoitens.next;
                       end;

          // end

       end;

       verDerivados(_dm2.cdsproducaoitenscodigo.AsString);
       lbldataprod.Caption:=  _dm2.cdsMovproducaodata.AsString+'  '+_dm2.cdsMovproducaohora.AsString;
       lblfim.Caption:=  _dm2.cdsMovproducaodatafinalizacao.AsString+'  '+_dm2.cdsMovproducaohorafinalizacao.Text;
       lbloperadorabertura.Caption:=_dm2.cdsMovproducaooperador.AsString;
       lbloperadorfim.Caption:=_dm2.cdsMovproducaooperadorfinalizacao.AsString;
       lblfilial.Caption:=_dm2.cdsMovproducaocodigofilial.AsString;
        gridDerivados.Enabled:=true;
        if(_dm.cdsConfigLaticinioloteindividual.AsString='N')then
        begin

        txtlote.Text:=  _dm2.cdsMovproducaolote.AsString;
        txtvalidade.Date:=_dm2.cdsMovproducaovalidadelote.AsDateTime;

        end
        else
        begin

        lbllote.caption:=  _dm2.cdsMovproducaolote.AsString;
        lblvencimento.caption:=_dm2.cdsMovproducaovalidadelote.asstring;

        end;

       if(_dm2.cdsMovproducaoencerrada.asstring='S')then
       begin
          Application.MessageBox('Produção já foi encerrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
          btnsalvar.Enabled:=false;
          btnencerrar.Enabled:=false;
          btnConfirmarDerivados.Enabled:=false;
          pnllote.Enabled:=false;

          DBGrid1.Visible:=true;
          DBGrid2.Visible:=true;
          DBGrid3.Visible:=true;
          DBGrid4.Visible:=true;
          gridDerivados.Visible:=true;
          gridDerivados.enabled:=false;
          exit;
       end;


end;

procedure T_frmProducaoDiaria.btnencerrarClick(Sender: TObject);
var
numeroNf,SQLcustos,sql:string;
percentualRateio,custounitario,custototal,quantidade:currency;
begin




//VALIDAÇÕES ANTES DA FINALIZAÇÃO
{$REGION VALIDACOES}

    //PROCEDURE VALIDA EMBALAGENS,COMPOSICAO E OS PRODUTOS PARA LEITE, CREME E MANTEIGA
     validarDadosProducao(_dm2.cdsMovproducaonumero.AsString);

    if( glb_continuar='N')then
    exit;

   // if(application.MessageBox('Encerrar produção diária?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
   // exit;

    //VERIFICA SE TEM PERMISSÃO
    glb_campo:='encerrarproducao';

    _frmLogin:=T_frmLogin.Create(self);
        _frmLogin.lblfuncao.Caption:='Encerrar produção diária';
    _frmLogin.ShowModal;
    _frmLogin.Release;

    if(glb_permissao='N')then
    exit;



    //VERIFICA OS LOTES E VENCIMENTOS


if(_dm.cdsConfigLaticinioloteindividual.AsString='N')then
begin

     if(_dm2.cdsMovproducaolote.asstring='0') or (trim(_dm2.cdsMovproducaolote.asstring)='')then
     begin
              if(txtlote.Text='') or (txtlote.Text='0')then
              begin

                      if(application.MessageBox('Não foi informado o lote do produto. Deseja usar o número da produção como lote?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
                      begin
                         application.MessageBox('Não é permitido finalizar uma produção sem lote!','Informação',MB_ICONEXCLAMATION+MB_ok);
                         exit;
                      end
                      else
                      begin
                          txtlote.Text:=_dm2.cdsMovproducaonumero.AsString;

                         _dm2.ConnecDm2.Connected:=false;
                         _dm2.qrPadrao.SQL.Clear;
                         _dm2.qrPadrao.sql.add('update movproducaodiaria set lote='+quotedstr(txtlote.Text){+', validadelote='+quotedstr(formatdatetime('yyyy-mm-dd',txtvalidade.Date))}+' where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
                         _dm2.qrPadrao.execsql;

                      end;


              end;

     end;


     if(_dm2.cdsMovproducaovalidadelote.Asstring='30/12/1899') then
     begin

      if(txtvalidade.Text='  /  /    ')then
      begin

          if(application.MessageBox('Não foi informada a validade do produto. Deseja informar a validade de 30 dias?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
              begin
                 application.MessageBox('Não é permitido finalizar uma produção sem validade!','Informação',MB_ICONEXCLAMATION+MB_ok);
                 exit;
              end
              else
              begin

                 _dm2.ConnecDm2.Connected:=false;
                 _dm2.qrPadrao.SQL.Clear;
                 _dm2.qrPadrao.sql.add('update movproducaodiaria set  validadelote=DATE_ADD(CURRENT_DATE,INTERVAL 1 MONTH) where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
                 _dm2.qrPadrao.execsql;

              end;



      end;

     end;


end
else   //lote
begin

                _dm2.ConnecDm2.Connected:=false;
                 _dm2.qrPadrao.SQL.Clear;
                 _dm2.qrPadrao.sql.add('select count(1) as contPrdSemLote from producaoitens where (lote="0" or lote ="") and  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
                 _dm2.qrPadrao.open;

                 if(_dm2.qrPadrao.fieldbyname('contPrdSemLote').AsInteger>0)then
                 begin
                   application.MessageBox('Existe produtos sem lote informado!','Alerta',MB_ICONEXCLAMATION+MB_ok);
                    exit;
                 end;



end;

  if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString<>'S')then
  begin
      application.MessageBox('Confirme a produção dos itens derivados (Embalagens)!','Informação',MB_ICONEXCLAMATION+MB_ok);
      exit;
  end;


                 _dm2.ConnecDm2.Connected:=false;
                 _dm2.qrPadrao.SQL.Clear;
                 _dm2.qrPadrao.sql.add('select count(1) as total from producaomovembalagem where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigofilial='+quotedstr(glb_filial));
                 _dm2.qrPadrao.open;


  if( _dm2.qrPadrao.fieldbyname('total').Asinteger=0)then
  begin
      application.MessageBox('Para continuar, faça a requisição das embalagens!','Informação',MB_ICONEXCLAMATION+MB_ok);
      exit;
  end;

//INICIO DA FINALIZAÇÃO DA PRODUÇÃO

 {$ENDREGION VALIDACOES}



//ENCERRAMENTO DA PRODUÇÃO
 {$REGION ENCERRAR}


   //obetem os custos
   SQLcustos:='  SELECT m.codigoproduto,m.quantidade,m.quantidademateria,m.totalmateriautilizada,m.custounitario,p.quantidadeleite,p.quantidadecreme,p.quantidademanteiga,'+
      '  (m.totalmateriautilizada * m.custounitario) AS custoinsumos, '+
      '  p.codigo,p.produto,p.quantidadeproduzida,p.codigofilial,( '+
      '  SUM(m.totalmateriautilizada * m.custounitario)'+
      '  + (p.quantidadeleite *(SELECT custo FROM produtos WHERE codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+'))'+
      '  + (p.quantidadecreme *(SELECT custo FROM produtos WHERE codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+'))'+
      '  + (p.quantidademanteiga *(SELECT custo FROM produtos WHERE codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+'))'+
      '  ) AS custo_insumos_leite_Creme_Manteiga '+
      '   FROM producaomovmateria AS m, producaoitens AS p '+
      '   WHERE m.idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
      '   AND p.numeroproducao=m.idproducao'+
      '   AND p.codigo=m.codigoproduto '+
      '   GROUP BY m.codigoproduto';




  //1- CRIA NOTA DE ENTRADA PARA OS DERIVADOS

   //Gera o moventradas CABEÇALHO DA NOTA
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add('INSERT INTO moventradas(');
   _dm.qrPadrao.SQL.Add('codigofornecedor,fornecedor,nf,dataemissao,dataentrada,data,valorprodutos,valornota,codigofilial,operacao,serie,subserie,');
   _dm.qrPadrao.SQL.Add('importada,especie,ufemitente,horaemissao,horaentrada,modelonf,situacaonf,cfopentrada,emitente,exportarfiscal)');
   _dm.qrPadrao.SQL.Add(' VALUES (');
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsConfigLaticiniocodfornecedorentrada.asstring)+',');//codfornecedor
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsConfigLaticiniofornecedorentrada.asstring)+',');//fornecedor
   _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+',');//nf
   _dm.qrPadrao.SQL.Add('current_date,');//dataemissao
   _dm.qrPadrao.SQL.Add('current_date,');//dataentrada
   _dm.qrPadrao.SQL.Add('current_date,');//data
  if(_dm.cdsConfigLaticinioadicionarqtdderivados.asstring='S')then
  begin
   _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtcustoproducao.Value+txtcustoemb.Value))+',');//valorprodutos
   _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtcustoproducao.Value+txtcustoemb.Value))+',');//valornota
   end
   else
   begin
   _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtcustoproducao.Value))+',');//valornota
   _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtcustoproducao.Value))+',');//valornota

   end;

   _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');//codigofilial
   _dm.qrPadrao.SQL.Add(quotedstr('1.926')+',');//operacao
   _dm.qrPadrao.SQL.Add(quotedstr('1')+',');//serie
   _dm.qrPadrao.SQL.Add(quotedstr('1')+',');//sibserie
   _dm.qrPadrao.SQL.Add(quotedstr('N')+',');//importada
   _dm.qrPadrao.SQL.Add(quotedstr('NF')+',');//especie
   _dm.qrPadrao.SQL.Add(quotedstr('PE')+',');//ufemitent
   _dm.qrPadrao.SQL.Add('current_time,');//horaemissao
   _dm.qrPadrao.SQL.Add('current_time,');//horaentrada
   _dm.qrPadrao.SQL.Add(quotedstr('01')+',');//modelonf
   _dm.qrPadrao.SQL.Add(quotedstr('00')+',');//situacaonf
   _dm.qrPadrao.SQL.Add(quotedstr('1.926')+',');//cfopentrada
   _dm.qrPadrao.SQL.Add(quotedstr('P')+',');//emitente
   _dm.qrPadrao.SQL.Add(quotedstr('N')+')');//exportarfiscal
   _dm.qrPadrao.execsql;


   //2-Gera dados em entradas
   //pega número da última entrada
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add('select numero from moventradas where codigofilial='+quotedstr(glb_filial));
   _dm.qrPadrao.SQL.Add(' and nf='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
   _dm.qrPadrao.SQL.Add(' and fornecedor='+quotedstr(_dm.cdsConfigLaticiniofornecedorentrada.AsString));
   _dm.qrPadrao.SQL.Add(' and codigofornecedor='+quotedstr(_dm.cdsConfigLaticiniocodfornecedorentrada.AsString)+' limit 1');
   _dm.qrPadrao.open;



   numeroNf:= _dm.qrPadrao.FieldByName('numero').AsString;


   //CÁLCULO DOS CUSTOS
   _dm.ConnecDm.Connected:=false;
   _dm.qrPadrao2.SQL.Clear;
   _dm.qrPadrao2.SQL.Add(SQLcustos);
   _dm.qrPadrao2.open;


   _dm.qrPadrao2.first;
   while not _dm.qrPadrao2.eof do
   begin

       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsProducaoDerivados.close;
       _dm2.sdsProducaoDerivados.CommandText:='SELECT *,(SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigopreproducao='+quotedstr(_dm.qrPadrao2.FieldByName('codigo').AsString)+' and quantidade>0';
       _dm2.sdsProducaoDerivados.execsql;
       _dm2.cdsProducaoDerivados.open;
       _dm2.cdsProducaoDerivados.refresh;


    if(_dm.cdsConfigLaticinioadicionarqtdderivados.asstring='S')then
    begin
    //Lançamento no estoque se for em F7 estiver marcada a flag adicionar estoque nos derivados
         {$Region}    //add em derivados
            _dm2.cdsProducaoDerivados.First;
            while not _dm2.cdsProducaoDerivados.Eof do
             begin

             if(_dm2.cdsProducaoDerivadosquantidade.AsCurrency>0)then
             begin

           _dm.qrPadrao3.SQL.Clear;
           _dm.qrPadrao3.SQL.Add('SELECT SUM(custototal) AS custoembalagem, codigoderivado,descricaoderivado FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigoderivado='+quotedstr(_dm2.cdsProducaoDerivadoscodigoderivado.AsString)+' AND codigofilial='+quotedstr(glb_filial));
           _dm.qrPadrao3.Open;


           quantidade:=  _dm2.cdsProducaoDerivadosquantidade.AsCurrency * _dm2.cdsProducaoDerivadosquantidadeembalagem.AsCurrency;
           percentualRateio:=  ((( _dm2.cdsProducaoDerivadosquantidade.AsCurrency *  _dm2.cdsProducaoDerivadosquantidadeembalagem.AsCurrency ) / _dm.qrPadrao2.FieldByName('quantidade').AsCurrency ) * 100);
           custounitario:=    ( (strtocurr(formatcurr('###,0.000',percentualRateio)) / 100) * _dm.qrPadrao2.FieldByName('custo_insumos_leite_Creme_Manteiga').AsCurrency  ) / _dm2.cdsProducaoDerivadosquantidade.AsCurrency;
         //  custounitario:=    ( (percentualRateio / 100) * _dm.qrPadrao2.FieldByName('custo_insumos_leite_Creme_Manteiga').AsCurrency  ) / _dm2.cdsProducaoDerivadosquantidade.AsCurrency;

           custounitario:=custounitario + ( _dm.qrPadrao3.FieldByName('custoembalagem').AsCurrency / _dm2.cdsProducaoDerivadosquantidade.AsCurrency);



            _dm.qrPadrao.SQL.Clear;
            _dm.qrPadrao.SQL.Add('INSERT INTO entradas(');
            _dm.qrPadrao.SQL.Add('numero,codigo,descricao,lancada,fornecedor,quantidade,nf,custo,totalitem,data,icms,codigofilial,');
            _dm.qrPadrao.SQL.Add('qtdprateleiras,tributacao,cfopentrada,modelonf,ratdesconto,custocalculado,exportarfiscal');
            _dm.qrPadrao.SQL.Add(') values (');
            _dm.qrPadrao.SQL.Add(quotedstr(numeroNf)+','); //numero
            _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProducaoDerivadoscodigoderivado.AsString)+','); //codigo
            _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsProducaoDerivadosprodutoderivado.AsString)+','); //descricao
            _dm.qrPadrao.SQL.Add(quotedstr('N')+','); //lancada
            _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsConfigLaticiniofornecedorentrada.AsString)+','); //fornecedor
            _dm.qrPadrao.SQL.Add(quotedstr(currtostr( _dm2.cdsProducaoDerivadosquantidade.AsCurrency))+','); //quantidade
            _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //nf
            _dm.qrPadrao.SQL.Add(quotedstr(currtostr(custounitario))+','); //custo
            _dm.qrPadrao.SQL.Add(quotedstr(currtostr(custounitario*_dm2.cdsProducaoDerivadosquantidade.AsCurrency))+','); //totalitem
            _dm.qrPadrao.SQL.Add('current_date,'); //data
            _dm.qrPadrao.SQL.Add(quotedstr('00.00')+','); //icms
            _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+','); //codigofilial
             _dm.qrPadrao.SQL.Add(quotedstr(currtostr(_dm2.cdsProducaoDerivadosquantidade.AsCurrency ))+','); //qtdprateleiras
            _dm.qrPadrao.SQL.Add(quotedstr('000')+','); //tributacao
            _dm.qrPadrao.SQL.Add(quotedstr('1.102')+','); //cfopentrada
            _dm.qrPadrao.SQL.Add(quotedstr('01')+','); //modelonf
            _dm.qrPadrao.SQL.Add(quotedstr('0.00')+','); //ratdesconto
            _dm.qrPadrao.SQL.Add(quotedstr(currtostr(custounitario))+','); //custocalculado
            _dm.qrPadrao.SQL.Add(quotedstr('N')+')');//exportarfiscal

            _dm.qrPadrao.execsql;

             end;

             _dm2.cdsProducaoDerivados.Next;

             end;
                  {$endregion}

    end     //fim do if para add derivados
       else
       begin

    //Lançamento no estoque se for em F7 NÃO estiver marcada a flag adicionar estoque nos derivados
         {$REGION}
           _dm.qrPadrao3.SQL.Clear;
           _dm.qrPadrao3.SQL.Add('SELECT sum(custounitario * totalmateriautilizada) AS custo FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaocodigofilial.AsString)+' and codigoproduto='+quotedstr(_dm.qrPadrao2.FieldByName('codigo').AsString));
           _dm.qrPadrao3.Open;


           quantidade:=  _dm.qrPadrao2.FieldByName('quantidadeproduzida').AsCurrency;
           custounitario:=(_dm.qrPadrao3.FieldByName('custo').AsCurrency +  _dm.qrPadrao2.FieldByName('custo_insumos_leite_Creme_Manteiga').AsCurrency) / _dm.qrPadrao2.FieldByName('quantidadeproduzida').AsCurrency;



         //aqui lanças os tiens de preprodução
             _dm.qrPadrao.SQL.Clear;
            _dm.qrPadrao.SQL.Add('INSERT INTO entradas(');
            _dm.qrPadrao.SQL.Add('numero,codigo,descricao,lancada,fornecedor,quantidade,nf,custo,totalitem,data,icms,codigofilial,');
            _dm.qrPadrao.SQL.Add('qtdprateleiras,tributacao,cfopentrada,modelonf,ratdesconto,custocalculado,exportarfiscal');
            _dm.qrPadrao.SQL.Add(') values (');
            _dm.qrPadrao.SQL.Add(quotedstr(numeroNf)+','); //numero
            _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('codigo').AsString)+','); //codigo
            _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('produto').AsString)+','); //descricao
            _dm.qrPadrao.SQL.Add(quotedstr('N')+','); //lancada
            _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsConfigLaticiniofornecedorentrada.AsString)+','); //fornecedor
            _dm.qrPadrao.SQL.Add(quotedstr(currtostr(_dm.qrPadrao2.FieldByName('quantidadeproduzida').AsCurrency))+','); //quantidade
            _dm.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //nf
            _dm.qrPadrao.SQL.Add(quotedstr(currtostr(custounitario))+','); //custo
             _dm.qrPadrao.SQL.Add(quotedstr(currtostr(quantidade*custounitario))+','); //totalitem
            // _dm.qrPadrao.SQL.Add(quotedstr(currtostr(custounitario*_dm2.cdsProducaoDerivadosquantidade.AsCurrency))+','); //totalitem
            _dm.qrPadrao.SQL.Add('current_date,'); //data
            _dm.qrPadrao.SQL.Add(quotedstr('00.00')+','); //icms
            _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+','); //codigofilial
             _dm.qrPadrao.SQL.Add(quotedstr(currtostr(_dm2.cdsProducaoDerivadosquantidade.AsCurrency ))+','); //qtdprateleiras
            _dm.qrPadrao.SQL.Add(quotedstr('000')+','); //tributacao
            _dm.qrPadrao.SQL.Add(quotedstr('1.102')+','); //cfopentrada
            _dm.qrPadrao.SQL.Add(quotedstr('01')+','); //modelonf
            _dm.qrPadrao.SQL.Add(quotedstr('0.00')+','); //ratdesconto
            _dm.qrPadrao.SQL.Add(quotedstr(currtostr(custounitario))+','); //custocalculado
            _dm.qrPadrao.SQL.Add(quotedstr('N')+')');//exportarfiscal

            _dm.qrPadrao.execsql;
              {$ENDREGION}
       end;

       _dm.qrPadrao2.next;


  end;


         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao2.SQL.Clear;
         _dm.qrPadrao2.SQL.Add('CALL ProcessarEntrada('+quotedstr(glb_filial)+','+quotedstr(numeroNf)+','+quotedstr(_dm.cdsConfigLaticinioalterarcustoproducao.AsString )+','+quotedstr(glb_usuario)+',"0","0","0"); ');
         _dm.qrPadrao2.execsql;


 //2-BAIXA DOS INSUMOS
 if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
   begin
         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao.SQL.Clear;
         _dm.qrPadrao.SQL.Add('SELECT codigomateria,descricaomateria,SUM(totalmateriautilizada) as materiautilizada FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigofilial='+glb_filial+' GROUP BY codigomateria');
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
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',_dm2.cdsProducaoLeiteutilizado.AsCurrency))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();

            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',_dm2.cdsProducaocremeutilizado.AsCurrency))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();

            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',_dm2.cdsProducaoManteigadestinado.AsCurrency))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();



 end;

  //3-LANÇA EM PERDAS AS EMBALAGENS ADICIONAIS

  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('SELECT COUNT(1) as total  FROM producaomovembalagem WHERE tipo ="adicional" AND  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm.qrPadrao.open();


  if(_dm.qrPadrao.FieldByName('total').AsInteger > 0)then
  begin


  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('INSERT INTO contperdas(DATA,encerrada,codigofilial,operador,ip,nf,nfserie,cfop,total,tipo) VALUES ( '+
  'CURRENT_DATE,"S",'
  +quotedstr(glb_filial)+','
  +quotedstr(glb_usuario)+','
  +quotedstr(glb_ip)+','
  +quotedstr('0')+','
  +quotedstr('0')+','
  +quotedstr('6.102')+','
  +quotedstr('0.00')+','
  +quotedstr('P')+')');
  _dm.qrPadrao.ExecSQL();


  _dm.ConnecDm.Connected:=false;
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add(' INSERT INTO produtosperdas (encerrada,numero,codigofilial,codigo,produto,quantidade,DATA,operador,destino,observacao,custo,preco,tipo,grupo,subgrupo,situacao,fornecedor)'+
   ' SELECT "S",(SELECT numero FROM contperdas WHERE operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip)+' AND DATA=CURRENT_DATE ORDER BY numero DESC LIMIT 1),codigofilial,'+
   ' (SELECT codigo FROM produtos WHERE codigo=codigoembalagem),'+
   ' (SELECT descricao FROM produtos WHERE codigo=codigoembalagem),'+
   ' qtdutilizado,'+
   ' CURRENT_DATE,'+
      quotedstr(glb_usuario)+','+
      quotedstr('EMBALAGENS ADICIONAIS DE PRODUCAO')+','+
      quotedstr('PERDA NA PRODUÇÃO N°'+_dm2.cdsMovproducaonumero.AsString)+','+
   ' (SELECT custo FROM produtos WHERE codigo=codigoembalagem),'+
   ' (SELECT precovenda FROM produtos WHERE codigo=codigoembalagem),'+
   '  "P",'+
   ' (SELECT grupo FROM produtos WHERE codigo=codigoembalagem),'+
   ' (SELECT subgrupo FROM produtos WHERE codigo=codigoembalagem),'+
   ' (SELECT situacao FROM produtos WHERE codigo=codigoembalagem),'+
   ' "" FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigofilial='+quotedstr(glb_filial)+' AND tipo="Adicional" ');



   _dm.qrPadrao.ExecSQL;




                _dm2.ConnecDm2.Connected:=false;
                _dm2.cdsprodmovembalagem.Close;
                _dm2.sdsprodmovembalagem.CommandText:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               '  descricaoembalagem,  qtdnecessaria,  custounitario,  custototal, qtdproduzido,  qtdutilizado,  tipo,  solicitado,'+
               '  operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               '  FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
               '  AND solicitado="S"  ORDER BY tipo desc';
                _dm2.sdsprodmovembalagem.ExecSQL();
                _dm2.cdsprodmovembalagem.Open;
                _dm2.cdsprodmovembalagem.Refresh;


                 _dm2.cdsprodmovembalagem.First;
                while not  _dm2.cdsprodmovembalagem.Eof do
                begin
                    //altera a qtdanterior nas embalagens produção

                    _dm.qrPadrao.SQL.Clear;
                    _dm.qrPadrao.SQL.Add('UPDATE producaomovembalagem SET qtdanterior = (select quantidade from '+glb_produtos+' where codigo ='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+' ),'+
                     ' qtdatual=(select quantidade from '+glb_produtos+' where codigo ='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+' ) - '+quotedstr(_dm2.cdsprodmovembalagemqtdutilizado.Asstring)+', datafinalizacao=current_date, horafinalizacao=current_time WHERE codigoembalagem='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+
                     ' and numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
                    _dm.qrPadrao.ExecSQL();



                    //altera estoque de produtos
                    _dm.qrPadrao.SQL.Clear;
                    _dm.qrPadrao.SQL.Add('UPDATE '+glb_produtos+' SET quantidade = quantidade-'+quotedstr(_dm2.cdsprodmovembalagemqtdutilizado.Asstring)+' WHERE codigo='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+' and codigofilial='+quotedstr(glb_filial) );
                    _dm.qrPadrao.ExecSQL();


                 _dm2.cdsprodmovembalagem.Next;
                end;






  end;

   //exclui os itens derivados confirmados que não tem quantidade
    _dm.qrpadrao2.sql.clear;
    _dm.qrpadrao2.sql.add(' delete from producaoderivados where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and quantidade='+quotedstr('0.00'));
    _dm.qrpadrao2.ExecSQL();



     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.SQL.Clear;
     _dm.qrPadrao.SQL.Add('UPDATE movproducaodiaria SET operadorfinalizacao='+quotedstr(glb_usuario)+', datafinalizacao=CURRENT_DATE, horafinalizacao=CURRENT_TIME, encerrada="S"  WHERE   numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
     _dm.qrPadrao.ExecSQL();


     //_dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.SQL.Clear;
     _dm.qrPadrao.SQL.Add('UPDATE producaomovmateria SET finalizado='+quotedstr('S')+', datafinalizacao=CURRENT_DATE  WHERE   idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
     _dm.qrPadrao.ExecSQL();



      _dm2.cdsMovproducao.Close;
      _dm2.cdsMovproducao.Open;
      _dm2.cdsMovproducao.Refresh;

      application.MessageBox('Produção finalizada com sucesso!','Informação',MB_ICONEXCLAMATION+MB_ok);


      lblfim.Caption:=  _dm2.cdsMovproducaodatafinalizacao.AsString+'  '+_dm2.cdsMovproducaohorafinalizacao.Text;
      lbloperadorfim.Caption:=_dm2.cdsMovproducaooperadorfinalizacao.AsString;
      btnencerrar.Enabled:=false;



 {$ENDREGION ENCERRAR}

end;

procedure T_frmProducaoDiaria.BitBtn1Click(Sender: TObject);
begin
//   filtro:=' WHERE data='+quotedstr(formatdatetime('yyyy-mm-dd',dataPesq.date));
   filtro:=' WHERE numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString);


   pnlAbertura.Visible:=false;
   frm.ModalResult:=-1;
end;

procedure T_frmProducaoDiaria.btnsalvarClick(Sender: TObject);
var
I:integer;
begin

    if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='S')then
    begin
      application.MessageBox('A produção dos derivados já foi confirmada!','Alerta',MB_ICONEXCLAMATION+MB_ok);
      verDerivados(_dm2.cdsproducaoitenscodigo.AsString);
      exit;
    end;


   // if(application.MessageBox('Deseja Salvar?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
  //  exit;

    for I := 1 to gridDerivados.RowCount-1 do
    begin

      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrPadrao.SQL.Clear;
      _dm2.qrPadrao.SQL.Add('update producaoderivados set quantidade='+quotedstr(gridDerivados.Cells[3,I])+{', embadicionais='+quotedstr(gridDerivados.Cells[4,I])+}' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
       ' and codigopreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' and codigoderivado ='+quotedstr(gridDerivados.Cells[0,I]));
      _dm2.qrPadrao.ExecSQL();

     end;


   if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
   begin
      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrPadrao.SQL.Clear;
      _dm2.qrPadrao.SQL.Add('update producaoitens set quantidadeproduzida=(SELECT SUM(quantidadeembalagem*quantidade) AS qtdproduzido  FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigopreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+') where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
       ' and codigo='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString));

      _dm2.qrPadrao.ExecSQL();

     // _dm2.cdsproducaoitens.Close;
      _dm2.cdsproducaoitens.refresh;
   end;
      // verDerivados(_dm2.cdsproducaoitenscodigo.AsString);

end;

procedure T_frmProducaoDiaria.btnConfirmarDerivadosClick(Sender: TObject);
var
sqlInsert,sqlcustosleite,sqlcustoscreme,sqlcustosmanteiga:string;
quantidadeProduzida,custoCreme,CustoManteiga,totalcustoproducao,custoLeite,qtdleite,qtdcreme,qtdmanteiga:currency;//,totalcustoproducao:currency;
begin

    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao2.SQL.Clear;
    _dm2.qrPadrao2.SQL.add('select count(1) as total from producaomovmateria where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm2.qrPadrao2.open;

     if(_dm2.qrPadrao2.FieldByName('total').AsInteger>0)then
         begin
             if(application.MessageBox('A matéria pode já ter sido requisitada em outra modalidade de produção! Deseja refazer a requisição nessa modalidade de produção?','Crítica',MB_ICONEXCLAMATION+MB_yesno)=ID_YES)then
             begin
              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrPadrao2.SQL.Clear;
              _dm2.qrPadrao2.SQL.add('delete from producaomovmateria where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
              _dm2.qrPadrao2.execsql;

               _dm2.ConnecDm2.Connected:=false;
                _dm2.qrPadrao.SQL.Clear;
                _dm2.qrPadrao.sql.add('update movproducaodiaria set itensderivadosconfirmados='+quotedstr('N')+', totalcustoproducao="0.00", materiarequisitada="N" where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
                _dm2.qrPadrao.execsql;

             end
             else
               exit;
     end;


//if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
//begin
    sqlcustosleite:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoLeite FROM resumoprodleite    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
    sqlcustoscreme:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoCreme FROM resumoprodcreme    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
    sqlcustosmanteiga:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoManteiga FROM resumoprodmanteiga    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);

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


//end;



    if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
    begin

       if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='S')then
       exit;

    end
    else
    begin

        if(_dm2.cdsMovproducaomateriarequisitada.AsString='S')then
        exit;

    end;


    if(application.MessageBox('Após a confirmação não será possível alterar os itens da produção. Deseja continuar?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
    exit;

    glb_campo:='confirmarproducaoitens';

    _frmLogin:=T_frmLogin.Create(self);
    _frmLogin.lblfuncao.Caption:='Confirmar produção de derivados';
    _frmLogin.ShowModal;
    _frmLogin.Release;

    if(glb_permissao='N')then
    exit;






   _dm2.cdsproducaoitens.First;
   while not _dm2.cdsproducaoitens.eof do
   begin


  // _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT quantidadeajustada FROM resumoprodleite WHERE  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigo='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' and codigofilial="'+glb_filial+'"');
   _dm2.qrPadrao2.open;
    qtdleite:= _dm2.qrPadrao2.FieldByName('quantidadeajustada').AsCurrency;



    // _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT quantidadeajustada FROM resumoprodcreme WHERE  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigo='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' and codigofilial="'+glb_filial+'"');
   _dm2.qrPadrao2.open;
    qtdcreme:= _dm2.qrPadrao2.FieldByName('quantidadeajustada').AsCurrency;



    // _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT quantidadeajustada FROM resumoprodmanteiga WHERE  numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigo='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' and codigofilial="'+glb_filial+'"');
   _dm2.qrPadrao2.open;
    qtdmanteiga:= _dm2.qrPadrao2.FieldByName('quantidadeajustada').AsCurrency;




 //==============================================================================================================
               sqlInsert:=' INSERT INTO producaomovmateria(codigofilial,idproducao,codigoproduto,codigomateria,descricaomateria,quantidade,quantidademateria,custounitario,data,totalmateriautilizada,operador)'+
                          ' SELECT ';

              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrPadrao.SQL.Clear;
              _dm2.qrPadrao.sql.add(sqlInsert);
              _dm2.qrPadrao.sql.add(quotedstr(glb_filial)+','); // codigofilial
              _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //  idproducao
              _dm2.qrPadrao.sql.add('codpreproducao,'); //   codigoproduto
              _dm2.qrPadrao.sql.add('codigo,');  // codigomateria
              _dm2.qrPadrao.sql.add('produto,');  //  descricaomateria
              _dm2.qrPadrao.sql.add(quotedstr(formatcurr('###0.000',_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency))+','); //  quantidade
             if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('quantidade,') //quantidademateria  quando o parâmetro for por KG
              else
              _dm2.qrPadrao.sql.add(quotedstr('0.00')+','); //quantidademateria     quando o parâmetro for leite utilizado

              _dm2.qrPadrao.sql.add('custo,'); // custounitario
              _dm2.qrPadrao.sql.add('current_date,');//  data

              //_dm2.qrPadrao.sql.add('(quantidade * '+currtostr(quantidadeProduzida)+'),');
              if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('(quantidade * '+currtostr(_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency)+'),')// total utilizado de materia quando cácluculo for por KG produzida
              else
              _dm2.qrPadrao.sql.add('((quantidade / parametroleite) * '+formatcurr('##0.00',qtdleite)+' ),'); //  quantidade   utilizado de materia

              _dm2.qrPadrao.sql.add(quotedstr(glb_usuario)+' FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND tipoinsumo ="outros" '+
               ' AND tipoparametro ="L" ');  //  operador
              _dm2.qrPadrao.execsql;
 //==============================================================================================================

               sqlInsert:=' INSERT INTO producaomovmateria(codigofilial,idproducao,codigoproduto,codigomateria,descricaomateria,quantidade,quantidademateria,custounitario,data,totalmateriautilizada,operador)'+
                          ' SELECT ';

              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrPadrao.SQL.Clear;
              _dm2.qrPadrao.sql.add(sqlInsert);
              _dm2.qrPadrao.sql.add(quotedstr(glb_filial)+','); // codigofilial
              _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //  idproducao
              _dm2.qrPadrao.sql.add('codpreproducao,'); //   codigoproduto
              _dm2.qrPadrao.sql.add('codigo,');  // codigomateria
              _dm2.qrPadrao.sql.add('produto,');  //  descricaomateria
              _dm2.qrPadrao.sql.add(quotedstr(formatcurr('###0.000',_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency))+','); //  quantidade
             if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('quantidade,') //quantidademateria  quando o parâmetro for por KG
              else
              _dm2.qrPadrao.sql.add(quotedstr('0.00')+','); //quantidademateria     quando o parâmetro for leite utilizado

              _dm2.qrPadrao.sql.add('custo,'); // custounitario
              _dm2.qrPadrao.sql.add('current_date,');//  data

              //_dm2.qrPadrao.sql.add('(quantidade * '+currtostr(quantidadeProduzida)+'),');
              if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('(quantidade * '+currtostr(_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency)+'),')// total utilizado de materia quando cácluculo for por KG produzida
              else
              _dm2.qrPadrao.sql.add('((quantidade / parametroleite) * '+formatcurr('##0.00',qtdcreme)+' ),'); //  quantidade   utilizado de materia

              _dm2.qrPadrao.sql.add(quotedstr(glb_usuario)+' FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND tipoinsumo ="outros" '+
               ' AND tipoparametro ="C" ');  //  operador
              _dm2.qrPadrao.execsql;
 //==============================================================================================================
              sqlInsert:=' INSERT INTO producaomovmateria(codigofilial,idproducao,codigoproduto,codigomateria,descricaomateria,quantidade,quantidademateria,custounitario,data,totalmateriautilizada,operador)'+
                          ' SELECT ';

              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrPadrao.SQL.Clear;
              _dm2.qrPadrao.sql.add(sqlInsert);
              _dm2.qrPadrao.sql.add(quotedstr(glb_filial)+','); // codigofilial
              _dm2.qrPadrao.sql.add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //  idproducao
              _dm2.qrPadrao.sql.add('codpreproducao,'); //   codigoproduto
              _dm2.qrPadrao.sql.add('codigo,');  // codigomateria
              _dm2.qrPadrao.sql.add('produto,');  //  descricaomateria
              _dm2.qrPadrao.sql.add(quotedstr(formatcurr('###0.000',_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency))+','); //  quantidade
             if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('quantidade,') //quantidademateria  quando o parâmetro for por KG
              else
              _dm2.qrPadrao.sql.add(quotedstr('0.00')+','); //quantidademateria     quando o parâmetro for leite utilizado

              _dm2.qrPadrao.sql.add('custo,'); // custounitario
              _dm2.qrPadrao.sql.add('current_date,');//  data

              //_dm2.qrPadrao.sql.add('(quantidade * '+currtostr(quantidadeProduzida)+'),');
              if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
              _dm2.qrPadrao.sql.add('(quantidade * '+currtostr(_dm2.cdsproducaoitensquantidadeproduzida.AsCurrency)+'),')// total utilizado de materia quando cácluculo for por KG produzida
              else
              _dm2.qrPadrao.sql.add('((quantidade / parametroleite) * '+formatcurr('##0.00',qtdmanteiga)+' ),'); //  quantidade   utilizado de materia

              _dm2.qrPadrao.sql.add(quotedstr(glb_usuario)+' FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND tipoinsumo ="outros" '+
               ' AND tipoparametro ="M" ');  //  operador
              _dm2.qrPadrao.execsql;
 //==============================================================================================================



   _dm2.cdsproducaoitens.Next;

   end;





   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT SUM(totalmateriautilizada * custounitario) AS totalProducao FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
   _dm2.qrPadrao2.open;


   // soma valor dos insumos predefinidos com o leite, creme e manteiga
    totalcustoproducao:= _dm2.qrPadrao2.FieldByName('totalProducao').AsCurrency + custoLeite + custocreme + customanteiga;

    txtcustoproducao.Value:=  totalcustoproducao;

    if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
    begin

        _dm2.ConnecDm2.Connected:=false;
        _dm2.qrPadrao.SQL.Clear;
        _dm2.qrPadrao.sql.add('update movproducaodiaria set itensderivadosconfirmados='+quotedstr('S')+', totalcustoproducao='+quotedstr(currtostr(totalcustoproducao))+' where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
        _dm2.qrPadrao.execsql;

    end
    else
    begin
          _dm2.ConnecDm2.Connected:=false;
        _dm2.qrPadrao.SQL.Clear;
        _dm2.qrPadrao.sql.add('update movproducaodiaria set materiarequisitada='+quotedstr('S')+', totalcustoproducao='+quotedstr(currtostr(totalcustoproducao))+' where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
        _dm2.qrPadrao.execsql;



        //2-BAIXA DOS INSUMOS

         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao.SQL.Clear;
         _dm.qrPadrao.SQL.Add('SELECT codigomateria,descricaomateria,SUM(totalmateriautilizada) as materiautilizada FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigofilial='+glb_filial+' GROUP BY codigomateria');
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
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',_dm2.cdsProducaoLeiteutilizado.AsCurrency))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();

            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',_dm2.cdsProducaocremeutilizado.AsCurrency))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();

            _dm.qrpadrao2.sql.clear;
            _dm.qrpadrao2.sql.add(' UPDATE '+glb_produtos+' SET quantidade = quantidade - '+quotedstr(formatcurr('##0.00',_dm2.cdsProducaoManteigamanteigautilizada.AsCurrency))+' WHERE codigo ='+quotedstr( _dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial));
            _dm.qrpadrao2.ExecSQL();



    end;


    _dm2.cdsMovproducao.Close;
    _dm2.cdsMovproducao.open;
    _dm2.cdsMovproducao.refresh;

    _dm2.ConnecDm2.Connected:=false;
    btnConfirmarDerivados.Enabled:=false;









end;

procedure T_frmProducaoDiaria.BitBtn2Click(Sender: TObject);
var
SQL:string;
begin




    if(_dm2.cdsMovproducaonumero.AsString='')then
    exit;




    if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString<>'S') and (_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
    exit;




  SQL:= 'SELECT p.qtdadicional,p.totalproduzido, p.id, p.codigo,  p.produto, p.unidade,p.quantidadesoro,'+
        '(SELECT lote FROM producaoitens where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' LIMIT 1) AS lote,(SELECT validade FROM producaoitens where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' LIMIT 1) AS validade,'+
        ' (SELECT ifnull(SUM(quantidadeajustada),0.00)   FROM resumoprodleite WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigo=p.codigo) AS quantidadeleite ,'+
        ' (SELECT ifnull(SUM(quantidadeajustada),0.00)   FROM resumoprodcreme WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigo=p.codigo) AS quantidadeCreme ,'+
        ' (SELECT ifnull(SUM(quantidadeajustada),0.00)   FROM resumoprodmanteiga WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigo=p.codigo) AS quantidademanteiga ,'+
        '  p.quantidadeproduzida, p.codigofilial, p.numeroproducao FROM producaoitens as p'+
        ' WHERE p.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);


   sql2:='';
   sql2:=  'select codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,';
   if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
   sql2:=sql2+' quantidademateria, totalmateriautilizada,((quantidade * quantidademateria) * custounitario) as custounitario,DATA,operador from producaomovmateria'  //quando o parâmetro for por KG produzido
   else
    sql2:=sql2+' quantidademateria, totalmateriautilizada,(totalmateriautilizada * custounitario) as custounitario,DATA,operador from producaomovmateria';

    _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsproducaoitens.Close;
    _dm2.sdsproducaoitens.commandtext:=SQL;
    _dm2.sdsproducaoitens.execsql;
    _dm2.cdsproducaoitens.open;
    _dm2.cdsproducaoitens.refresh;



  _dm2.ConnecDm2.Connected:=false;
  _dm2.cdsmateria.Close;
  _dm2.sdsMateria.CommandText:=sql2+//'select codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,'+
// if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
 // ' quantidademateria, totalmateriautilizada,((quantidade * quantidademateria) * custounitario) as custounitario,DATA,operador from producaomovmateria'+
 //else
  //' quantidademateria, totalmateriautilizada,(totalmateriautilizada * custounitario) as custounitario,DATA,operador from producaomovmateria'+
  ' where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString);
  _dm2.sdsMateria.ExecSQL();
  _dm2.cdsmateria.Open;
  _dm2.cdsmateria.refresh;



_frmInsumosdeproducao:=  T_frmInsumosdeproducao.create(Self);
_frmInsumosdeproducao.ShowModal;
_frmInsumosdeproducao.release;


end;

procedure T_frmProducaoDiaria.BitBtn3Click(Sender: TObject);
var
sql:string;
begin

    if(_dm2.cdsMovproducaonumero.AsString='')then
    exit;


sql:='SELECT pri.lote,CAST(if(pri.validade="1899-12-30","",pri.validade) AS DATE) as validade,pd.codigoembalagem,pd.produtoembalagem,pd.id,pd.numeroproducao,pd.embadicionais,pd.codigofilial,pd.codigopreproducao,pri.produto AS prodpreproducao,'+
 ' pd.codigoderivado,pd.produtoderivado,pd.operadorreqembadicional,pd.operadorreqemb,pd.embadicinalrequisitada,pd.embrequisitada,pd.quantidade,'+
 ' IF((SELECT adicionarqtdderivados FROM  configlaticinio WHERE codigofilial="'+glb_filial+'" LIMIT 1)="S", pd.quantidadeembalagem,0.00) AS quantidadeembalagem,';

 if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
begin
 sql:=sql+'  (SELECT SUM(quantidadeembalagem*quantidade) FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND  codigopreproducao=codigo LIMIT 1) AS quantidadetotal, ' +
       ' ((SELECT SUM(rp.quantidadeajustada) FROM resumoprodleite rp WHERE rp.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND rp.codigo=pri.codigo ) / '+
       ' (SELECT SUM(quantidadeembalagem*quantidade) FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND  codigopreproducao=codigo LIMIT 1)) AS rendimento ,';

end
  else
  begin
 sql:=sql+'pri.quantidadeproduzida  AS quantidadetotal,'+
  ' ((SELECT SUM(rp.quantidadeajustada) FROM resumoprodleite rp WHERE rp.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND rp.codigo=pri.codigo ) / pri.quantidadeproduzida) AS rendimento,';
  end;

 sql:=sql+'  (SELECT SUM(rp.quantidadeajustada) FROM resumoprodleite rp WHERE rp.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND rp.codigo=pri.codigo ) AS qtdleiteinformada '+
 '  FROM producaoderivados AS pd, producaoitens AS pri WHERE pd.quantidade>0 and pd.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
 '  AND pri.numeroproducao=pd.numeroproducao AND pri.codigo=pd.codigopreproducao';




       _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
       _dm2.sdsproducaoderivados.CommandText:= sql;
       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;


        if(_dm2.cdsProducaoDerivados.RecordCount=0)then
        exit;

      rvpProducao.SetParam('data',_dm2.cdsMovproducaodata.AsString+'   '+_dm2.cdsMovproducaohora.AsString);
      rvpProducao.SetParam('numero',_dm2.cdsMovproducaonumero.AsString);
      rvpProducao.SetParam('encerramento',_dm2.cdsMovproducaodatafinalizacao.AsString+'    '+_dm2.cdsMovproducaohorafinalizacao.AsString);

      {LEITE}
      rvpProducao.SetParam('lsobra',formatcurr('#,#0.00',strtocurr(DBGrid2.Fields[0].Value)));
      rvpProducao.SetParam('lentrada',formatcurr('#,#0.00',strtocurr(DBGrid2.Fields[1].Value)));
      rvpProducao.SetParam('lutilizado',formatcurr('#,#0.00',strtocurr(DBGrid2.Fields[2].Value)));
      rvpProducao.SetParam('lvendido',formatcurr('#,#0.00',strtocurr(DBGrid2.Fields[3].Value)));
      rvpProducao.SetParam('lsobrat',formatcurr('#,#0.00',strtocurr(DBGrid2.Fields[4].Value)));
      rvpProducao.SetParam('lperda',formatcurr('#,#0.00',strtocurr(DBGrid2.Fields[5].Value)));
      rvpProducao.SetParam('lsaldo',formatcurr('#,#0.00',strtocurr(DBGrid2.Fields[6].Value)));


      {CREME}
      rvpProducao.SetParam('csobra',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[0].Value)));
      rvpProducao.SetParam('ccomprado',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[1].Value)));
      rvpProducao.SetParam('cdesnatado',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[2].Value)));
      rvpProducao.SetParam('cpadronizado',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[3].Value)));
      rvpProducao.SetParam('csoro',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[4].Value)));
      rvpProducao.SetParam('csorocoalho',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[5].Value)));
      rvpProducao.SetParam('cvendido',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[6].Value)));
      rvpProducao.SetParam('cutilizado',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[7].Value)));
      rvpProducao.SetParam('csaldo',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[8].Value)));
      rvpProducao.SetParam('cestoque',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[9].Value)));
      rvpProducao.SetParam('cperda',formatcurr('#,#0.00',strtocurr(DBGrid3.Fields[10].Value)));



      {MANTEIGA}
      rvpProducao.SetParam('mcremederretido',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[0].Value)));
      rvpProducao.SetParam('mmanteigaobitida',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[1].Value)));
      rvpProducao.SetParam('mrendimento',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[2].Value)));
      rvpProducao.SetParam('mmanteigautilizada',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[3].Value)));
      rvpProducao.SetParam('msaldo',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[4].Value)));
      rvpProducao.SetParam('mestoque',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[5].Value)));
      rvpProducao.SetParam('mperda',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[6].Value)));
      rvpProducao.SetParam('msobra',formatcurr('#,#0.00',strtocurr(DBGrid4.Fields[7].Value)));

      rvpProducao.SetParam('analises',_dm2.cdsMovproducaoobservacao.asstring);


      rvpProducao.Execute;

end;

procedure T_frmProducaoDiaria.BitBtn4Click(Sender: TObject);
begin

 if(_dm2.cdsMovproducaonumero.AsString='')then
    exit;


  if(_dm2.cdsMovproducaoencerrada.AsString='S')then
   exit;


   if(_dm.cdsConfigLaticinioloteindividual.AsString='N')then
   begin

    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.sql.add('update movproducaodiaria set lote='+quotedstr(txtlote.Text)+', validadelote='+quotedstr(formatdatetime('yyyy-mm-dd',txtvalidade.Date))+' where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm2.qrPadrao.execsql;

   end
   else
   begin

    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.sql.add('update producaoitens set lote='+quotedstr(txtlote.Text)+', validade='+quotedstr(formatdatetime('yyyy-mm-dd',txtvalidade.Date))+' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and id='+quotedstr(_dm2.cdsproducaoitensid.AsString));
    _dm2.qrPadrao.execsql;


   end;




    //_dm2.cdsproducaoitens.Close;
    //_dm2.cdsproducaoitens.Open;
    _dm2.cdsproducaoitens.refresh;

    //_dm2.cdsMovproducao.Close;
    //_dm2.cdsMovproducao.open;
    _dm2.cdsMovproducao.refresh;

    application.MessageBox('Lote foi informado!','Alerta',MB_ICONINFORMATION+MB_ok);

end;

procedure T_frmProducaoDiaria.BitBtn5Click(Sender: TObject);
begin
       _dm2.ConnecDm2.Connected:=false;
       _dm2.cdsMovproducao.Close;
       _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND data = '+quotedstr(formatdatetime('yyyy-mm-dd',datapesq.Date));
      // _dm2.sdsMovproducao.commandtext:='SELECT * FROM movproducaodiaria WHERE codigofilial='+quotedstr(glb_filial)+' AND numero = '+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsMovproducao.execsql;
       _dm2.cdsMovproducao.Open;
       _dm2.cdsMovproducao.refresh;
end;

procedure T_frmProducaoDiaria.BitBtn6Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmProducaoDiaria.BitBtn7Click(Sender: TObject);
begin

    if(txtqtdadicional.Value=0)then
    begin
      Application.MessageBox('Informe uma quantidade positiva ou negativa!','Alerta',MB_ICONWARNING+MB_OK);
      exit;
    end;

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('UPDATE producaoitens SET quantidadeproduzida = quantidadeproduzida + ('+currtostr(txtqtdadicional.Value)+'),qtdadicional=qtdadicional+('+currtostr(txtqtdadicional.Value)+')   WHERE NUMEROPRODUCAO='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
    _dm.qrPadrao.SQL.Add(' and codigo ='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString));
    clipboard.AsText:= _dm.qrPadrao.SQL.text;
    _dm.qrPadrao.ExecSQL();

    _dm2.cdsproducaoitens.Refresh;

    frm.ModalResult:=-1;

end;

procedure T_frmProducaoDiaria.BitBtn8Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmProducaoDiaria.btnDerivados2Click(Sender: TObject);
var
sqlcustosleite,sqlcustoscreme,sqlcustosmanteiga:string;
custoLeite,custoCreme,CustoManteiga,totalcustoproducao,qtdleite:currency;
begin
    {
    sqlcustosleite:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoLeite FROM resumoprodleite    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
    sqlcustoscreme:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoCreme FROM resumoprodcreme    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
    sqlcustosmanteiga:=' SELECT SUM(quantidadeajustada * (SELECT custo FROM produtos WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+' AND codigofilial='+quotedstr(glb_filial)+')) as custoManteiga FROM resumoprodmanteiga    WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);

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
     }

   if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='S')then
   exit;





  if(application.MessageBox('Confirmar derivados?','Pergunta',MB_ICONQUESTION+MB_YESNO)=id_no)then
    exit;

   {
   _dm2.ConnecDm2.Connected:=false;
   _dm2.qrPadrao2.SQL.Clear;
   _dm2.qrPadrao2.SQL.add('SELECT SUM(totalmateriautilizada * custounitario) AS totalProducao FROM producaomovmateria WHERE idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
   _dm2.qrPadrao2.open;


   // soma valor dos insumos predefinidos com o leite, creme e manteiga
    totalcustoproducao:= _dm2.qrPadrao2.FieldByName('totalProducao').AsCurrency + custoLeite + custocreme + customanteiga;

    txtcustoproducao.Value:=  totalcustoproducao;
    }


    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
  //  _dm2.qrPadrao.sql.add('update movproducaodiaria set itensderivadosconfirmados='+quotedstr('S')+', totalcustoproducao='+quotedstr(currtostr(totalcustoproducao))+' where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
     _dm2.qrPadrao.sql.add('update movproducaodiaria set itensderivadosconfirmados='+quotedstr('S')+' where numero='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
     _dm2.qrPadrao.execsql;

    _dm2.cdsMovproducao.Close;
    _dm2.cdsMovproducao.open;
    _dm2.cdsMovproducao.refresh;

    _dm2.ConnecDm2.Connected:=false;
    btnDerivados2.Enabled:=false;



end;

procedure T_frmProducaoDiaria.btnabrirnunClick(Sender: TObject);
begin
   filtro:=' WHERE numero='+quotedstr(txtPesqNum.Text);
   pnlAbertura.Visible:=false;
   frm.ModalResult:=-1;
end;

procedure T_frmProducaoDiaria.DBGrid1CellClick(Column: TColumn);
var
I:integer;
begin
verDerivados(_dm2.cdsproducaoitenscodigo.AsString);

end;

procedure T_frmProducaoDiaria.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure T_frmProducaoDiaria.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With DBGrid2.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $00E4E7CD;
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

procedure T_frmProducaoDiaria.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With DBGrid3.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $00E4E7CD;
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

end;

procedure T_frmProducaoDiaria.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With DBGrid4.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $00E4E7CD;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(DBGrid4.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 DBGrid4.DefaultDrawDataCell(Rect, DBGrid4.Columns[DataCol].Field, State);
end;

end;

procedure T_frmProducaoDiaria.Embalagensadicionais1Click(Sender: TObject);
begin
  {
 if(_dm2.cdsMovproducaonumero.AsString='')then
 exit;

   if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='N')then
    exit;

_frmEmbAdicionais:=T_frmEmbAdicionais.Create(self);
_frmEmbAdicionais.ShowModal;
_frmEmbAdicionais.Release;



       _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
       _dm2.sdsproducaoderivados.CommandText:='SELECT *,(SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;

              }
  



end;

procedure T_frmProducaoDiaria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(Key=VK_F2)then
begin


    if(_dm2.cdsMovproducaoencerrada.AsString='S')then
    exit;


    if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString<>'S') and (_dm.cdsConfigLaticinioadicionarqtdderivados.asstring='S')then
    exit;

    {
    if(_dm.cdsConfigLaticinioadicionarqtdderivados.asstring='S')then
    begin
      if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='S')then
      exit;
    end;
     }

    frm:=Tform.create(self);

    frm.Width:=280;
    frm.Height:=145;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    lblprod.Caption:=_dm2.cdsproducaoitenscodigo.AsString+'-'+_dm2.cdsproducaoitensproduto.AsString;
    pnladdqtd.Parent:=frm;
    pnladdqtd.visible:=true;
    pnladdqtd.Align:=alClient;
    frm.ShowModal;




end;



end;

procedure T_frmProducaoDiaria.FormShow(Sender: TObject);
begin

  gridDerivados.ColWidths[0]:=100;
  gridDerivados.ColWidths[1]:=250;
  gridDerivados.ColWidths[2]:=100;
  gridDerivados.ColWidths[3]:=130;
 // gridDerivados.ColWidths[4]:=120;


  gridDerivados.Cells[0,0]:='Código';
  gridDerivados.Cells[1,0]:='Produto destino';
  gridDerivados.Cells[2,0]:='Quantidade';
  gridDerivados.Cells[3,0]:='Qtd.UN Produzida';
 // gridDerivados.Cells[4,0]:='Emb. Adicionais';



end;

procedure T_frmProducaoDiaria.gridDerivadosDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
    if(gridDerivados.Cells[ACol, ARow]='')then
    gridDerivados.Cells[ACol, ARow]:='0';




end;

procedure T_frmProducaoDiaria.gridDerivadosKeyPress(Sender: TObject;
  var Key: Char);
begin
validaNumeros(key);
end;

procedure T_frmProducaoDiaria.RadioGroup1Click(Sender: TObject);
begin
      case RadioGroup1.ItemIndex of
         0:begin
             pnlNumero.Visible:=true;
             pnlData.Visible:=false;
             txtPesqNum.SetFocus;

         end;
            1:begin
               pnlNumero.Visible:=false;
               pnlData.Visible:=true;

            end;


      end;
end;

procedure T_frmProducaoDiaria.Resuisiodeembalagens1Click(Sender: TObject);
var
situacao,tabela,sql:string;
begin

if(_dm2.cdsMovproducaonumero.AsString ='') or (txtnumero.Text='0')then
exit;

sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
 ' descricaoembalagem,  qtdnecessaria,  custounitario,  custototal,  SUM(qtdproduzido) AS qtdproduzido, SUM(qtdutilizado) AS qtdutilizado,  tipo,  solicitado,'+
 ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
 ' FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
 '  AND solicitado="S" GROUP BY tipo,codigoembalagem ORDER BY tipo desc';


      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsprodmovembalagem.Close;
      _dm2.sdsprodmovembalagem.CommandText:=sql;
      _dm2.sdsprodmovembalagem.ExecSQL();
      _dm2.cdsprodmovembalagem.Open;
      _dm2.cdsprodmovembalagem.Refresh;

    _frmMovEmbalagem:=T_frmMovEmbalagem.Create(self);
    _frmMovEmbalagem.ShowModal();
    _frmMovEmbalagem.Release;



{
    if(_dm2.cdsMovproducaonumero.AsString='')then
    exit;


     if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='N')then
    exit;


       _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
     //  _dm2.sdsproducaoderivados.CommandText:='SELECT * FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaoderivados.CommandText:= 'SELECT  id, numeroproducao,codigofilial,codigopreproducao,prodPreProducao,codigoembalagem as codigoderivado,(select descricao from '+glb_produtos+' where codigo = codigoembalagem and codigofilial="'+glb_filial+'") as produtoderivado, quantidadeembalagem,'+
      ' quantidade,custo,qtdleiteinformada,rendimento,quantidadeTotal, embadicionais, embrequisitada,embadicinalrequisitada, operadorreqemb,'+
      ' (SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade,'+
      ' operadorreqembadicional,codigoembalagem, produtoembalagem FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and quantidade > 0';


       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;




     //  showmessage(_dm2.cdsProducaoDerivadosembrequisitada.AsString);
   //
     if(_dm2.cdsProducaoDerivadosembrequisitada.AsString='S')then
     situacao:='Embalagens já foram requisitadas'
     else
     begin
     situacao:='';

       application.MessageBox('Após a confirmação só será possivel fazer solicitações de embalagens adicionais','Alerta',MB_ICONINFORMATION+MB_ok);

      if(application.MessageBox('Confirmar solicitação de embalagens?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idyes)then
      begin

        _dm2.ConnecDm2.Connected:=false;
        _dm2.qrPadrao.SQL.Clear;
        _dm2.qrPadrao.SQL.Add('update producaoderivados set embrequisitada="S", operadorreqemb='+quotedstr(glb_usuario)+' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
        _dm2.qrPadrao.ExecSQL();



          //BAIXA NAS EMBALAGENS

          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrPadrao.SQL.Clear;
          _dm2.qrPadrao.SQL.Add(' UPDATE '+glb_produtos+' AS p, producaoderivados AS d SET p.quantidade=p.quantidade-(d.quantidade) WHERE p.codigo=d.codigoembalagem AND d.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND d.quantidade>0 AND d.embrequisitada="S" AND d.codigofilial='+quotedstr(glb_filial));
          _dm2.qrPadrao.ExecSQL();


        //local,documento,acao,tabla
        incluirAuditoria('Produção diária', _dm2.cdsMovproducaonumero.AsString, 'Requisição de embalagens.' , 'movProducao');


        _dm2.cdsproducaoderivados.close;
        _dm2.cdsproducaoderivados.open;
        _dm2.cdsproducaoderivados.Refresh;



      end
      else
      exit;


     end;
        rvpEmbReq.SetParam('titulo','Requisição de embalagens');
        rvpEmbReq.SetParam('titReqEmb','Emb. Solicitadas');
        rvpEmbReq.SetParam('data',_dm2.cdsMovproducaodata.AsString);
        rvpEmbReq.SetParam('situacao',situacao);
        rvpEmbReq.Execute;

      }







end;

procedure T_frmProducaoDiaria.RvCustomConnection1EOF(
  Connection: TRvCustomConnection; var Eof: Boolean);
begin
eof:=_dm2.cdsImagens.Eof;
end;

procedure T_frmProducaoDiaria.RvCustomConnection1GetCols(
  Connection: TRvCustomConnection);
begin
 Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmProducaoDiaria.RvCustomConnection1GetRow(
  Connection: TRvCustomConnection);
begin
    Connection.WriteStrData('',_dm2.cdsImagenslogomarca.AsString);
   // ClientDataSetCaixa.Next;
end;

procedure T_frmProducaoDiaria.RxSpeedButton1Click(Sender: TObject);
var
situacao,tabela,sql:string;
begin

if(_dm2.cdsMovproducaonumero.AsString ='') or (txtnumero.Text='0')then
exit;

sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
 ' descricaoembalagem,  qtdnecessaria,  custounitario,  custototal,  SUM(qtdproduzido) AS qtdproduzido, SUM(qtdutilizado) AS qtdutilizado,  tipo,  solicitado,'+
 ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
 ' FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
 '  AND solicitado="S" GROUP BY tipo,codigoembalagem ORDER BY tipo desc';


      _dm2.ConnecDm2.Connected:=false;
      _dm2.cdsprodmovembalagem.Close;
      _dm2.sdsprodmovembalagem.CommandText:=sql;
      _dm2.sdsprodmovembalagem.ExecSQL();
      _dm2.cdsprodmovembalagem.Open;
      _dm2.cdsprodmovembalagem.Refresh;

    _frmMovEmbalagem:=T_frmMovEmbalagem.Create(self);
    _frmMovEmbalagem.ShowModal();
    _frmMovEmbalagem.Release;



{
    if(_dm2.cdsMovproducaonumero.AsString='')then
    exit;


     if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='N')then
    exit;


       _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
     //  _dm2.sdsproducaoderivados.CommandText:='SELECT * FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
      _dm2.sdsproducaoderivados.CommandText:= 'SELECT  id, numeroproducao,codigofilial,codigopreproducao,prodPreProducao,codigoembalagem as codigoderivado,(select descricao from '+glb_produtos+' where codigo = codigoembalagem and codigofilial="'+glb_filial+'") as produtoderivado, quantidadeembalagem,'+
      ' quantidade,custo,qtdleiteinformada,rendimento,quantidadeTotal, embadicionais, embrequisitada,embadicinalrequisitada, operadorreqemb,'+
      ' (SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade,'+
      ' operadorreqembadicional,codigoembalagem, produtoembalagem FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and quantidade > 0';


       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;




     //  showmessage(_dm2.cdsProducaoDerivadosembrequisitada.AsString);
   //
     if(_dm2.cdsProducaoDerivadosembrequisitada.AsString='S')then
     situacao:='Embalagens já foram requisitadas'
     else
     begin
     situacao:='';

       application.MessageBox('Após a confirmação só será possivel fazer solicitações de embalagens adicionais','Alerta',MB_ICONINFORMATION+MB_ok);

      if(application.MessageBox('Confirmar solicitação de embalagens?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idyes)then
      begin

        _dm2.ConnecDm2.Connected:=false;
        _dm2.qrPadrao.SQL.Clear;
        _dm2.qrPadrao.SQL.Add('update producaoderivados set embrequisitada="S", operadorreqemb='+quotedstr(glb_usuario)+' where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
        _dm2.qrPadrao.ExecSQL();



          //BAIXA NAS EMBALAGENS

          _dm2.ConnecDm2.Connected:=false;
          _dm2.qrPadrao.SQL.Clear;
          _dm2.qrPadrao.SQL.Add(' UPDATE '+glb_produtos+' AS p, producaoderivados AS d SET p.quantidade=p.quantidade-(d.quantidade) WHERE p.codigo=d.codigoembalagem AND d.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND d.quantidade>0 AND d.embrequisitada="S" AND d.codigofilial='+quotedstr(glb_filial));
          _dm2.qrPadrao.ExecSQL();


        //local,documento,acao,tabla
        incluirAuditoria('Produção diária', _dm2.cdsMovproducaonumero.AsString, 'Requisição de embalagens.' , 'movProducao');


        _dm2.cdsproducaoderivados.close;
        _dm2.cdsproducaoderivados.open;
        _dm2.cdsproducaoderivados.Refresh;



      end
      else
      exit;


     end;
        rvpEmbReq.SetParam('titulo','Requisição de embalagens');
        rvpEmbReq.SetParam('titReqEmb','Emb. Solicitadas');
        rvpEmbReq.SetParam('data',_dm2.cdsMovproducaodata.AsString);
        rvpEmbReq.SetParam('situacao',situacao);
        rvpEmbReq.Execute;

      }







end;

procedure T_frmProducaoDiaria.txtnumeroKeyPress(Sender: TObject; var Key: Char);
begin
if(key=#13)then
btnabrir.SetFocus;

end;

procedure T_frmProducaoDiaria.txtPesqNumKeyPress(Sender: TObject;
  var Key: Char);
begin
if(key=#13)then
btnabrirnun.SetFocus;
end;

end.


