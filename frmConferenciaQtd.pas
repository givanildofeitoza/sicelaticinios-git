unit frmConferenciaQtd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient,
  RpRender, RpRenderPDF, RxToolEdit, Vcl.Mask, RxCurrEdit, Vcl.ImgList,
  Vcl.Imaging.pngimage;

type
  T_frmConferenciaQtd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    txtNrAnalise: TEdit;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblFilial: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    lblPreenchido: TLabel;
    lblResp: TLabel;
    lblAprovado: TLabel;
    lblDataAprov: TLabel;
    Panel4: TPanel;
    grid: TStringGrid;
    Label15: TLabel;
    lblNrColeta: TLabel;
    Label18: TLabel;
    lblTotalColeta: TLabel;
    RvPconferencia: TRvProject;
    RvS1: TRvSystem;
    RvDSConnection1: TRvDataSetConnection;
    Rvteste: TRvDataSetConnection;
    RvRenderPDF1: TRvRenderPDF;
    RvCconexao: TRvCustomConnection;
    pnlCp: TPanel;
    Panel6: TPanel;
    Label6: TLabel;
    gridCp: TStringGrid;
    pnlAltDados: TPanel;
    Panel7: TPanel;
    Label9: TLabel;
    Panel8: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    lblDoc: TLabel;
    lblFor: TLabel;
    txtValor: TCurrencyEdit;
    txtData: TDateEdit;
    cboSetor: TComboBox;
    cboSubSetor1: TComboBox;
    txtIntervaloDias: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    txtValAdicional: TCurrencyEdit;
    Label21: TLabel;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    btnaltDados: TBitBtn;
    dataPriParcela: TDateEdit;
    Label22: TLabel;
    Label23: TLabel;
    vlrPriParcela: TCurrencyEdit;
    Panel9: TPanel;
    Label24: TLabel;
    Panel10: TPanel;
    btnConf: TBitBtn;
    BitBtn9: TBitBtn;
    memoDesc: TMemo;
    Label25: TLabel;
    txtParcelas: TEdit;
    Panel11: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Image2: TImage;
    Image1: TImage;
    RvConBoletos: TRvDataSetConnection;
    RvSBoletos: TRvSystem;
    RvCCboletos: TRvCustomConnection;
    BitBtn6: TBitBtn;
    RvPrintBoletos: TRvProject;
    pnlbusca: TPanel;
    rgTipo: TRadioGroup;
    pnldata: TPanel;
    DBGrid1: TDBGrid;
    data1: TDateEdit;
    data2: TDateEdit;
    Label28: TLabel;
    Label29: TLabel;
    BitBtn8: TBitBtn;
    pnlnumero: TPanel;
    txtbuscapornumero: TEdit;
    _btnConfirmar: TBitBtn;
    _btnCancelar: TBitBtn;
    Panel12: TPanel;
    BitBtn2: TBitBtn;
    btnAlterar: TBitBtn;
    btnLancar: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel13: TPanel;
    txtqtdtotal: TCurrencyEdit;
    Label30: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RvCconexaoEOF(Connection: TRvCustomConnection; var Eof: Boolean);
    procedure RvCconexaoGetCols(Connection: TRvCustomConnection);
    procedure RvCconexaoGetRow(Connection: TRvCustomConnection);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnConfClick(Sender: TObject);
    procedure txtParcelasKeyPress(Sender: TObject; var Key: Char);
    procedure txtIntervaloDiasKeyPress(Sender: TObject; var Key: Char);
    procedure btnaltDadosClick(Sender: TObject);
    procedure gridCpSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure cboSetorEnter(Sender: TObject);
    procedure cboSetorSelect(Sender: TObject);
    procedure gridCpDblClick(Sender: TObject);
    procedure txtParcelasExit(Sender: TObject);
    procedure txtIntervaloDiasExit(Sender: TObject);
    procedure dataPriParcelaExit(Sender: TObject);
    procedure gridCpDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
    procedure RvCCboletosGetCols(Connection: TRvCustomConnection);
    procedure RvCCboletosGetRow(Connection: TRvCustomConnection);
    procedure RvCCboletosEOF(Connection: TRvCustomConnection; var Eof: Boolean);
    procedure btnLancarClick(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure gridSiloKeyPress(Sender: TObject; var Key: Char);
    procedure gridSiloDblClick(Sender: TObject);
    procedure gridSiloSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn11Click(Sender: TObject);
    procedure btnClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure _btnConfirmarClick(Sender: TObject);
    procedure _btnCancelarClick(Sender: TObject);
    procedure txtbuscapornumeroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    linha,coluna:integer;
    frm,frm2,frm3:Tform;
    sqlDestino:string;
    tipopesq:string;
    continuar:string;
    abrir:string;

  end;

var
  _frmConferenciaQtd: T_frmConferenciaQtd;

implementation

{$R *.dfm}
uses
main,dm,dm2,frmAnaliseColeta,frmLogin,clipbrd,DateUtils,frmDestinarReservatorio;
function validaNumeros(var Key: Char):string;
begin
     if not( key in['0'..'9']) and (key<>'.') and (key<>#8)then
  begin
      key:=#0;
  end;
end;
procedure T_frmConferenciaQtd.btnClick(Sender: TObject);
begin

 glb_continuar:='N';
frm.ModalResult:=-1;
end;

procedure T_frmConferenciaQtd.BitBtn11Click(Sender: TObject);
begin

//gridSilo.Cells[2,linha]:=cboReservatorio.Text;
//frm3.modalresult:=-1;

end;

procedure T_frmConferenciaQtd.BitBtn1Click(Sender: TObject);
var
l:integer;
begin


      continuar:='N';

      frm:=Tform.Create(self);
      frm.Width:=780;
      frm.Height:=460;
      frm.BorderStyle:=bsDialog;
      frm.Position:=poDesktopCenter;
      frm.KeyPreview:=true;
      pnlbusca.Parent:=frm;
      pnlbusca.Align:=alClient;
      pnlbusca.Visible:=true;
      rgTipo.ItemIndex:=0;
      pnlnumero.Visible:=true;
      data1.Date:=now;
      data2.Date:=now;

      frm.ShowModal;


   if(continuar='N')then
   exit;



     _dm.ConnecDm.Connected:=false;
     _dm.sdsMovAnalise.Close;
     _dm.cdsMovAnalise.Close;
     _dm.sdsMovAnalise.commandtext:='select * from movanalise where numero='+quotedstr(txtNrAnalise.Text);
     _dm.sdsMovAnalise.ExecSQL;
     _dm.cdsMovAnalise.open;
     _dm.cdsMovAnalise.refresh;


     if(_dm.cdsMovAnalisenumero.AsString='')then
     begin
       application.MessageBox('Análise não encontrada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
       txtNrAnalise.SelectAll;
       exit;
     end;
        {
         if(_dm.cdsMovAnaliseconfirmada.AsString='N')then
         begin
           application.MessageBox('Análise ainda não foi confirmada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
           txtNrAnalise.SelectAll;
           exit;
         end;   }

        lblFilial.Caption:= _dm.cdsMovAnalisecodigofilial.AsString;
        lblResp.Caption:=   _dm.cdsMovAnaliseresponsavel.AsString;
        lblPreenchido.Caption:=  _dm.cdsMovAnaliseoperador.AsString;
        lblAprovado.Caption:=    _dm.cdsMovAnaliseoperadorconfirmacao.AsString;
        //lblDataAprov.Caption:=   _dm.cdsMovAnalisedataconfirmacao.AsString;
        //lblNrColeta.Caption:=  _dm.cdsMovAnalisenumerocoleta.AsString;
        //lblTotalColeta.Caption:=  _dm.cdsMovAnaliseqtdtotalcoleta.AsString;


        _dm.ConnecDm.Connected:=false;
        _dm.cdsMovColeta.Close;
        _dm.sdsMovColeta.CommandText:='SELECT * FROM movcoleta WHERE numero ='+quotedstr(_dm.cdsMovAnalisenumerocoleta.AsString);
        _dm.sdsMovColeta.ExecSQL;
        _dm.cdsMovColeta.Open;
        _dm.cdsMovColeta.refresh;



        _dm.ConnecDm.Connected:=false;
        _dm.cdsAnalise.Close;
        _dm.sdsAnalise.Close;
        _dm.sdsAnalise.CommandText:='select * from analise where numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString);
        _dm.sdsAnalise.execsql;
        _dm.cdsAnalise.Open;
        _dm.cdsAnalise.Refresh;





     l:=1;
     grid.RowCount:=1;
     if(_dm.cdsAnalise.RecordCount=0)then
     grid.RowCount:=2;

    _dm.cdsAnalise.First;
    while not _dm.cdsAnalise.Eof do
    begin

      grid.RowCount:=grid.RowCount+1;
      grid.Cells[0,l]:= _dm.cdsAnaliseinc.AsString;
      grid.Cells[1,l]:= _dm.cdsAnalisefornecedor.AsString;
      grid.Cells[2,l]:= _dm.cdsAnalisetipoleite.AsString;
      grid.Cells[3,l]:= _dm.cdsAnalisecusto.AsString;
      grid.Cells[4,l]:= _dm.cdsAnaliseqtdconferida.AsString;



      l:=l+1;


      _dm.cdsAnalise.Next;

    end;


    if(_dm.cdsMovAnalisefinalizada.AsString='S')then
    begin
      grid.Enabled:=false;
      btnAlterar.Enabled:=false;
      btnLancar.Enabled:=false;
    end
    else
    begin
      grid.Enabled:=true;
      btnAlterar.Enabled:=true;
      btnLancar.Enabled:=true;

    end;

            _dm.ConnecDm.Connected:=false;
          _dm.qrPadrao.SQL.Clear;
          _dm.qrPadrao.SQL.Add('select sum(qtdconferida) as total from analise where numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
          _dm.qrPadrao.Open;


          txtqtdtotal.Value:= _dm.qrPadrao.FieldByName('total').AsCurrency;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsfiliais.Close;
    _dm.sdsfiliais.close;
    _dm.sdsfiliais.commandtext:='SELECT * FROM filiais WHERE grupo='+quotedstr(glb_grupo)+' and codigofilial='+quotedstr(lblFilial.Caption)+' limit 1';
     _dm.sdsfiliais.execsql;
    _dm.cdsfiliais.Open;
    _dm.cdsfiliais.Refresh;






end;

procedure T_frmConferenciaQtd.BitBtn2Click(Sender: TObject);
begin



   _dm.ConnecDm.Connected:=false;
    _dm.cdsfiliais.Close;
    _dm.sdsfiliais.close;
    _dm.sdsfiliais.commandtext:='SELECT * FROM filiais WHERE grupo='+quotedstr(glb_grupo)+' and codigofilial='+quotedstr(lblfilial.Caption)+' limit 1';
    _dm.sdsfiliais.execsql;
    _dm.cdsfiliais.Open;
    _dm.cdsfiliais.Refresh;



if(txtNrAnalise.Text='')then
exit;

 _dm.ConnecDm.Connected:=false;


_dm.cdsMovAnalise.Close;
_dm.cdsMovAnalise.Open;
_dm.cdsMovAnalise.Refresh;

  _dm.sdsTotal.close;
  _dm.cdstotal.close;
  _dm.sdsTotal.CommandText:=' SELECT inc,tipoleite,SUM(custo * qtdconferida) AS totalCusto,SUM(qtdconferida),SUM(quantidade-qtdconferida) as perdas FROM analise '+
  ' WHERE numero = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' GROUP BY tipoleite';
  _dm.sdsTotal.ExecSQL;

  _dm.cdstotal.open;
  _dm.cdstotal.refresh;




RvPconferencia.SetParam('empresa', _dm.cdsFiliaisempresa.AsString);
RvPconferencia.SetParam('nrAnalise',_dm.cdsMovAnalisenumero.AsString);
RvPconferencia.SetParam('filial',lblFilial.Caption);
RvPconferencia.SetParam('responsavel',lblResp.Caption);
RvPconferencia.SetParam('opEntrada',_dm.cdsMovAnaliseoperadorfinalizacao.AsString);
RvPconferencia.SetParam('dataEnt',_dm.cdsMovAnalisedatafinalizacao.AsString);
RvPconferencia.SetParam('preenchida',_dm.cdsMovAnaliseoperador.AsString);
RvPconferencia.SetParam('aprovada',_dm.cdsMovAnaliseoperadorconfirmacao.AsString);
RvPconferencia.SetParam('dataAprov',_dm.cdsMovAnalisedataconfirmacao.AsString);
RvPconferencia.SetParam('opConferencia',_dm.cdsMovAnaliseoperadorconferencia.AsString);
RvPconferencia.SetParam('dataUltConferencia',_dm.cdsMovAnalisedataconferencia.AsString);


RvPconferencia.Execute;
end;

procedure T_frmConferenciaQtd.BitBtn3Click(Sender: TObject);
begin
 frm.ModalResult:=-1;
end;

procedure T_frmConferenciaQtd.BitBtn4Click(Sender: TObject);
var
i:integer;
begin


  frm:=Tform.Create(self);

  frm.Width:=860;
  frm.Height:=616;
  frm.BorderStyle:=bsDialog;
  frm.Position:=poDesktopCenter;

  pnlCp.Parent:=frm;
  pnlCp.Align:=alClient;
  pnlCp.Visible:=true;





    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT   numero, fornecedor, SUM(custo * qtdconferida) AS valor FROM  analise ');
    _dm.qrPadrao.SQL.Add('WHERE numero = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' and doclancado="N" GROUP BY fornecedor');
    _dm.qrPadrao.open;




    gridCp.Cells[0,0]:='À vista';
    gridCp.ColWidths[0]:=90;


    gridCp.Cells[1,0]:='Doc';
    gridCp.Cells[2,0]:='Fornecedor';
    gridCp.ColWidths[2]:=250;
    gridCp.Cells[3,0]:='Valor R$';
    gridCp.ColWidths[3]:=100;
    gridCp.Cells[4,0]:='Data Lanc.';
    gridCp.ColWidths[4]:=170;
    gridCp.Cells[5,0]:='Dias';
    gridCp.Cells[6,0]:='Parcelas';

    gridCp.Cells[7,0]:='Setor';
    gridCp.ColWidths[7]:=150;
    gridCp.ColWidths[8]:=170;
    gridCp.Cells[8,0]:='Sub-setor';
    gridCp.ColWidths[9]:=170;
    gridCp.Cells[9,0]:='Adicional R$';
    gridCp.Cells[10,0]:='Vlr R$ 1° Parc';
    gridCp.ColWidths[10]:=170;
    gridCp.Cells[11,0]:='Data 1° Venc';
    gridCp.ColWidths[11]:=170;
    //gridCp.Cells[12,0]:='Data 1° Venc';
    gridCp.ColWidths[12]:=1;
    gridCp.RowCount:= 1;
    i:=0;

    _dm.qrPadrao.first;
    while not _dm.qrPadrao.eof do
    begin

    i:=i+1;
    gridCp.RowCount:= gridCp.RowCount+1;
    gridCp.Cells[0,i]:='X';
    gridCp.Cells[1,i]:=_dm.qrPadrao.FieldByName('numero').AsString;
    gridCp.Cells[2,i]:=_dm.qrPadrao.FieldByName('fornecedor').AsString;
    gridCp.Cells[3,i]:=formatcurr('###0.00',_dm.qrPadrao.FieldByName('valor').Ascurrency);
    gridCp.Cells[4,i]:=formatdatetime('dd/mm/yyyy',now);
    gridCp.Cells[5,i]:='30';
    gridCp.Cells[6,i]:='1';

    gridCp.Cells[7,i]:='';
    gridCp.Cells[8,i]:='';

    gridCp.Cells[9,i]:='0.00';
    gridCp.Cells[10,i]:='0.00';
    gridCp.Cells[11,i]:=formatdatetime('dd/mm/yyyy',incmonth(now,1));

    _dm.qrPadrao.next;
    end;


    if(gridCp.RowCount>1)then
    begin
     gridCp.FixedRows:=1;
       end;




      frm.ShowModal();

end;

procedure T_frmConferenciaQtd.BitBtn5Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmConferenciaQtd.BitBtn6Click(Sender: TObject);
begin
  _dm.ConnecDm.Connected:=false;
  _dm.cdsContasPagar.Close;
  _dm.sdscontaspagar.CommandText:='select * from contaspagar where nrAnaliseLeite='+quotedstr(_dm.cdsAnalisenumero.AsString)+' order by empresa';
  _dm.sdscontaspagar.ExecSQL();
  _dm.cdsContasPagar.Open;
  _dm.cdsContasPagar.Refresh;

    RvPrintBoletos.SetParam('empresa',_dm.cdsFiliaisfantasia.AsString);
    RvPrintBoletos.SetParam('numero',_dm.cdsAnalisenumero.AsString);
    RvPrintBoletos.Execute;

end;

procedure T_frmConferenciaQtd.btnaltDadosClick(Sender: TObject);
begin

  if(gridCp.RowCount=1)then
  exit;


   _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT LPAD(codigo,5,"0") as codigo,descricao FROM setorcp WHERE codigofilial='+quotedstr(lblFilial.Caption));
    _dm.qrPadrao.open;

    _dm.qrPadrao.first;
    cboSetor.Items.Clear;

    while not _dm.qrPadrao.eof do
    begin


    cboSetor.Items.Add(_dm.qrPadrao.fieldbyname('codigo').AsString+'-'+_dm.qrPadrao.fieldbyname('descricao').AsString);

    _dm.qrPadrao.next;

    end;



  frm2:=Tform.Create(self);

  frm2.Width:=500;
  frm2.Height:=400;
  frm2.BorderStyle:=bsDialog;
  frm2.Position:=poDesktopCenter;

  pnlAltDados.Parent:=frm2;
  pnlAltDados.Align:=alClient;
  pnlAltDados.Visible:=true;



    if(linha=0)then
    linha:=1;

    lblDoc.Caption:= gridCp.Cells[1,linha];
    lblFor.Caption:= gridCp.Cells[2,linha];
    txtValor.Text:=  gridCp.Cells[3,linha];

    if(gridCp.Cells[4,linha]<>'')then
    txtData.Text:= gridCp.Cells[4,linha]
    else
    txtData.text:=formatdatetime('dd/mm/yyyy',now);

    if(gridCp.Cells[5,linha]<>'')then
    txtIntervaloDias.Text:= gridCp.Cells[5,linha]
    else
    txtIntervaloDias.Text:='30';


    txtParcelas.Text:= gridCp.Cells[6,linha];
   // if(gridCp.Cells[6,linha]<>'')then
  //  txtParcelas.Text:= gridCp.Cells[6,linha]
   // else
   // txtParcelas.Text:='1';


    cboSetor.Text:=        gridCp.Cells[7,linha];
    cboSubSetor1.Text:=    gridCp.Cells[8,linha];
    txtValAdicional.Text:= gridCp.Cells[9,linha];
    vlrPriParcela.text:=   gridCp.Cells[10,linha];
    dataPriParcela.Text:=  gridCp.Cells[11,linha];
    memodesc.Text:=  gridCp.Cells[12,linha];

   //gambirra para limpar o campo sub-setor que não apagava a informação.
   if(trim(cboSetor.Text)='')then
   begin
   cboSubSetor1.Items.Clear;
   cboSubSetor1.text;
   end;

   frm2.ShowModal;



end;

procedure T_frmConferenciaQtd.BitBtn7Click(Sender: TObject);
var
 codsetor,codsubsetor,setor,subsetor,descricao:string;
  I,l,intervalo,nrParc: Integer;
 vlrParc,vlrPriParc,vlrTotal:currency;
 vencimento:Tdate;
begin


if(gridCp.RowCount=1)then
  exit;
 //vlrTotal:=  strtocurr(gridCp.Cells[9,linha]) + strtocurr(gridCp.Cells[3,linha]) ;

      if( gridCp.Cells[3,linha] = '' ) or ( gridCp.Cells[3,linha] = '  /  /    ' )then
      begin

           application.MessageBox('Data não informada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
           exit;

      end;


     if(application.MessageBox('Inclir documentos?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDno)then
     exit;


      for I := 1 to gridCp.RowCount-1 do
      begin


         if( gridCp.Cells[0,I] <> 'X' )then
         begin

               //define total do débito valor + adicional
               vlrTotal:= strtocurr(gridCp.Cells[9,I]) + strtocurr(gridCp.Cells[3,I]) ;

               //verifica se tem valor da primeira parcela
               if(strtocurr(gridCp.Cells[10,I])>0)then
               vlrPriParc:=strtocurr(gridCp.Cells[10,I])
               else
               vlrPriParc:=0;


               //define quantas parcelas
               if(vlrPriParc > 0)then
               nrParc:= strtoint(gridCp.Cells[6,I]) - 1
               else
               nrParc:= strtoint(gridCp.Cells[6,I]);


               //define vlr das parcelas
               if(vlrPriParc > 0)then
                vlrParc:= (vlrTotal - vlrPriParc) /  nrParc
                else
                vlrParc:= vlrTotal / nrParc;


                 vencimento:=strtodate(gridCp.Cells[11,I]);
                 intervalo:= strtoint(gridCp.Cells[5,I]);

                 codsetor:=copy(gridCp.Cells[7,I],1,5);
                 codsubsetor:=copy(gridCp.Cells[8,I],1,5);
                 setor:=copy(gridCp.Cells[7,I],7,20);
                 subsetor:=copy(gridCp.Cells[8,I],7,20);


                 descricao:=gridCp.Cells[12,I];


               for l := 1 to strtoint(gridCp.Cells[6,I]) do
               begin


                    if(l<>1)then
                    vencimento:=IncDay(vencimento,intervalo);



                    _dm.ConnecDm.Connected:=true;
                    _dm.qrPadrao.SQL.clear;
                    _dm.qrPadrao.SQL.Add('INSERT INTO contaspagar(documento,empresa,valor,vencimento,datadocumento,codigoset,codigosubset,setor,subsetor,historico,numeroEntrada,nrAnaliseLeite,grupo,codigofilial) VALUES (');
                    _dm.qrPadrao.SQL.Add(quotedstr(gridCp.Cells[1,I]+'-'+inttostr(l))+','); //documento
                    _dm.qrPadrao.SQL.Add(quotedstr(gridCp.Cells[2,I])+','); //empresa

                    if(vlrPriParc>0) and (l=1)then
                    _dm.qrPadrao.SQL.Add(quotedstr(formatcurr('#.00',vlrPriParc))+',')//valor total parc
                    else
                    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(vlrParc))+',');


                    _dm.qrPadrao.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',vencimento))+',');//vencimento
                    _dm.qrPadrao.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',now))+','); //data do documento

                    _dm.qrPadrao.SQL.Add('abs('+quotedstr(codsetor)+'),'); //codsetor
                    _dm.qrPadrao.SQL.Add('abs('+quotedstr(codsubsetor)+'),'); //codsub-setor


                    _dm.qrPadrao.SQL.Add(quotedstr(setor)+','); //setor
                    _dm.qrPadrao.SQL.Add(quotedstr(subsetor)+','); //sub-setor
                    _dm.qrPadrao.SQL.Add(quotedstr(descricao)+','); //descricao
                    _dm.qrPadrao.SQL.Add(quotedstr('0')+','); //número entrada
                    _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsAnalisenumero.AsString)+','); //número análise
                    _dm.qrPadrao.SQL.Add(quotedstr(glb_grupo)+','); //grupo
                    _dm.qrPadrao.SQL.Add(quotedstr(lblfilial.Caption)+')');  //codigo filial
                    _dm.qrPadrao.execsql();




               end;//fim do segundo for

                    _dm.ConnecDm.Connected:=true;
                    _dm.qrPadrao.SQL.clear;
                    _dm.qrPadrao.SQL.Add('UPDATE analise SET doclancado="S" WHERE numero='+quotedstr(_dm.cdsAnalisenumero.AsString)+' AND ');
                    _dm.qrPadrao.SQL.Add(' fornecedor='+quotedstr(gridCp.Cells[2,I]));
                    _dm.qrPadrao.execsql();




         end; //fim da validação do pagamento à vista


      end;  // fim do primeiro for


        application.MessageBox('Documentos lançados com sucesso!','Mensagem',MB_ICONINFORMATION+MB_OK);

        frm.ModalResult:=-1;






end;

procedure T_frmConferenciaQtd.BitBtn8Click(Sender: TObject);
begin

_dm.ConnecDm.Connected:=false;
_dm.cdsMovAnalise.Close;
_dm.sdsMovAnalise.CommandText:='SELECT * FROM movanalise WHERE  data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+' AND codigofilial='+quotedstr(glb_filial);
_dm.sdsMovAnalise.ExecSQL();
_dm.cdsMovAnalise.open;
_dm.cdsMovAnalise.refresh;


end;

procedure T_frmConferenciaQtd.BitBtn9Click(Sender: TObject);
begin
 frm2.ModalResult:=-1;
end;

procedure T_frmConferenciaQtd.btnConfClick(Sender: TObject);
begin



if(txtData.Text='  /  /    ')then
begin
  Application.MessageBox('Data inválida. Verifique!','Alerta',MB_ICONQUESTION+MB_OK);
  exit;
end;




    gridCp.Cells[1,linha]:=lblDoc.Caption;
    gridCp.Cells[2,linha]:=lblFor.Caption;
    gridCp.Cells[3,linha]:= formatcurr('#.00',txtValor.value);
    gridCp.Cells[4,linha]:=txtData.Text;
    gridCp.Cells[5,linha]:= txtIntervaloDias.Text;
    gridCp.Cells[6,linha]:=txtParcelas.Text;
    gridCp.Cells[7,linha]:=cboSetor.Text;
    gridCp.Cells[8,linha]:=cboSubSetor1.Text;
//    gridCp.Cells[9,linha]:=formatcurr('#,#0.00',txtValAdicional.value);
    gridCp.Cells[9,linha]:=formatcurr('#.00',txtValAdicional.value);
    gridCp.Cells[10,linha]:=formatcurr('#.00',vlrPriParcela.value);
    gridCp.Cells[11,linha]:=dataPriParcela.Text;
    gridCp.Cells[12,linha]:=memodesc.Text;



    pnlAltDados.Visible:=false;
    frm2.ModalResult:=-1;


end;

procedure T_frmConferenciaQtd.btnLancarClick(Sender: TObject);
var
altCusto,fornecedor,codigofornecedor,numeroNf:string;
I,li:integer;
total:currency;
begin

  if(lblFilial.Caption<>glb_filial)then
  begin
    Application.MessageBox('Finalização só na Filial origem!','Alerta',MB_ICONEXCLAMATION+MB_ok);
    exit;
  end;




     total:=0;
     for I := 1 to grid.RowCount-1 do
     begin
           if(grid.Cells[4,I]<>'')then
           total:=total + strtocurr(grid.Cells[4,I]);
     end;

       //informa os destinos (Depósitos)
       if(_dm.cdsConfigLaticiniodestinardepositoentrada.AsString='S')then
       begin
       glb_continuar:='N';
      _frmDestinarReservatorio:=T_frmDestinarReservatorio.create(self);
      _frmDestinarReservatorio.lblVeiculo.Caption:='Veículo: '+_dm.cdsMovColetaveiculo.AsString;
      _frmDestinarReservatorio.lblPlaca.Caption:='Placa: '+_dm.cdsMovColetaplaca.AsString;
      _frmDestinarReservatorio.txtSaldoTotal.value:=total;


      _frmDestinarReservatorio.ShowModal;
       if( glb_continuar='N')then
       exit;

      _frmDestinarReservatorio.Release;

       end;





  //Lançamento dos silos fim

      _dm.cdsAnalise.First;
      while not _dm.cdsAnalise.Eof do
      begin

  
           if not (_dm.cdsAnaliseqtdconferida.AsCurrency>0) or not(_dm.cdsAnalisecusto.AsCurrency>0)then
            begin
                   Application.MessageBox('Produto sem custo ou quantidade informada!','Erro',MB_ICONEXCLAMATION+MB_OK);
                   exit;

            end;


      _dm.cdsAnalise.next;
      end;


      {
      glb_campo:='atualizarEstoqueColeta';//campo: atualizarEstoqueColeta

      _frmLogin:=T_frmLogin.Create(self);
      _frmLogin.lblfuncao.Caption:='Fazer conferência de estoque na análise';
      _frmLogin.ShowModal;

      if(glb_permissao='S')then
      begin  }

        if(Application.MessageBox('Lançar estoque de leite?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       begin
        Application.MessageBox('Cancelado pelo usuário','Alerta',MB_ICONEXCLAMATION+MB_ok);
        exit;
       end;



       //alterar custos dos produtos na entrada?
       if(application.MessageBox('Alterar custos?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idyes)then
        altCusto:='S'
        else
        altCusto:='N';






   _dm.ConnecDm.Connected:=false;
   _dm.qrPadrao3.SQL.Clear;
   _dm.qrPadrao3.SQL.add('SELECT codigofilial,numero,codigofornecedor,fornecedor,SUM(qtdconferida*custo) AS vlrTotProdutos from analise where numero ='+quotedstr(_dm.cdsAnalisenumero.AsString)+' group by fornecedor');
   _dm.qrPadrao3.open;



   _dm.qrPadrao3.first;
   while not _dm.qrPadrao3.Eof do
   begin

   //gera o moventradas
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add('INSERT INTO moventradas(');
   _dm.qrPadrao.SQL.Add('codigofornecedor,fornecedor,nf,dataemissao,dataentrada,data,valorprodutos,valornota,codigofilial,operacao,serie,subserie,');
   _dm.qrPadrao.SQL.Add('importada,especie,ufemitente,horaemissao,horaentrada,modelonf,situacaonf,cfopentrada,exportarfiscal)');
   _dm.qrPadrao.SQL.Add(' VALUES (');
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao3.FieldByName('codigofornecedor').AsString)+',');//codfornecedor
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao3.FieldByName('fornecedor').AsString)+',');//fornecedor
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao3.FieldByName('numero').AsString)+',');//nf
   _dm.qrPadrao.SQL.Add('current_date,');//dataemissao
   _dm.qrPadrao.SQL.Add('current_date,');//dataentrada
   _dm.qrPadrao.SQL.Add('current_date,');//data
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao3.FieldByName('vlrTotProdutos').AsString)+',');//valorprodutos
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao3.FieldByName('vlrTotProdutos').AsString)+',');//valornota
   _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao3.FieldByName('codigofilial').AsString)+',');//codigofilial
   _dm.qrPadrao.SQL.Add(quotedstr('5.102')+',');//operacao
   _dm.qrPadrao.SQL.Add(quotedstr('1')+',');//serie
   _dm.qrPadrao.SQL.Add(quotedstr('1')+',');//sibserie
   _dm.qrPadrao.SQL.Add(quotedstr('N')+',');//importada
   _dm.qrPadrao.SQL.Add(quotedstr('NF')+',');//especie
   _dm.qrPadrao.SQL.Add(quotedstr('PE')+',');//ufemitent
   _dm.qrPadrao.SQL.Add('current_time,');//horaemissao
   _dm.qrPadrao.SQL.Add('current_time,');//horaentrada
   _dm.qrPadrao.SQL.Add(quotedstr('01')+',');//modelonf
   _dm.qrPadrao.SQL.Add(quotedstr('00')+',');//situacaonf
   _dm.qrPadrao.SQL.Add(quotedstr('1.102')+',');//cfopentrada
   _dm.qrPadrao.SQL.Add(quotedstr('N')+')');//exportarfiscal
   _dm.qrPadrao.execsql;

   //pega número da última entrada
   _dm.qrPadrao.SQL.Clear;
   _dm.qrPadrao.SQL.Add('select numero from moventradas where codigofilial='+quotedstr(_dm.qrPadrao3.FieldByName('codigofilial').AsString));
   _dm.qrPadrao.SQL.Add(' and nf='+quotedstr(_dm.qrPadrao3.FieldByName('numero').AsString));
   _dm.qrPadrao.SQL.Add(' and fornecedor='+quotedstr(_dm.qrPadrao3.FieldByName('fornecedor').AsString));
   _dm.qrPadrao.SQL.Add(' and codigofornecedor='+quotedstr(_dm.qrPadrao3.FieldByName('codigofornecedor').AsString)+' limit 1');
   _dm.qrPadrao.open;



   numeroNf:= _dm.qrPadrao.FieldByName('numero').AsString;

   //seleciona os itens referentes ao fornecedor na análise
        _dm.qrPadrao2.SQL.Clear;
        _dm.qrPadrao2.SQL.Add('SELECT numero,codigofornecedor,fornecedor,codigotipoleite,tipoleite,qtdconferida,custo,(qtdconferida*custo) AS total FROM analise WHERE numero ='+quotedstr(_dm.cdsAnalisenumero.AsString));
        _dm.qrPadrao2.SQL.Add(' and codigofornecedor='+quotedstr(_dm.qrPadrao3.FieldByName('codigofornecedor').AsString));
        _dm.qrPadrao2.open;




       //lança em entradas
       _dm.qrPadrao2.First;
       while not _dm.qrPadrao2.Eof do
       begin
        _dm.qrPadrao.SQL.Clear;
        _dm.qrPadrao.SQL.Add('INSERT INTO entradas(');
        _dm.qrPadrao.SQL.Add('numero,codigo,descricao,lancada,fornecedor,quantidade,nf,custo,totalitem,data,icms,codigofilial,');
        _dm.qrPadrao.SQL.Add('qtdprateleiras,tributacao,cfopentrada,modelonf,ratdesconto,custocalculado,exportarfiscal');
        _dm.qrPadrao.SQL.Add(') values (');
        _dm.qrPadrao.SQL.Add(quotedstr(numeroNf)+','); //numero
        if(_dm.qrPadrao2.FieldByName('codigotipoleite').AsString='')then
        begin
         _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+','); //codigo
         _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsConfigLaticinioprodpadraoleite.AsString)+','); //codigo

         end
        else
        begin
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('codigotipoleite').AsString)+','); //codigo
        //_dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('tipoleite').AsString)+','); //descricao


        if(_dm.qrPadrao3.FieldByName('codigofilial').AsString='00001')then
        _dm.qrPadrao.SQL.Add('(select descricao from produtos where codigo="'+_dm.qrPadrao2.FieldByName('codigotipoleite').AsString+'" and codigofilial="'+_dm.qrPadrao3.FieldByName('codigofilial').AsString+'" limit 1),') //descricao
        else
        _dm.qrPadrao.SQL.Add('(select descricao from produtosfilial where codigo="'+_dm.qrPadrao2.FieldByName('codigotipoleite').AsString+'" and codigofilial="'+_dm.qrPadrao3.FieldByName('codigofilial').AsString+'" limit 1),'); //descricao

        end;


        _dm.qrPadrao.SQL.Add(quotedstr('N')+','); //lancada
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('fornecedor').AsString)+','); //fornecedor
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('qtdconferida').AsString)+','); //quantidade
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('numero').AsString)+','); //nf
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('custo').AsString)+','); //custo
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('total').AsString)+','); //totalitem
        _dm.qrPadrao.SQL.Add('current_date,'); //data
        _dm.qrPadrao.SQL.Add(quotedstr('18.00')+','); //icms
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao3.FieldByName('codigofilial').AsString)+','); //codigofilial
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('qtdconferida').AsString)+','); //qtdprateleiras
        _dm.qrPadrao.SQL.Add(quotedstr('000')+','); //tributacao
        _dm.qrPadrao.SQL.Add(quotedstr('1.102')+','); //cfopentrada
        _dm.qrPadrao.SQL.Add(quotedstr('01')+','); //modelonf
        _dm.qrPadrao.SQL.Add(quotedstr('0.00')+','); //ratdesconto
        _dm.qrPadrao.SQL.Add(quotedstr(_dm.qrPadrao2.FieldByName('custo').AsString)+','); //custocalculado
        _dm.qrPadrao.SQL.Add(quotedstr('N')+')');//exportarfiscal

        _dm.qrPadrao.execsql;



        _dm.qrPadrao2.Next;
        end;   //fim while lançamento de itens






      // Finaliza a entrada
       try
         begin
        _dm.qrPadrao.SQL.clear;
        _dm.qrPadrao.SQL.Add('CALL ProcessarEntrada('+quotedstr(lblfilial.Caption)+','+quotedstr(numeroNf)+','+quotedstr(altCusto)+','+quotedstr(glb_usuario)+',"0","0","0"); ');
        _dm.qrPadrao.execsql;



        _dm.qrPadrao2.SQL.clear;
        _dm.qrPadrao2.SQL.Add('update movanalise set finalizada="S", datafinalizacao=current_date,operadorfinalizacao='+quotedstr(glb_usuario)+' where numero='+quotedstr(_dm.cdsAnalisenumero.AsString));
        _dm.qrPadrao2.execsql;



         end;
       except
       Application.MessageBox('Erro no processamento da entrada','Erro',MB_ICONEXCLAMATION+MB_OK);

       end;



   _dm.qrPadrao3.next;
   end; //fim while lançamento do cabeçalho nf


    if(altCusto='S')then
    begin
     //custo médio no cadastro de produtos
           _dm2.ConnecDm2.Connected:=false;
           _dm2.qrPadrao.SQL.Clear;
           _dm2.qrPadrao.SQL.Add(' UPDATE '+glb_produtos+' SET custo = (SELECT TRUNCATE(AVG(custo),3) FROM analise WHERE numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND codigofilial='+quotedstr(glb_filial)+') WHERE codigo = '+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND codigofilial='+quotedstr(glb_filial));
           _dm2.qrPadrao.execsql;
    end;



     //Lança os destinos dos depósitos
     if(_dm.cdsConfigLaticiniodestinardepositoentrada.AsString='S')then
     begin
        _dm.cdsMovDepositos.first;
        while not _dm.cdsMovDepositos.Eof do
        begin
        _dm.qrPadrao.SQL.clear;
        _dm.qrPadrao.SQL.Add('UPDATE depositos SET estoque=estoque+'+quotedstr(_dm.cdsMovDepositosquantidade.AsString)+', ultimaentrada='+quotedstr(formatdatetime('yyyy-mm-dd',_dm.cdsMovDepositosdata.AsDateTime))+
        ' WHERE id='+quotedstr(_dm.cdsMovDepositoscodigodeposito.AsString)+
        ' AND codigofilial='+quotedstr(_dm.cdsMovDepositoscodigofilial.AsString));
        _dm.qrPadrao.execsql;


        _dm.qrPadrao.SQL.clear;
        _dm.qrPadrao.SQL.Add('update movdepositos set encerrado="S" where id ='+quotedstr(_dm.cdsMovDepositosid.AsString));
        _dm.qrPadrao.execsql;

        _dm.cdsMovDepositos.next;

        end;

     end;




       {
          _dm.qrPadrao.SQL.Clear;
          _dm.qrPadrao.SQL.Add('select sum(qtdconferida) as total from analise where numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
          _dm.qrPadrao.Open;

          if(_dm.qrPadrao.FieldByName('total').AsCurrency=0)then
          begin


          _dm.qrPadrao.SQL.Clear;
          _dm.qrPadrao.SQL.Add('update analise set qtdconferida = quantidade where  numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' and qtdconferida=0');
          _dm.qrPadrao.execsql;


          end;

          _dm.ConnecDm.Connected:=false;
          _dm.qrPadrao.SQL.Clear;
          _dm.qrPadrao.SQL.Add('select sum(qtdconferida) as total from analise where numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
          _dm.qrPadrao.Open;

          txtqtdtotal.Value:= _dm.qrPadrao.FieldByName('total').AsCurrency;   }


       Application.MessageBox('Lançamento efetuado com sucesso','Confirmação',MB_ICONINFORMATION+MB_OK);
       //BitBtn1Click(Sender);

       //trava campos
         grid.Enabled:=false;
         btnAlterar.Enabled:=false;
         btnLancar.Enabled:=false;

     // end;


end;

procedure T_frmConferenciaQtd.cboSetorEnter(Sender: TObject);
begin
cboSubSetor1.Text:='';
end;

procedure T_frmConferenciaQtd.cboSetorSelect(Sender: TObject);
begin





    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT lpad(codigo,5,"0") as codigo,descricao FROM subsetorcp WHERE codigosetor=abs('+copy(cbosetor.Text,1,5)+') and codigofilial='+quotedstr(lblFilial.Caption));
    _dm.qrPadrao.open;

    _dm.qrPadrao.first;
    cbosubSetor1.Items.Clear;

    while not _dm.qrPadrao.eof do
    begin


    cbosubSetor1.Items.Add(_dm.qrPadrao.fieldbyname('codigo').AsString+'-'+_dm.qrPadrao.fieldbyname('descricao').AsString);

    _dm.qrPadrao.next;

    end;




end;

procedure T_frmConferenciaQtd.dataPriParcelaExit(Sender: TObject);
begin
if( dataPriParcela.text='  /  /    ')then
dataPriParcela.Date:=incDay(now,strtoint(txtIntervaloDias.Text));
end;

procedure T_frmConferenciaQtd.btnAlterarClick(Sender: TObject);
var
I:integer;
begin

  if(lblFilial.Caption<>glb_filial)then
  begin
    Application.MessageBox('Alteração só na Filial origem!','Alerta',MB_ICONEXCLAMATION+MB_ok);
    exit;
  end;

       {
      glb_campo:='atualizarEstoqueColeta';//campo: atualizarEstoqueColeta

      _frmLogin:=T_frmLogin.Create(self);
      _frmLogin.lblfuncao.Caption:='Fazer conferência de estoque na análise';
      _frmLogin.ShowModal;
      }

     // glb_permissao:='S';

     // if(glb_permissao='S')then
     // begin

        if(Application.MessageBox('Confirmar conferência de estoque na análise?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       begin
        Application.MessageBox('Cancelado pelo usuário','Alerta',MB_ICONEXCLAMATION+MB_ok);
        exit;
       end;



            for I := 1 to grid.RowCount do
            begin

                _dm.ConnecDm.Connected:=false;
                _dm.qrPadrao.SQL.Clear;
                _dm.qrPadrao.SQL.Add('UPDATE analise SET qtdconferida ='+quotedstr(grid.Cells[4,I])+', custo='+quotedstr(grid.Cells[3,I]));
                _dm.qrPadrao.SQL.Add(' WHERE inc='+quotedstr(grid.Cells[0,I]));
                _dm.qrPadrao.SQL.Add(' AND numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
                _dm.qrPadrao.ExecSQL();



            end;

              //ajustando cabeçalho da análise
                _dm.ConnecDm.Connected:=false;
                _dm.qrPadrao.SQL.Clear;
                _dm.qrPadrao.SQL.Add(' UPDATE movanalise SET  conferido="S", operadorconferencia='+quotedstr(_frmLogin.txtUsuario.Text)+', dataconferencia=current_date ');
                _dm.qrPadrao.SQL.Add(' WHERE numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
                _dm.qrPadrao.ExecSQL();


    //  end
     // else
     // Application.MessageBox('Cancelado pelo usuário','Alerta',MB_ICONEXCLAMATION+MB_ok);


          _dm.ConnecDm.Connected:=false;
          _dm.qrPadrao.SQL.Clear;
          _dm.qrPadrao.SQL.Add('select sum(qtdconferida) as total from analise where numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
          _dm.qrPadrao.Open;


          txtqtdtotal.Value:= _dm.qrPadrao.FieldByName('total').AsCurrency;


        _dm.ConnecDm.Connected:=false;
        _dm.cdsAnalise.Close;
        _dm.sdsAnalise.Close;
        _dm.sdsAnalise.CommandText:='select * from analise where numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString);
        _dm.sdsAnalise.ExecSQL();
        _dm.cdsAnalise.Open;
        _dm.cdsAnalise.Refresh;


      _frmLogin.Release;



end;

procedure T_frmConferenciaQtd.FormKeyPress(Sender: TObject; var Key: Char);
begin
if(key=#13)then
Perform(WM_NEXTDLGCTL,0,0);
end;

procedure T_frmConferenciaQtd.FormShow(Sender: TObject);
begin
FormatSettings.DecimalSeparator:='.';
//FormatSettings.ThousandSeparator := '';



   _dm.ConnecDm.Connected:=false;
   _dm.cdsdepositos.Close;
   _dm.sdsDepositos.CommandText:='select * from depositos where codigofilial='+quotedstr(glb_filial)+' order by id';
   _dm.sdsDepositos.ExecSQL();
   _dm.cdsdepositos.Open;
   _dm.cdsdepositos.Refresh;


   //cboReservatorio.Items.Clear;
   _dm.cdsdepositos.first;
   while not _dm.cdsdepositos.Eof do
   begin

    //cboReservatorio.Items.add(  _dm.cdsdepositosid.AsString.PadLeft(5,'0')  +'-'+_dm.cdsdepositosidentificacao.AsString);

   _dm.cdsdepositos.Next;
   end;





    grid.Cells[0,0]:='Id';
    grid.Cells[1,0]:='Fornecedor';
    grid.ColWidths[1]:=350;
    grid.Cells[2,0]:='Tipo de Leite';
    grid.ColWidths[2]:=180;
    grid.Cells[3,0]:='Custo R$';
    grid.ColWidths[3]:=80;
    grid.Cells[4,0]:='Quantidade';
    grid.ColWidths[4]:=80;


end;

procedure T_frmConferenciaQtd.gridCpDblClick(Sender: TObject);
begin
    if(gridCp.Cells[0,linha]='')then
    gridCp.Cells[0,linha]:='X'
    else
    begin
    gridCp.Cells[0,linha]:='';
    btnaltDadosClick(sender);

    end;
end;

procedure T_frmConferenciaQtd.gridCpDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var
  s: string;
  aCanvas: TCanvas;
begin


if (ACol <> 0) or (ARow = 0) then
    Exit;
  s := (Sender as TStringGrid).Cells[ACol, ARow];

  // Draw ImageX.Picture.Bitmap in all Rows in Col 1
  aCanvas := (Sender as TStringGrid).Canvas;  // To avoid with statement
  // Clear current cell rect
  aCanvas.FillRect(Rect);
  // Draw the image in the cell
  if (s = 'X') then
    aCanvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Bitmap)
  else
    aCanvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Bitmap);
end;

procedure T_frmConferenciaQtd.gridCpSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
 linha:=arow;
 coluna:=acol;
end;

procedure T_frmConferenciaQtd.gridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
  var
  CellText, Texto: string;
  Col : Integer;
begin
  inherited;

  if (ARow > 0) and (ACol > 0) then
  begin
    if copy(Grid.Cells[ACol, 0], 1, 1)='0' then
    begin
      Grid.Canvas.Brush.Color := clInfoBk;
      Grid.Canvas.FillRect(Rect);
      CellText := Grid.Cells[ACol, ARow]
    end
    else
       if Grid.Cells[ACol, 0]='Custo R$' then
      begin
        Grid.Canvas.Brush.Color := clInfoBk;
        Grid.Canvas.FillRect(Rect);
        CellText := Grid.Cells[ACol, ARow]
      end  ;
      //else
     //   Grid.Canvas.Brush.Color := clWindow;


    if Grid.Cells[ACol, 0]='Quantidade' then
      begin
        Grid.Canvas.Brush.Color := clMoneyGreen;
        Grid.Canvas.FillRect(Rect);
        CellText := Grid.Cells[ACol, ARow]
      end ;
    //  else
    //  Grid.Canvas.Brush.Color := clWindow;

    Grid.Canvas.TextOut(Rect.Left + 4, Rect.Top + 4, CellText);

  end;

  grid.FixedRows:=1;
end;


procedure T_frmConferenciaQtd.gridKeyPress(Sender: TObject; var Key: Char);
begin
    validaNumeros(key);
end;

procedure T_frmConferenciaQtd.gridSiloDblClick(Sender: TObject);
begin
  { frm3:=Tform.Create(self);

  frm3.Width:=370;
  frm3.Height:=150;
  frm3.BorderStyle:=bsDialog;
  frm3.Position:=poDesktopCenter;

  pnlDeposito.Parent:=frm3;
  pnlDeposito.Align:=alClient;
  pnlDeposito.Visible:=true;
  pnlDeposito.Visible:=true;
  cboReservatorio.ItemIndex:=-1;

  frm3.ShowModal;    }

end;

procedure T_frmConferenciaQtd.gridSiloKeyPress(Sender: TObject; var Key: Char);
begin
validaNumeros(key);
end;

procedure T_frmConferenciaQtd.gridSiloSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
linha:=aRow;
coluna:=aCol;
end;

procedure T_frmConferenciaQtd.rgTipoClick(Sender: TObject);
begin
      case rgTipo.ItemIndex of
      0:
      begin
       pnlnumero.Visible:=true;
       pnldata.Visible:=false;
       tipopesq:='numero';
      end;
      1:
      begin
        pnlnumero.Visible:=false;
        pnldata.Visible:=true;
        tipopesq:='data';
      end;


      end;
end;

procedure T_frmConferenciaQtd.RvCCboletosEOF(Connection: TRvCustomConnection;
  var Eof: Boolean);
begin
eof := _dm.CdsFiliais.Eof;
end;

procedure T_frmConferenciaQtd.RvCCboletosGetCols(
  Connection: TRvCustomConnection);
begin
Connection.WriteField('logo', dtString, 120, '', '');

end;

procedure T_frmConferenciaQtd.RvCCboletosGetRow(
  Connection: TRvCustomConnection);
begin
    Connection.WriteStrData('', _dm2.cdsImagenslogomarca.AsString);

end;

procedure T_frmConferenciaQtd.RvCconexaoEOF(Connection: TRvCustomConnection;
  var Eof: Boolean);
begin
   eof:=_dm.cdsMovAnalise.Eof;

end;

procedure T_frmConferenciaQtd.RvCconexaoGetCols(
  Connection: TRvCustomConnection);
begin
Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmConferenciaQtd.RvCconexaoGetRow(Connection: TRvCustomConnection);
begin
 Connection.WriteStrData('', _dm2.cdsImagenslogomarca.AsString);
end;

procedure T_frmConferenciaQtd.txtbuscapornumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
if(key=#13)then
_btnConfirmar.SetFocus;
end;

procedure T_frmConferenciaQtd.txtIntervaloDiasExit(Sender: TObject);
begin
if(txtIntervaloDias.Text='')then
txtIntervaloDias.Text:='30';
end;

procedure T_frmConferenciaQtd.txtIntervaloDiasKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9']) and (key<>#8) then
key:=#0;

end;

procedure T_frmConferenciaQtd.txtParcelasExit(Sender: TObject);
begin
if(txtParcelas.Text='')then
txtParcelas.Text:='1';
end;

procedure T_frmConferenciaQtd.txtParcelasKeyPress(Sender: TObject;
  var Key: Char);
begin
if not(key in['0'..'9']) and (key<>#8) then
key:=#0;
end;

procedure T_frmConferenciaQtd._btnCancelarClick(Sender: TObject);
begin
continuar:='N';
frm.ModalResult:=-1;
exit;
end;

procedure T_frmConferenciaQtd._btnConfirmarClick(Sender: TObject);
begin
    if(tipopesq='numero')then
    begin
      txtNrAnalise.Text:=txtbuscapornumero.Text;
      continuar:='S';
      frm.ModalResult:=-1;

    end
    else if(tipopesq='data')then
      begin
      txtNrAnalise.Text:=_dm.cdsMovAnalisenumero.AsString;
      continuar:='S';
      frm.ModalResult:=-1;

    end

end;

end.
