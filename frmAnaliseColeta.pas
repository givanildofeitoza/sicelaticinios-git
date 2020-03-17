unit frmAnaliseColeta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBGrids, RpCon, RpConDS,
  RpRave, RpDefine, RpBase, RpSystem, RpRender, RpRenderPDF;

type
  T_frmAnaliseColeta = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    btnNova: TBitBtn;
    Label3: TLabel;
    lblNrAnalise: TLabel;
    pnlDadosColeta: TPanel;
    btnAbrirColeta: TBitBtn;
    txtNumero: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblResponsaval: TLabel;
    lblVeiculo: TLabel;
    lblDataColeta: TLabel;
    lblPlaca: TLabel;
    lblConfirmacao: TLabel;
    Label9: TLabel;
    lblOperadorColeta: TLabel;
    BitBtn2: TBitBtn;
    pnlRodape: TPanel;
    pnlDadosAnalise: TPanel;
    txtQtdAnalisada: TCurrencyEdit;
    Panel4: TPanel;
    txtQtdPedas: TCurrencyEdit;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    btnAlterarDados: TBitBtn;
    Label11: TLabel;
    lblTotColeta: TLabel;
    BitBtn6: TBitBtn;
    Label13: TLabel;
    txtCustoTotal: TCurrencyEdit;
    Panel3: TPanel;
    dbGridAnalise: TDBGrid;
    pnlAbrirColeta: TPanel;
    Panel6: TPanel;
    Label14: TLabel;
    dbGridAbrirColeta: TDBGrid;
    Panel7: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    dataConsutaIni: TDateEdit;
    dataConsultaFim: TDateEdit;
    cboConfirmada: TComboBox;
    Filtrar: TBitBtn;
    rgTipo: TRadioGroup;
    pnlNumero: TPanel;
    Label15: TLabel;
    editNumero: TEdit;
    BitBtn11: TBitBtn;
    pnlInfAnalise: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    txtDescricao: TEdit;
    txtAcaoCorretiva: TEdit;
    txtFrequencia: TEdit;
    txtProcedimento: TEdit;
    txtRespAnalise: TEdit;
    BitBtn1: TBitBtn;
    pnlAbrirAnalise: TPanel;
    Panel9: TPanel;
    rgTipoPesq: TRadioGroup;
    pnlBuscaData: TPanel;
    data1: TDateEdit;
    data2: TDateEdit;
    Label23: TLabel;
    Label24: TLabel;
    pnlBuscaNumero: TPanel;
    Label22: TLabel;
    gridAbrirAnalise: TDBGrid;
    btnpesq: TBitBtn;
    BitBtn3: TBitBtn;
    txtPesqNumero: TEdit;
    btnConfirmar: TBitBtn;
    RvSystem1: TRvSystem;
    rvImpressao: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    RvRenderPDF1: TRvRenderPDF;
    BitBtn8: TBitBtn;
    Label25: TLabel;
    cbofilial: TComboBox;
    RvCustomConnection1: TRvCustomConnection;
    txtStatus: TEdit;
    Panel8: TPanel;
    BitBtn7: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure dbGridAnaliseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FiltrarClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure dbGridAbrirColetaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BitBtn11Click(Sender: TObject);
    procedure btnAbrirColetaClick(Sender: TObject);
    procedure btnNovaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rgTipoPesqClick(Sender: TObject);
    procedure btnpesqClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridAbrirAnaliseDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAlterarDadosClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure dbGridAnaliseDblClick(Sender: TObject);
    procedure RvDataSetConnection2EOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
    procedure RvDataSetConnection2GetCols(Connection: TRvCustomConnection);
    procedure RvDataSetConnection2GetRow(Connection: TRvCustomConnection);
    procedure RvCustomConnection1EOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
    procedure RvCustomConnection1GetCols(Connection: TRvCustomConnection);
    procedure RvCustomConnection1GetRow(Connection: TRvCustomConnection);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnpesqKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmAnaliseColeta: T_frmAnaliseColeta;
  frm:Tform;

implementation

{$R *.dfm}
uses
dm,dm2,main,clipbrd,frmDefinirDadosAnalise,frmLogin,frmPreencherPadrao;
procedure atualizarTotais(numero:string);
begin

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao2.SQL.Clear;
    _dm.qrPadrao2.SQL.Add('select count(inc) as totalRegistors from analise where codigofilial='+quotedstr(glb_filial));
    _dm.qrPadrao2.SQL.Add(' and numero=abs('+quotedstr(numero)+')');
    _dm.qrPadrao2.open;



 if(_dm.qrPadrao2.FieldByName('totalRegistors').AsInteger>0)then
 begin
    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('select sum(qtdconferida) as quantidadeTotal, sum(qtdconferida * custo) as custoTotal from analise where codigofilial='+quotedstr(copy(_frmAnaliseColeta.cbofilial.text,1,5)));
    _dm.qrPadrao.SQL.Add(' and numero=abs('+quotedstr(numero)+')');
    _dm.qrPadrao.open;

     _frmAnaliseColeta.txtCustoTotal.Value:= _dm.qrPadrao.FieldByName('custoTotal').AsCurrency;
     //_frmAnaliseColeta.txtQtdPedas.Value:=_dm.qrPadrao.FieldByName('quantidadeTotal').AsCurrency;

      if((strtocurr(_frmAnaliseColeta.lblTotColeta.Caption) - _dm.qrPadrao.FieldByName('quantidadeTotal').AsCurrency)>0)then
      _frmAnaliseColeta.txtQtdPedas.Value:=  strtocurr(_frmAnaliseColeta.lblTotColeta.Caption) - _dm.qrPadrao.FieldByName('quantidadeTotal').AsCurrency;

 end
 else
    _frmAnaliseColeta.txtQtdPedas.Value:= 0;


end;

procedure T_frmAnaliseColeta.BitBtn11Click(Sender: TObject);
begin

    if(_dm.cdsMovColetaconfirmada.AsString='N')then
    begin
      Application.MessageBox('Coleta ainda não foi confirmada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
      exit;
    end;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsColeta.Close;
    _dm.sdsColeta.Close;
    _dm.sdsColeta.CommandText:='select * from coleta where numero='+quotedstr(txtNumero.Text);
    _dm.sdsColeta.execsql;
    _dm.cdsColeta.Open;
    _dm.cdsColeta.Refresh;

    pnlDadosAnalise.Enabled:=true;

//verifica se a coleta já foi lançada em outra análise
    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.clear;
    _dm.qrPadrao.SQL.Add('select count(1) as total, numero from movanalise where numero <> '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' and numerocoleta='+quotedstr(_dm.cdsMovColetanumero.AsString)+' and codigofilial='+quotedstr(copy(cbofilial.Text,1,5)));
    _dm.qrPadrao.open();



    if(_dm.qrPadrao.FieldByName('total').AsInteger > 0)then
    begin
       Application.MessageBox('Número da coleta já informado na análise!','alerta',MB_ICONEXCLAMATION+MB_ok);
       showmessage('Informada na análise número: '+_dm.qrPadrao.FieldByName('numero').asstring);
       exit;


    end;

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.clear;
    _dm.qrPadrao.SQL.Add('select count(inc) as total from analise where numero=abs('+quotedstr(lblNrAnalise.Caption)+') and codigofilial='+quotedstr(copy(cbofilial.Text,1,5)));
    _dm.qrPadrao.open();

    if( _dm.qrPadrao.FieldByName('total').AsInteger > 0)then
    begin



       if(Application.MessageBox('Deseja substituir os dados da coleta informada?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDNO)then
       exit;


    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao2.SQL.clear;
    _dm.qrPadrao2.SQL.Add('delete from analise where numero=abs('+quotedstr(lblNrAnalise.Caption)+') and codigofilial='+quotedstr(copy(cbofilial.Text,1,5)));
    _dm.qrPadrao2.execsql();

    end;


     if(Application.MessageBox('Incluir dados da coleta?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDNO)then
     exit;

    txtNumero.Text:= _dm.cdsMovColetanumero.AsString;
    lblResponsaval.Caption:= _dm.cdsMovColetaresponsavel.AsString;
    lblVeiculo.Caption:=     _dm.cdsMovColetaveiculo.AsString;
    lblDataColeta.Caption:=  _dm.cdsMovColetadatacoleta.Text;
    lblOperadorColeta.Caption:= _dm.cdsmovColetaoperador.asstring;
    lblPlaca.Caption:=  _dm.cdsMovColetaplaca.AsString;
    lblConfirmacao.Caption:= _dm.cdsMovColetadataconfirmacao.AsString;
    lblTotColeta.Caption:=   formatfloat('##0.00',_dm.cdsMovColetatotalitroscoletados.Asfloat);



    _dm.ConnecDm.Connected:=false;
    _dm.cdsColeta.Close;
    _dm.sdsColeta.Close;
    _dm.sdsColeta.CommandText:='select * from coleta where numero='+quotedstr(_dm.cdsMovColetanumero.AsString);
    _dm.sdsColeta.ExecSQL();
    _dm.cdsColeta.Open;
    _dm.cdsColeta.Refresh;

    _dm.cdsColeta.First;
    while not _dm.cdsColeta.Eof do
    begin

     _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.clear;
    _dm.qrPadrao.SQL.Add('update movanalise set numerocoleta='+quotedstr(_dm.cdsMovColetanumero.AsString)+' Where codigofilial='+quotedstr(copy(cbofilial.Text,1,5))+' and numero=abs('+quotedstr(lblNrAnalise.Caption)+')');
    _dm.qrPadrao.execsql();

 
    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao2.SQL.clear;
    _dm.qrPadrao2.SQL.Add('insert into analise(numero,codigofilial,codigofornecedor,fornecedor,data,quantidade,reservatorio,qtdconferida,datacoleta) values (');
    _dm.qrPadrao2.SQL.Add('abs('+quotedstr(lblNrAnalise.Caption)+'),');
    _dm.qrPadrao2.SQL.Add(quotedstr(_dm.cdsMovColetacodigofilial.AsString)+',');
    _dm.qrPadrao2.SQL.Add(quotedstr(_dm.cdsColetacodigofornecedor.AsString)+',');
    _dm.qrPadrao2.SQL.Add(quotedstr(_dm.cdsColetafornecedor.AsString)+',');
    _dm.qrPadrao2.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',_dm.cdsMovAnalisedata.AsDateTime))+',');
    _dm.qrPadrao2.SQL.Add(quotedstr(_dm.cdsColetatotalcoletado.AsString)+',');
    _dm.qrPadrao2.SQL.Add(quotedstr(_dm.cdsColetareservatorio.AsString)+',');
    _dm.qrPadrao2.SQL.Add(quotedstr(_dm.cdsColetatotalcoletado.AsString)+',');
    _dm.qrPadrao2.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',_dm.cdsMovColetadatacoleta.AsDateTime))+')');
    _dm.qrPadrao2.ExecSQL();

    _dm.cdsColeta.Next;

    end;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsAnalise.Close;
    _dm.sdsAnalise.Close;
    _dm.sdsAnalise.CommandText:='select * from analise where numero=abs('+quotedstr(lblNrAnalise.Caption)+')';
    _dm.sdsAnalise.execsql;
    _dm.cdsAnalise.Open;
    _dm.cdsAnalise.Refresh;

      atualizarTotais(lblNrAnalise.Caption);



    frm.Close;
end;

procedure T_frmAnaliseColeta.btnAbrirColetaClick(Sender: TObject);
begin
   frm:=Tform.create(self);

    frm.Width:=775;
    frm.Height:=475;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    dataConsutaIni.Date:=incmonth(now,-1);
    dataConsultaFim.Date:=incmonth(now,1);
    pnlAbrirColeta.Parent:=frm;
    pnlAbrirColeta.visible:=true;
    pnlAbrirColeta.Align:=alClient;

    frm.ShowModal;
end;

procedure T_frmAnaliseColeta.btnNovaClick(Sender: TObject);
begin

      if(_dm.cdsSenhasajustaranalise.AsString='N')then
      begin
           application.MessageBox('Usuário não tem permissão para gerar novas análises','Alerta',MB_ICONEXCLAMATION+MB_OK);
           exit;
      end;




      if(application.MessageBox('Criar nova análise?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDNO)then
      exit;

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.add('INSERT INTO movanalise (DATA,operador,codigofilial) VALUES (');
      _dm.qrPadrao.SQL.add('current_date,'+quotedstr(glb_usuario)+','+quotedstr(copy(cbofilial.Text,1,5)));
      _dm.qrPadrao.SQL.add(')');
      _dm.qrPadrao.ExecSQL;

      _dm.qrPadrao2.SQL.Clear;
      _dm.qrPadrao2.SQL.add('Select LPAD(numero,5,"0") as numero from movanalise where codigofilial='+quotedstr(copy(cbofilial.Text,1,5))+' and operador='+quotedstr(glb_usuario));
      _dm.qrPadrao2.SQL.add(' and numerocoleta = "0" order by numero desc limit 1');
      _dm.qrPadrao2.Open;



      lblNrAnalise.Caption:= _dm.qrPadrao2.fieldbyname('numero').AsString;


    _dm.ConnecDm.Connected:=false;
    _dm.cdsAnalise.Close;
    _dm.sdsAnalise.Close;
    _dm.sdsAnalise.CommandText:='select * from analise where numero='+quotedstr( lblNrAnalise.Caption);
    _dm.sdsAnalise.execsql;
    _dm.cdsAnalise.Open;
    _dm.cdsAnalise.Refresh;


      txtRespAnalise.Text:='';
      txtDescricao.Text:='';
      txtFrequencia.Text:='';
      txtProcedimento.Text:='';
      txtAcaoCorretiva.Text:='';



    txtNumero.Text:= '0';
    lblResponsaval.Caption:= '0000';
    lblVeiculo.Caption:=     '0000';
    lblDataColeta.Caption:=  '0000';
    lblOperadorColeta.Caption:= '0000';
    lblPlaca.Caption:=  '0000';
    lblConfirmacao.Caption:= '0000';
    lblTotColeta.Caption:=  '0000';
    pnlDadosColeta.Enabled:=true;


    atualizarTotais(lblNrAnalise.Caption);

     // pnldadoscoleta.enabled:=false;
      txtStatus.Text:='Aberta';
      pnlInfAnalise.Enabled:=true;
  //    txtDescricao.SetFocus;
      btnConfirmar.Enabled:=true;

end;

procedure T_frmAnaliseColeta.btnpesqClick(Sender: TObject);
var
filtro:string;
begin

  case rgTipoPesq.ItemIndex of
  0:filtro:=' where data between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date));
  1:filtro:=' where dataconfirmacao between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date));
  2:filtro:=' where numero ='+quotedstr(txtPesqNumero.Text);
  end;

     _dm.ConnecDm.Connected:=false;
     _dm.sdsMovAnalise.Close;
     _dm.cdsMovAnalise.Close;
     _dm.sdsMovAnalise.commandtext:='select * from movanalise '+filtro+' and codigofilial='+quotedstr(copy(cbofilial.Text,1,5));
     _dm.sdsMovAnalise.ExecSQL;
     _dm.cdsMovAnalise.open;
     _dm.cdsMovAnalise.refresh;

     gridAbrirAnalise.SetFocus;


end;

procedure T_frmAnaliseColeta.btnpesqKeyPress(Sender: TObject; var Key: Char);
begin
if(key=#13)then
begin
key:=#1;
Perform(WM_NEXTDLGCTL,0,0);
end;


end;

procedure T_frmAnaliseColeta.BitBtn1Click(Sender: TObject);
begin

 if(txtDescricao.text='')then
 begin
   Application.MessageBox('Informe a descrição!','Alerta',MB_ICONEXCLAMATION+MB_OK);
   exit;
 end;

  if(txtFrequencia.text='')then
 begin
   Application.MessageBox('Informe a frequência!','Alerta',MB_ICONEXCLAMATION+MB_OK);
   exit;
 end;

  if(txtRespAnalise.text='')then
 begin
   Application.MessageBox('Informe o responsável pela análise!','Alerta',MB_ICONEXCLAMATION+MB_OK);
   exit;
 end;

  if(txtProcedimento.text='')then
 begin
   Application.MessageBox('Informe o procedimento!','Alerta',MB_ICONEXCLAMATION+MB_OK);
   exit;
 end;

     _dm.ConnecDm.Connected:=false;
     _dm.sdsMovAnalise.Close;
     _dm.cdsMovAnalise.Close;
     _dm.sdsMovAnalise.commandtext:='select * from movanalise where numero = abs('+quotedstr(lblNrAnalise.Caption)+')';
     _dm.sdsMovAnalise.ExecSQL;
     _dm.cdsMovAnalise.open;
     _dm.cdsMovAnalise.refresh;


     if(_dm.cdsMovAnaliseconfirmada.AsString='S')then
     begin
        Application.MessageBox('Análise já confirmada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
        exit;
     end;

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.add('update movanalise set ');
      _dm.qrPadrao.SQL.add('responsavel='+quotedstr(txtRespAnalise.Text)+',');
      _dm.qrPadrao.SQL.add('descricao='+quotedstr(txtDescricao.Text)+',');
      _dm.qrPadrao.SQL.add('frequencia='+quotedstr(txtFrequencia.Text)+',');
      _dm.qrPadrao.SQL.add('procedimento='+quotedstr(txtProcedimento.Text)+',');
      _dm.qrPadrao.SQL.add('acaocorretiva='+quotedstr(txtAcaoCorretiva.Text));
      _dm.qrPadrao.SQL.add(' where numero =abs('+quotedstr(lblNrAnalise.Caption)+') and codigofilial='+quotedstr(glb_filial));
      _dm.qrPadrao.ExecSQL;

        Application.MessageBox('Informações salvas!','Alerta',MB_ICONINFORMATION+MB_OK);


      pnlDadosColeta.Enabled:=true;

end;

procedure T_frmAnaliseColeta.BitBtn2Click(Sender: TObject);
begin
  frm:=Tform.create(self);

    frm.Width:=780;
    frm.Height:=445;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    data1.Date:=incmonth(now,-1);
    data2.Date:=incmonth(now,1);
    pnlAbrirAnalise.Parent:=frm;
    pnlAbrirAnalise.visible:=true;
    pnlAbrirAnalise.Align:=alClient;
    frm.ShowModal;


end;

procedure T_frmAnaliseColeta.BitBtn3Click(Sender: TObject);
var
numeroColeta,numeroAnalise:string;
begin

if(_dm.cdsMovAnalisenumero.AsString='')then
begin
    Application.MessageBox('Selecione uma análise!','Alerta',MB_ICONINFORMATION+MB_OK);
    pnlDadosColeta.Enabled:=false;
    pnlInfAnalise.Enabled:=false;
    pnlDadosAnalise.Enabled:=false;

    frm.Close;
end;

numeroColeta:=_dm.cdsMovAnalisenumerocoleta.AsString;
numeroAnalise:= _dm.cdsMovAnalisenumero.AsString;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsAnalise.Close;
    _dm.sdsAnalise.Close;
    _dm.sdsAnalise.CommandText:='select * from analise where numero='+quotedstr(numeroAnalise);
    _dm.sdsAnalise.execsql;
    _dm.cdsAnalise.Open;
    _dm.cdsAnalise.Refresh;


    _dm.ConnecDm.Connected:=false;
    _dm.cdsMovColeta.Close;
    _dm.sdsMovColeta.Close;
    _dm.sdsMovColeta.CommandText:='select * from movcoleta where numero='+quotedstr(numeroColeta);
    _dm.sdsMovColeta.execsql;
    _dm.cdsMovColeta.Open;
    _dm.cdsMovColeta.Refresh;

    txtNumero.Text:=_dm.cdsMovColetanumero.AsString;




    txtNumero.Text:= _dm.cdsMovColetanumero.AsString;
    lblResponsaval.Caption:= _dm.cdsMovColetaresponsavel.AsString;
    lblVeiculo.Caption:=     _dm.cdsMovColetaveiculo.AsString;
    lblDataColeta.Caption:=  _dm.cdsMovColetadatacoleta.Text;
    lblOperadorColeta.Caption:= _dm.cdsmovColetaoperador.asstring;
    lblPlaca.Caption:=  _dm.cdsMovColetaplaca.AsString;
    lblConfirmacao.Caption:= _dm.cdsMovColetadataconfirmacao.AsString;
    lblTotColeta.Caption:=   formatfloat('##0.00',_dm.cdsMovColetatotalitroscoletados.Asfloat);

    txtDescricao.Text:= _dm.cdsMovAnalisedescricao.AsString;
    txtFrequencia.Text:= _dm.cdsMovAnalisefrequencia.AsString;
    txtRespAnalise.Text:=_dm.cdsMovAnaliseresponsavel.AsString;
    txtProcedimento.Text:=_dm.cdsMovAnaliseprocedimento.AsString;
    txtAcaoCorretiva.Text:= _dm.cdsMovAnaliseacaocorretiva.AsString;
    lblNrAnalise.Caption:=_dm.cdsMovAnalisenumero.AsString;

    atualizarTotais(numeroAnalise);







   if(_dm.cdsMovAnaliseconfirmada.AsString='N')then
   begin
    pnlDadosColeta.Enabled:=true;
    pnlInfAnalise.Enabled:=true;
    pnlDadosAnalise.Enabled:=true;

    btnConfirmar.Enabled:=true;
    btnAlterarDados.Enabled:=true;

   end
   else
   begin


    pnlDadosColeta.Enabled:=false;
    pnlInfAnalise.Enabled:=false;
    pnlDadosAnalise.Enabled:=false;

    btnConfirmar.Enabled:=false;
    btnAlterarDados.Enabled:=false;

   end;

    if(_dm.cdsMovAnalisefinalizada.AsString='S')then
    txtStatus.Text:='Finalizada'
    else
    txtStatus.Text:='Aberta';



    //verifica permissão de usuário
    if(_dm.cdsSenhasajustaranalise.AsString='N')then
    begin
    application.MessageBox('Usuário não tem permissão para alterar os dados da análise','Alerta',MB_ICONEXCLAMATION+MB_OK);

    pnlDadosColeta.Enabled:=false;
    pnlInfAnalise.Enabled:=false;
    pnlDadosAnalise.Enabled:=false;

    btnConfirmar.Enabled:=false;
    btnAlterarDados.Enabled:=false;

    end;




frm.Close;
end;

procedure T_frmAnaliseColeta.btnAlterarDadosClick(Sender: TObject);
begin
      if(_dm.cdsAnaliseinc.AsString='')then
      exit;








      _frmDefinirDadosAnalise:=T_frmDefinirDadosAnalise.create(self);


      _frmDefinirDadosAnalise.txtFornecedor.Text:=_dm.cdsAnalisefornecedor.asstring;
      _frmDefinirDadosAnalise.txtData.date:=_dm.cdsAnalisedatacoleta.Asdatetime;
      _frmDefinirDadosAnalise.txtTemperatura.value:=_dm.cdsAnalisetemperatura.AsCurrency;
      _frmDefinirDadosAnalise.txtDornic.Value:=_dm.cdsAnalisedornic.ascurrency;
      _frmDefinirDadosAnalise.txtGordura.Value:=_dm.cdsAnalisegordura.AsCurrency;
      _frmDefinirDadosAnalise.txtProteina.Value:=_dm.cdsAnaliseproteina.ascurrency;
      _frmDefinirDadosAnalise.txtCrioscopia.Value:=_dm.cdsAnalisecrioscopia.ascurrency;
      _frmDefinirDadosAnalise.txtDensidade.value:=_dm.cdsAnaliseDensidade.ascurrency;
      _frmDefinirDadosAnalise.txtCusto.value:=_dm.cdsAnalisecusto.ascurrency;
      _frmDefinirDadosAnalise.txtAgua.value:=_dm.cdsAnaliseagua.ascurrency;
       _frmDefinirDadosAnalise.txtQtd.Value:= _dm.cdsAnalisequantidade.AsCurrency;

      if(_dm.cdsAnaliseantibiotico.Text='S')then
      _frmDefinirDadosAnalise.cboAntibiotico.itemindex:=0
      else
      _frmDefinirDadosAnalise.cboAntibiotico.itemindex:=1;


      if(_dm.cdsAnalisefosfatse.Text='S')then
      _frmDefinirDadosAnalise.cboFosfatse.ItemIndex:=0
      else
       _frmDefinirDadosAnalise.cboFosfatse.ItemIndex:=1;


      if(_dm.cdsAnaliseperoxidase.Text='S')then
      _frmDefinirDadosAnalise.cboPeroxidase.ItemIndex:=0
      else
      _frmDefinirDadosAnalise.cboPeroxidase.ItemIndex:=1;


      if(_dm.cdsAnalisesoda.Text='S')then
      _frmDefinirDadosAnalise.cboSoda.ItemIndex:=0
      else
      _frmDefinirDadosAnalise.cboSoda.ItemIndex:=1;



      if(_dm.cdsAnaliseamido.Text='S')then
      _frmDefinirDadosAnalise.cboAmido.ItemIndex:=0
      else
      _frmDefinirDadosAnalise.cboAmido.ItemIndex:=1;



      if(_dm.cdsAnalisenaoconforme.Text='S')then
      _frmDefinirDadosAnalise.cboNaoconforme.ItemIndex:=0
      else
      _frmDefinirDadosAnalise.cboNaoconforme.ItemIndex:=1;



      if(_dm.cdsAnalisealizarol.Text='S')then
      _frmDefinirDadosAnalise.cboAlizarol.ItemIndex:=0
      else
       _frmDefinirDadosAnalise.cboAlizarol.ItemIndex:=1;


      if(_dm.cdsAnaliseperoxido.Text='S')then
      _frmDefinirDadosAnalise.cboPeroxido.ItemIndex:=0
       else
       _frmDefinirDadosAnalise.cboPeroxido.ItemIndex:=1;



      _frmDefinirDadosAnalise.txtcodtipoleite.Text:=_dm.cdsAnalisecodigotipoleite.asstring;
      _frmDefinirDadosAnalise.txtdesctipoleite.Text:=_dm.cdsAnalisetipoleite.asstring;





      if(_dm.cdsSenhasajustaranalise.AsString='N')then
      begin
      _frmDefinirDadosAnalise.pnlDados1.Enabled:=false;
      _frmDefinirDadosAnalise.pnlDados2.Enabled:=false;

      end;


      if(btnAlterarDados.Enabled=false)then
     _frmDefinirDadosAnalise.btnSalvar.Enabled:=false
     else
     _frmDefinirDadosAnalise.btnSalvar.Enabled:=true;


      _frmDefinirDadosAnalise.showmodal;
       atualizarTotais(lblNrAnalise.Caption);

      _frmDefinirDadosAnalise.release;

end;

procedure T_frmAnaliseColeta.BitBtn5Click(Sender: TObject);
begin
modalresult:=-1;
end;


procedure T_frmAnaliseColeta.BitBtn6Click(Sender: TObject);
begin

if(_dm.cdsMovAnaliseconfirmada.AsString<>'S')then
exit;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsfiliais.Close;
    _dm.sdsfiliais.close;
    _dm.sdsfiliais.commandtext:='SELECT * FROM filiais WHERE grupo='+quotedstr(glb_grupo)+' and codigofilial='+quotedstr(copy(cbofilial.Text,1,5))+' limit 1';
    _dm.sdsfiliais.execsql;
    _dm.cdsfiliais.Open;
    _dm.cdsfiliais.Refresh;

  rvImpressao.SetParam('empresa', _dm.cdsFiliaisempresa.AsString);
  rvImpressao.SetParam('descricao',txtdescricao.Text);
  rvImpressao.SetParam('frequencia',txtFrequencia.Text);
  rvImpressao.SetParam('procedimento',txtProcedimento.Text);
  rvImpressao.SetParam('acCorretiva',txtAcaoCorretiva.Text);
  rvImpressao.SetParam('responsavel',txtRespAnalise.Text);
  rvImpressao.SetParam('numero',lblNrAnalise.caption);


  rvImpressao.SetParam('preenchido',_dm.cdsMovAnaliseoperador.AsString);
  rvImpressao.SetParam('aprovada',_dm.cdsMovAnaliseoperadorconfirmacao.AsString);
  rvImpressao.SetParam('entregue',_dm.cdsMovAnalisedataconfirmacao.AsString);
  rvImpressao.SetParam('pLogo',_dm2.cdsImagenslogomarca.AsString);


  rvImpressao.Execute;

end;

procedure T_frmAnaliseColeta.BitBtn7Click(Sender: TObject);
begin

      if(_dm.cdsMovAnaliseconfirmada.AsString='S')then
       begin
           Application.MessageBox('Análise já confirmada, não é possível excluir! ','Alerta',MB_ICONEXCLAMATION+MB_ok);
           exit;
       end;



      _frmLogin:=T_frmLogin.Create(self);

      glb_campo:='ajustaranalise';
      _frmLogin.lblfuncao.Caption:='Excluir análise em aberto';
       _frmLogin.ShowModal();

       if(glb_permissao='S')then
       begin

       if(Application.MessageBox('Deseja excluir análise?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
       exit;

         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao.Sql.Clear;
         _dm.qrPadrao.Sql.Add('delete from movanalise where numero='+quotedstr(_dm.cdsmovAnalisenumero.AsString));
         _dm.qrPadrao.ExecSQL();


      {
         _dm.ConnecDm.Connected:=false;
         _dm.qrPadrao.Sql.Clear;
         _dm.qrPadrao.Sql.Add('delete from analise where numero='+quotedstr(_dm.cdsmovAnalisenumero.AsString));
         _dm.qrPadrao.ExecSQL();

         }
         _dm.cdsMovAnalise.Close;
         _dm.cdsMovAnalise.open;
         _dm.cdsMovAnalise.refresh;

         Application.MessageBox('Excluido com sucesso!','Confirmação',MB_ICONEXCLAMATION+MB_ok);


       end;


       _frmLogin.Release;


end;

procedure T_frmAnaliseColeta.btnConfirmarClick(Sender: TObject);
begin

if _dm.cdsAnalise.RecordCount=0 then
exit;

  _dm.ConnecDm.Connected:=false;
  _dm.qrpadrao.SQL.Clear;
  _dm.qrpadrao.SQL.Add(' select count(1) as total from analise where codigotipoleite=""');
  _dm.qrpadrao.SQL.Add(' and numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
  _dm.qrpadrao.open;

if(_dm.qrpadrao.FieldByName('total').AsInteger>0)then
begin
  Application.MessageBox('Existem leites sem o tipo definido','Alerta',MB_ICONWARNING+MB_ok);
 exit;
end;




_frmlogin:=T_frmlogin.create(self);
glb_campo:='confirmaranalise';  //confirmaranalise

_frmlogin.lblfuncao.Caption:='Confirmar análise e liberar para conferência';
_frmlogin.showmodal();

if(glb_permissao='S')then
begin

 if(Application.MessageBox('Após a confirmação não será possível alterar dados. Deseja continuar?','Alerta',MB_ICONQUESTION+MB_YESNO)=IDno)then
 exit;


  _dm.ConnecDm.Connected:=false;
  _dm.qrpadrao.SQL.Clear;
  _dm.qrpadrao.SQL.Add(' update movanalise set confirmada="S", dataconfirmacao=current_date,operadorconfirmacao='+quotedstr(_frmlogin.txtUsuario.Text));
  _dm.qrpadrao.SQL.Add(' where numero='+quotedstr(_dm.cdsMovAnalisenumero.AsString));
  _dm.qrpadrao.execsql;

 _dm.cdsMovAnalise.Close;
 _dm.cdsMovAnalise.Open;
 _dm.cdsMovAnalise.refresh;

  Application.MessageBox('Análise confirmada com sucesso!','Alerta',MB_ICONINFORMATION+MB_OK);

 pnlDadosColeta.Enabled:=false;
 btnconfirmar.Enabled:=false;
// btnAlterarDados.Enabled:=false;

end
else
begin
Application.MessageBox('Análise não confirmada!','Alerta',MB_ICONINFORMATION+MB_OK);
exit;
end;

_frmlogin.release;


end;

procedure T_frmAnaliseColeta.BitBtn8Click(Sender: TObject);
begin

  _dm.ConnecDm.Connected:=false;
  _dm.cdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.Close;
  _dm.sdsPadraoAnalise.CommandText:='select * from padroesanaliseleite';
  _dm.sdsPadraoAnalise.ExecSQL();
  _dm.cdsPadraoAnalise.Open;
  _dm.cdsPadraoAnalise.Refresh;

_frmPreencherPadrao:=T_frmPreencherPadrao.Create(self);
_frmPreencherPadrao.ShowModal;
_frmPreencherPadrao.Release;







end;

procedure T_frmAnaliseColeta.dbGridAbrirColetaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With dbGridAbrirColeta.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(dbGridAbrirColeta.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 dbGridAbrirColeta.DefaultDrawDataCell(Rect, dbGridAbrirColeta.Columns[DataCol].Field, State);
end;

end;

procedure T_frmAnaliseColeta.dbGridAnaliseDblClick(Sender: TObject);
begin
//  if(btnAlterarDados.Enabled=true)then
  btnAlterarDadosClick(Sender);

end;

procedure T_frmAnaliseColeta.dbGridAnaliseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With dbGridAnalise.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(dbGridAnalise.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 dbGridAnalise.DefaultDrawDataCell(Rect, dbGridAnalise.Columns[DataCol].Field, State);
end;

end;

procedure T_frmAnaliseColeta.FiltrarClick(Sender: TObject);
var
filtro:string;
begin

case rgTipo.ItemIndex of
0: filtro:=' AND datacoleta BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',dataConsutaIni.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',dataConsultaFim.Date))+' AND confirmada='+quotedstr(cboconfirmada.Text);
1: filtro:=' AND dataconfirmacao BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',dataConsutaIni.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',dataConsultaFim.Date))+' AND confirmada='+quotedstr(cboconfirmada.Text);
2: filtro:=' AND numero='+quotedstr(editNumero.Text);
end;

                 _dm.ConnecDm.Connected:=false;
                 _dm.cdsMovColeta.Close;
                 _dm.sdsMovColeta.CommandText:='SELECT * FROM movcoleta WHERE codigofilial ='+quotedstr(copy(cbofilial.Text,1,5))+' AND operador='+quotedstr(glb_usuario)+filtro;
                 _dm.sdsMovColeta.ExecSQL;
                 _dm.cdsMovColeta.Open;
                 _dm.cdsMovColeta.refresh;

end;

procedure T_frmAnaliseColeta.FormShow(Sender: TObject);
begin
FormatSettings.DecimalSeparator:='.';

    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('SELECT descricao,empresa,fantasia,codigofilial FROM filiais WHERE grupo='+quotedstr(glb_grupo));
    _dm.qrpadrao.Open;

     cbofilial.Items.Clear;
    _dm.qrpadrao.first;
    while not _dm.qrpadrao.eof do
    begin
     cbofilial.Items.Add(_dm.qrpadrao.FieldByName('Codigofilial').AsString+'-'+_dm.qrpadrao.FieldByName('fantasia').AsString);

    _dm.qrpadrao.next;
    end;



cbofilial.Text:=glb_filial;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsAnalise.Close;
    _dm.sdsAnalise.Close;
    _dm.sdsAnalise.CommandText:='select * from analise where numero=0 limit 0';
    _dm.sdsAnalise.execsql;
    _dm.cdsAnalise.Open;
    _dm.cdsAnalise.Refresh;
end;

procedure T_frmAnaliseColeta.gridAbrirAnaliseDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridAbrirAnalise.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridAbrirAnalise.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridAbrirAnalise.DefaultDrawDataCell(Rect, gridAbrirAnalise.Columns[DataCol].Field, State);
end;

end;

procedure T_frmAnaliseColeta.rgTipoClick(Sender: TObject);
begin
    if(rgTipo.ItemIndex=2)then
    begin
    pnlNumero.Visible:=true;
    editNumero.Text:='';
    editNumero.SetFocus;
    end
    else
    pnlNumero.Visible:=false;
end;

procedure T_frmAnaliseColeta.rgTipoPesqClick(Sender: TObject);
begin

case rgTipoPesq.ItemIndex of
  0:
  begin
     pnlbuscaNumero.Visible:=false;
     pnlBuscaData.Visible:=true;
  end;
  1:
  begin
     pnlbuscaNumero.Visible:=false;
     pnlBuscaData.Visible:=true;
  end;
   2:
  begin
     pnlbuscaNumero.Visible:=true;
     pnlBuscaData.Visible:=false;
  end;
end;



end;

procedure T_frmAnaliseColeta.RvCustomConnection1EOF(
  Connection: TRvCustomConnection; var Eof: Boolean);
begin
eof:=_dm.cdsAnalise.Eof;
end;

procedure T_frmAnaliseColeta.RvCustomConnection1GetCols(
  Connection: TRvCustomConnection);
begin
Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmAnaliseColeta.RvCustomConnection1GetRow(
  Connection: TRvCustomConnection);
begin
 Connection.WriteStrData('', _dm2.cdsImagenslogomarca.AsString);
end;

procedure T_frmAnaliseColeta.RvDataSetConnection2EOF(
  Connection: TRvCustomConnection; var Eof: Boolean);
begin

eof:=_dm.cdsMovAnalise.Eof;
end;

procedure T_frmAnaliseColeta.RvDataSetConnection2GetCols(
  Connection: TRvCustomConnection);
begin
Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmAnaliseColeta.RvDataSetConnection2GetRow(
  Connection: TRvCustomConnection);
begin

Connection.WriteStrData('', _dm2.cdsImagenslogomarca.AsString);
_dm.cdsMovAnalise.next;
end;

end.




