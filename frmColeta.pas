unit frmColeta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RxToolEdit, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, RxCurrEdit, RDprint, RpBase,
  RpSystem, RpCon, RpConDS, RpDefine, RpRave, Vcl.Menus, RxCtrls;

type
  T_frmColeta = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    txtNumero: TEdit;
    Label3: TLabel;
    dataAbertura: TDateEdit;
    Label4: TLabel;
    dataConfirmacao: TDateEdit;
    Label5: TLabel;
    txtResponsavel: TEdit;
    Label6: TLabel;
    txtPlaca: TEdit;
    Label7: TLabel;
    txtVeiculo: TEdit;
    btnNova: TBitBtn;
    btnAbrir: TBitBtn;
    pnlRodape: TPanel;
    gridColeta: TDBGrid;
    btnConfColeta: TBitBtn;
    pnlSubTotal: TPanel;
    txtTotalLeite: TCurrencyEdit;
    Label8: TLabel;
    BitBtn3: TBitBtn;
    pnlAcoes: TPanel;
    Panel4: TPanel;
    lblTipoOp: TLabel;
    GroupBox1: TGroupBox;
    BitBtn4: TBitBtn;
    txtPlacaLanc: TEdit;
    txtRespLanc: TEdit;
    txtVeicLanc: TEdit;
    dataAberturaLanc: TDateEdit;
    dataConfLanc: TDateEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Bevel1: TBevel;
    btnalterar: TBitBtn;
    BitBtn8: TBitBtn;
    pnlAbrirColeta: TPanel;
    Panel5: TPanel;
    Label14: TLabel;
    dbGridAbrirColeta: TDBGrid;
    Panel6: TPanel;
    dataConsutaIni: TDateEdit;
    dataConsultaFim: TDateEdit;
    cboConfirmada: TComboBox;
    Filtrar: TBitBtn;
    BitBtn11: TBitBtn;
    rgTipo: TRadioGroup;
    txtCodResp: TEdit;
    txtCodVeic: TEdit;
    pnlNumero: TPanel;
    editNumero: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    pnlIncColetaFor: TPanel;
    Panel3: TPanel;
    txtFornecedor: TEdit;
    BitBtn12: TBitBtn;
    txtQtd: TCurrencyEdit;
    Label19: TLabel;
    Label20: TLabel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    txtCodFor: TEdit;
    Label21: TLabel;
    pnlBtnAcoes: TPanel;
    btnInc: TBitBtn;
    btnAlt: TBitBtn;
    btnExc: TBitBtn;
    Label22: TLabel;
    dataColeta: TDateEdit;
    cbofilial: TComboBox;
    Label23: TLabel;
    rvpImpColeta: TRvProject;
    RvDColeta: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    RvClogo: TRvCustomConnection;
    Label24: TLabel;
    cboReservatorio: TComboBox;
    Panel7: TPanel;
    memoReservatorio: TMemo;
    Label25: TLabel;
    popImpColeta: TPopupMenu;
    Impdadoscoleta1: TMenuItem;
    ImpColetaporreservatrios1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    rvpReservatorio: TRvProject;
    rvSReserv: TRvSystem;
    rvDsColetaReserv: TRvDataSetConnection;
    procedure gridColetaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnNovaClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FiltrarClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure dbGridAbrirColetaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnAbrirClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure btnIncClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure btnAltClick(Sender: TObject);
    procedure btnExcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfColetaClick(Sender: TObject);
    procedure RvClogoEOF(Connection: TRvCustomConnection; var Eof: Boolean);
    procedure RvClogoGetRow(Connection: TRvCustomConnection);
    procedure RvClogoGetCols(Connection: TRvCustomConnection);
    procedure Impdadoscoleta1Click(Sender: TObject);
    procedure ImpColetaporreservatrios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmColeta: T_frmColeta;
  frm:Tform;
  acao:string='N';

implementation

{$R *.dfm}
uses
dm,dm2,main,frmColetores,frmVeiculos,frmFornecedores,clipbrd;
function calcularleite(numero:string):double;
begin
    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.add('SELECT SUM(totalcoletado) AS total FROM COLETA WHERE numero='+quotedstr(_dm.cdsMovColetanumero.AsString));
    _dm.qrpadrao.open;

     result:= _dm.qrpadrao.FieldByName('total').AsFloat;

end;

function calcularTotalReserv(numero:string):string;
var
 reservatorios:string;
begin


           //totaliza as quantidades do reservatório
     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.sql.clear;
     _dm.qrPadrao.sql.add('SELECT SUM(totalcoletado) AS total, reservatorio FROM coleta  WHERE numero ='+quotedstr(numero)+' GROUP BY reservatorio');
     _dm.qrPadrao.open;

     _dm.qrPadrao.First;
     while not _dm.qrPadrao.Eof do
     begin

        reservatorios:=reservatorios+'R. 0'+_dm.qrPadrao.FieldByName('reservatorio').AsString+': '+formatcurr('#,#0.00', _dm.qrPadrao.FieldByName('total').AsCurrency)+'     ';


     _dm.qrPadrao.Next;
     end;

     result:=reservatorios;


end;




procedure T_frmColeta.btnExcClick(Sender: TObject);
begin

     if(txtNumero.Text='0')then
     exit;


    if( application.MessageBox('Excluir lançamento?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDno)then
     exit;

     _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('DELETE FROM coleta WHERE id ='+quotedstr(_dm.cdsColetaid.AsString));
    _dm.qrPadrao.ExecSQL();

    _dm.cdsColeta.close;
    _dm.cdsColeta.Open;
    _dm.cdsColeta.refresh;

    txtTotalLeite.Value:= calcularleite(txtNumero.Text);


end;

procedure T_frmColeta.BitBtn11Click(Sender: TObject);
begin



    _dm.ConnecDm.Connected:=false;
    _dm.cdsColeta.Close;
    _dm.sdsColeta.CommandText:='SELECT * FROM COLETA WHERE numero='+quotedstr(_dm.cdsMovColetanumero.AsString);
    _dm.sdsColeta.ExecSQL();
    _dm.cdsColeta.open;
    _dm.cdsColeta.Refresh;


              if( _dm.cdsMovColetanumero.AsString='')then
               begin
                application.MessageBox('Nenhuma coleta encontrada!','Alerta',MB_ICONWARNING+MB_OK);
                exit;
               end;


              txtNumero.Text:=      _dm.cdsMovColetanumero.AsString;
              txtResponsavel.Text:= _dm.cdsMovColetaresponsavel.AsString;
              txtVeiculo.Text:=     _dm.cdsMovColetaveiculo.AsString;
              txtPlaca.Text:=       _dm.cdsMovColetaplaca.AsString;
              dataAbertura.Date:=   _dm.cdsMovColetadatacoleta.AsDateTime;
              dataConfirmacao.Date:=_dm.cdsMovColetadataconfirmacao.AsDateTime;
              btnalterar.Visible:=true;

              txtTotalLeite.Value:= calcularleite(txtNumero.Text);

              if(_dm.cdsMovColetaconfirmada.AsString='S')then
              begin

                 pnlBtnAcoes.Enabled:=false;
                 btnConfColeta.Enabled:=false;
                 btnalterar.Enabled:=false;
              end
              else
              begin
               pnlBtnAcoes.Enabled:=true;
               btnConfColeta.Enabled:=true;
               btnalterar.Enabled:=true;
              end;


  _dm.ConnecDm.Connected:=false;
  _dm.cdsFiliais.Close;
  _dm.sdsFiliais.CommandText:='select * from filiais where codigofilial='+quotedstr(copy(cbofilial.Text,1,5))+' and grupo='+quotedstr(glb_grupo);
  _dm.sdsFiliais.ExecSQL();
  _dm.cdsFiliais.Open;
  _dm.cdsFiliais.Refresh;

   memoReservatorio.Text:= calcularTotalReserv(txtNumero.Text);

   frm.Close;

end;

procedure T_frmColeta.BitBtn12Click(Sender: TObject);
begin

  _frmFornecedores:=T_frmFornecedores.Create(self);
  _frmFornecedores.ShowModal();
   txtFornecedor.Text:= _dm.cdsForempresa.AsString;
   txtCodFor.Text:= _dm.cdsForCodigo.AsString;
   txtQtd.SetFocus;
  _frmFornecedores.Release;


end;

procedure T_frmColeta.BitBtn13Click(Sender: TObject);
begin




if(dataColeta.Text='  /  /   ')then
begin
   dataColeta.date:=now;
end;



if(dataColeta.Date< dataAbertura.Date)then
begin
       application.MessageBox('Data da coleta não pode ser menor que a data de abertura','Alerta',MB_ICONWARNING+MB_OK);
      exit;
end;



  if(acao='N')then
  begin
    if(txtQtd.Value=0)then
    begin
      application.MessageBox('Informe a quantidade!','Alerta',MB_ICONWARNING+MB_OK);
      exit;
    end;


    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('INSERT INTO coleta (numero,codigofornecedor,fornecedor,data,reservatorio,totalcoletado) VALUES (');
    _dm.qrPadrao.SQL.Add(quotedstr(txtNumero.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtCodFor.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(txtFornecedor.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',dataColeta.Date))+',');
    _dm.qrPadrao.SQL.Add(quotedstr(cboReservatorio.Text)+',');
    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtQtd.Value))+')');
    _dm.qrPadrao.ExecSQL();

    txtCodFor.Text:='';
    txtFornecedor.Text:='';
    txtQtd.Value:=0;

    _dm.cdsColeta.close;
    _dm.cdsColeta.Open;
    _dm.cdsColeta.refresh;

    txtTotalLeite.Value:= calcularleite(txtNumero.Text);
    memoReservatorio.Text:=calcularTotalReserv(txtnumero.Text);
  end;

  if(acao='A')then
  begin

         if(txtQtd.Value=0)then
        begin
          application.MessageBox('Informe a quantidade!','Alerta',MB_ICONWARNING+MB_OK);
        end;

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('UPDATE coleta SET ');
    _dm.qrPadrao.SQL.Add(' codigofornecedor='+quotedstr(txtCodFor.Text)+',');
    _dm.qrPadrao.SQL.Add(' fornecedor='+quotedstr(txtFornecedor.Text)+', data='+quotedstr(formatdatetime('yyyy-mm-dd',dataColeta.Date))+',');
    _dm.qrPadrao.SQL.Add('totalcoletado='+quotedstr(formatfloat('#,#0.00',txtQtd.Value)));
    _dm.qrPadrao.SQL.Add(' WHERE id='+quotedstr(_dm.cdsColetaid.AsString)+' and numero='+quotedstr(txtNumero.Text));
    _dm.qrPadrao.ExecSQL();

    txtFornecedor.Text:='';
    txtQtd.Value:=0;

    _dm.cdsColeta.close;
    _dm.cdsColeta.Open;
    _dm.cdsColeta.refresh;

    txtTotalLeite.Value:= calcularleite(txtNumero.Text);
     frm.close;
  end;



end;

procedure T_frmColeta.BitBtn14Click(Sender: TObject);
begin
frm.Close;
end;

procedure T_frmColeta.btnConfColetaClick(Sender: TObject);
begin

    Application.MessageBox('Após a confirmação não será possível alterar os dados!','Mensagem',MB_ICONINFORMATION+MB_ok);



      if(calcularleite(txtnumero.Text)=0)then
      begin
      Application.MessageBox('Não foram feitos lançamentos de coletas!','Mensagem',MB_ICONINFORMATION+MB_ok);
      exit;
      end;

      if(Application.MessageBox('Confirmar digitação da coleta?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
      exit;

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.sql.clear;
      _dm.qrPadrao.sql.add('UPDATE movcoleta SET');
      _dm.qrPadrao.sql.add(' dataconfirmacao='+quotedstr(formatdatetime('yyyy-mm-dd',now)));
      _dm.qrPadrao.sql.add(' ,confirmada='+quotedstr('S'));
      _dm.qrPadrao.sql.add(' ,totalitroscoletados='+quotedstr(currtostr(txttotalleite.Value)));
      _dm.qrPadrao.sql.add(' where numero='+quotedstr(txtNumero.Text));
      _dm.qrPadrao.execsql;

     _dm.ConnecDm.Connected:=false;
     _dm.cdsMovColeta.Close;
     _dm.sdsMovColeta.CommandText:='SELECT * FROM movcoleta WHERE  numero='+quotedstr(txtNumero.Text);
     _dm.sdsMovColeta.ExecSQL;
     _dm.cdsMovColeta.Open;
     _dm.cdsMovColeta.refresh;


     //totaliza as quantidades do reservatório
     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.sql.clear;
     _dm.qrPadrao.sql.add('SELECT SUM(totalcoletado) AS total, reservatorio FROM coleta  WHERE numero ='+quotedstr(txtNumero.Text)+' GROUP BY reservatorio');
     _dm.qrPadrao.open;


      memoReservatorio.Text:=calcularTotalReserv(txtnumero.Text);

      Application.MessageBox('Coleta finalizada com sucesso!','Mensagem',MB_ICONINFORMATION+MB_ok);


        pnlBtnAcoes.Enabled:=false;
        btnConfColeta.Enabled:=false;
        btnalterar.Enabled:=false;







end;

procedure T_frmColeta.btnIncClick(Sender: TObject);
begin

dataColeta.Date:= now ;

  acao:='N';
  if(txtNumero.Text='0')then
  exit;

    frm:=Tform.create(self);

    frm.Width:=515;
    frm.Height:=299;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlIncColetaFor.Parent:=frm;
    pnlIncColetaFor.visible:=true;
    pnlIncColetaFor.Align:=alClient;
    txtFornecedor.Text:='';
    txtCodFor.Text:='';
    txtQtd.Value:=0;


    frm.ShowModal;


end;

procedure T_frmColeta.BitBtn3Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmColeta.BitBtn4Click(Sender: TObject);
begin

      if(acao='N')then
       begin

       if (txtRespLanc.Text='')then
     begin
       Application.MessageBox('Informe o responsável!','Pergunta',MB_ICONEXCLAMATION+MB_ok);
       exit;
     end;

       if (txtVeicLanc.Text='')then
       begin
       Application.MessageBox('Informe o veículo!','Pergunta',MB_ICONEXCLAMATION+MB_ok);
       exit;
       end;



                 _dm.ConnecDm.Connected:=false;
                 _dm.qrPadrao.SQL.clear;
                 _dm.qrPadrao.SQL.Add('INSERT INTO movcoleta (');
                 _dm.qrPadrao.SQL.Add('datacoleta,codigoresp,responsavel,codigoveiculo,veiculo,placa,operador,codigofilial) VALUES (');
                 _dm.qrPadrao.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',dataAberturaLanc.Date))+',');
                 _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsColetoresid.AsString)+',');
                 _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsColetoresnome.AsString)+',');
                 _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsVeiculosinc.AsString)+',');
                 _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsVeiculosveiculo.AsString)+',');
                 _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsVeiculosplaca.AsString)+',');
                 _dm.qrPadrao.SQL.Add(quotedstr(glb_usuario)+',');
                 _dm.qrPadrao.SQL.Add(quotedstr(copy(cbofilial.Text,1,5))+')');
                 _dm.qrPadrao.ExecSQL;


                 _dm.ConnecDm.Connected:=false;
                 _dm.cdsMovColeta.Close;
                 _dm.sdsMovColeta.CommandText:='SELECT * FROM movcoleta WHERE codigofilial ='+quotedstr(glb_filial)+' AND operador='+quotedstr(glb_usuario)+' ORDER BY numero DESC LIMIT 1';
                 _dm.sdsMovColeta.ExecSQL;
                 _dm.cdsMovColeta.Open;
                 _dm.cdsMovColeta.refresh;


              txtNumero.Text:=      _dm.cdsMovColetanumero.AsString;
              txtResponsavel.Text:= _dm.cdsMovColetaresponsavel.AsString;
              txtVeiculo.Text:=     _dm.cdsMovColetaveiculo.AsString;
              txtPlaca.Text:=       _dm.cdsMovColetaplaca.AsString;
              dataAbertura.Date:=   _dm.cdsMovColetadatacoleta.AsDateTime;
              btnalterar.Visible:=true;


                  _dm.cdsColeta.close;
                  _dm.sdsColeta.close;
                  _dm.sdsColeta.commandtext:='select * from coleta where numero='+_dm.cdsMovColetanumero.AsString;
                  _dm.sdsColeta.ExecSQL();
                  _dm.cdsColeta.Open;
                  _dm.cdsColeta.refresh;

                   txtTotalLeite.Value:= calcularleite(txtNumero.Text);

                  pnlBtnAcoes.Enabled:=true;
                  btnConfColeta.Enabled:=true;
                  btnalterar.Enabled:=true;

              frm.Close;


       end;

       if(acao='A')then
       begin

       if (txtRespLanc.Text='')then
       begin
         Application.MessageBox('Informe o Responsável!','Pergunta',MB_ICONEXCLAMATION+mb_ok);
         exit;
       end;

       if (txtVeicLanc.Text='')then
       begin
           Application.MessageBox('Informe o veículo!','Pergunta',MB_ICONEXCLAMATION+mb_ok);
           exit;
       end;


       if(Application.MessageBox('Confirmar alteração?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
        exit;
                 _dm.ConnecDm.Connected:=false;
                 _dm.qrPadrao.SQL.clear;
                 _dm.qrPadrao.SQL.Add('UPDATE movcoleta SET ');
                 _dm.qrPadrao.SQL.Add(' datacoleta='+quotedstr(formatdatetime('yyyy-mm-dd',dataAberturaLanc.Date))+',');
                 _dm.qrPadrao.SQL.Add(' codigoresp='+quotedstr(txtCodResp.Text)+',');
                 _dm.qrPadrao.SQL.Add(' responsavel='+quotedstr(txtRespLanc.Text)+',');
                 _dm.qrPadrao.SQL.Add(' codigoveiculo='+quotedstr(txtCodVeic.Text)+',');
                 _dm.qrPadrao.SQL.Add(' veiculo='+quotedstr(txtVeicLanc.Text)+',');


                if(dataConfLanc.text<>'  /  /    ')then _dm.qrPadrao.SQL.Add('dataconfirmacao='+quotedstr(dataConfLanc.text)+',');

                 _dm.qrPadrao.SQL.Add('placa='+quotedstr(txtPlacaLanc.Text)+' where numero ='+quotedstr(txtNumero.Text)+' and codigofilial='+quotedstr(glb_filial));

                 _dm.qrPadrao.ExecSQL;

                 _dm.ConnecDm.Connected:=false;
                 _dm.cdsMovColeta.Close;
                 _dm.sdsMovColeta.CommandText:='SELECT * FROM movcoleta WHERE codigofilial ='+quotedstr(glb_filial)+' AND operador='+quotedstr(glb_usuario)+' AND numero='+quotedstr(txtNumero.Text)+'ORDER BY numero DESC LIMIT 1';
                 _dm.sdsMovColeta.ExecSQL;
                 _dm.cdsMovColeta.Open;
                 _dm.cdsMovColeta.refresh;


              txtNumero.Text:=      _dm.cdsMovColetanumero.AsString;
              txtResponsavel.Text:= _dm.cdsMovColetaresponsavel.AsString;
              txtVeiculo.Text:=     _dm.cdsMovColetaveiculo.AsString;
              txtPlaca.Text:=       _dm.cdsMovColetaplaca.AsString;
              dataAbertura.Date:=   _dm.cdsMovColetadatacoleta.AsDateTime;
              btnalterar.Visible:=true;


              frm.Close;



       end;

end;

procedure T_frmColeta.BitBtn5Click(Sender: TObject);
begin
    _frmColetores:=T_frmColetores.Create(self);
    _frmColetores.ShowModal;
     txtRespLanc.Text:=_dm.cdsColetoresnome.AsString;
    _frmColetores.Release;
end;

procedure T_frmColeta.BitBtn6Click(Sender: TObject);
begin
    _frmveiculos:=T_frmveiculos.Create(self);
    _frmveiculos.ShowModal;
     txtVeicLanc.Text:=_dm.cdsVeiculosveiculo.AsString;
     txtPlacaLanc.Text:=_dm.cdsVeiculosplaca.AsString;
    _frmveiculos.Release;
end;

procedure T_frmColeta.btnAbrirClick(Sender: TObject);
begin
    frm:=Tform.create(self);

    frm.Width:=520;
    frm.Height:=410;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlAbrirColeta.Parent:=frm;
    pnlAbrirColeta.visible:=true;
    pnlAbrirColeta.Align:=alClient;

    //dataConfLanc.enabled:=false;
    //dataAberturaLanc.Date:=now;
    frm.ShowModal;


end;

procedure T_frmColeta.btnalterarClick(Sender: TObject);
begin
acao:='A';

    frm:=Tform.create(self);

    frm.Width:=485;
    frm.Height:=320;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlAcoes.Parent:=frm;
    pnlAcoes.visible:=true;
    pnlAcoes.Align:=alClient;

    lblTipoOp.Caption:='Alteração';
    dataAberturaLanc.Date:=now;
    txtPlacaLanc.Text:=_dm.cdsMovColetaplaca.AsString;
    txtCodResp.Text:=_dm.cdsMovColetacodigoresp.AsString;
    txtRespLanc.Text:=_dm.cdsMovColetaresponsavel.AsString;
    txtCodVeic.Text:= _dm.cdsMovColetacodigoveiculo.AsString;
    txtVeicLanc.Text:=_dm.cdsMovColetaveiculo.AsString;
    dataAberturaLanc.Date:=dataAbertura.Date;
    dataAberturaLanc.readonly:=false;
    dataConfLanc.Enabled:=true;
    dataConfLanc.Date:=dataConfirmacao.Date;
    frm.ShowModal;


end;

procedure T_frmColeta.BitBtn8Click(Sender: TObject);
begin
frm.Close;
end;

procedure T_frmColeta.btnAltClick(Sender: TObject);
begin
acao:='A';

     if(txtNumero.Text='0') then
     exit;

     if(_dm.cdsColetaid.AsString='')then
     exit;

    frm:=Tform.create(self);

    frm.Width:=515;
    frm.Height:=260;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlIncColetaFor.Parent:=frm;
    pnlIncColetaFor.visible:=true;
    pnlIncColetaFor.Align:=alClient;
    panel3.Caption:='Alteração';
    txtFornecedor.Text:=_dm.cdsColetafornecedor.AsString;
    txtCodFor.Text:=_dm.cdsColetacodigofornecedor.AsString;
    txtQtd.value:=_dm.cdsColetatotalcoletado.asfloat;


    frm.ShowModal;



end;

procedure T_frmColeta.btnNovaClick(Sender: TObject);
begin
acao:='N';

    frm:=Tform.create(self);

    frm.Width:=485;
    frm.Height:=320;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlAcoes.Parent:=frm;
    pnlAcoes.visible:=true;
    pnlAcoes.Align:=alClient;

    txtPlacaLanc.Text:='';
    txtRespLanc.Text:='';
    txtVeicLanc.Text:='';
    dataConfLanc.enabled:=false;
    dataAberturaLanc.Date:=now;
    frm.ShowModal;


end;

procedure T_frmColeta.dbGridAbrirColetaDrawColumnCell(Sender: TObject;
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

procedure T_frmColeta.FiltrarClick(Sender: TObject);
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

procedure T_frmColeta.FormShow(Sender: TObject);
begin

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
   //define provisoriamente a filial como a filial logada
   cbofilial.Text:=glb_filial;





   _dm.ConnecDm.Connected:=false;
    _dm.cdsColeta.Close;
    _dm.sdsColeta.CommandText:='SELECT * FROM COLETA WHERE numero='+quotedstr('0');
    _dm.sdsColeta.ExecSQL();
    _dm.cdsColeta.open;
    _dm.cdsColeta.Refresh;
end;

procedure T_frmColeta.gridColetaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridColeta.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridColeta.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridColeta.DefaultDrawDataCell(Rect, gridColeta.Columns[DataCol].Field, State);
end;
end;

procedure T_frmColeta.ImpColetaporreservatrios1Click(Sender: TObject);
begin

if(_dm.cdsMovColetaconfirmada.AsString<>'S')then
begin
  Application.MessageBox('Coleta ainda não foi confirmada!','Informação',MB_ICONEXCLAMATION+MB_OK);
  exit;
end;


rvpReservatorio.SetParam('numero',txtNumero.Text);
rvpReservatorio.SetParam('veiculo',txtVeiculo.Text);
rvpReservatorio.SetParam('responsavel',txtResponsavel.Text);
rvpReservatorio.SetParam('placa',txtPlaca.Text);
rvpReservatorio.SetParam('data',_dm.cdsMovColetadataconfirmacao.AsString);
rvpReservatorio.SetParam('total',formatfloat('#,#0.00',txtTotalLeite.value));

rvpReservatorio.Execute;

end;

procedure T_frmColeta.Impdadoscoleta1Click(Sender: TObject);
var
linha:integer;
begin

if(_dm.cdsMovColetaconfirmada.AsString<>'S')then
begin
  Application.MessageBox('Coleta ainda não foi confirmada!','Informação',MB_ICONEXCLAMATION+MB_OK);
  exit;
end;

  rvpImpColeta.SetParam('empresa', _dm.cdsFiliaisempresa.AsString);
  rvpImpColeta.SetParam('resp',txtResponsavel.Text);
  rvpImpColeta.SetParam('veiculo',txtVeiculo.Text);
  rvpImpColeta.SetParam('datacoleta',_dm.cdsMovColetadatacoleta.AsString);
  rvpImpColeta.SetParam('filial',copy(cbofilial.Text,1,5));
  rvpImpColeta.SetParam('numero',txtNumero.Text);
  rvpImpColeta.SetParam('placa',txtPlaca.Text);
  rvpImpColeta.SetParam('dataconf',_dm.cdsMovColetadataconfirmacao.AsString);
  rvpImpColeta.Execute;
  rvpImpColeta.Close;

end;

procedure T_frmColeta.rgTipoClick(Sender: TObject);
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

procedure T_frmColeta.RvClogoEOF(Connection: TRvCustomConnection;
  var Eof: Boolean);
begin
eof := _dm2.cdsImagens.Eof;
end;

procedure T_frmColeta.RvClogoGetCols(Connection: TRvCustomConnection);
begin

  Connection.WriteField('logo', dtString, 120, '', '');

end;

procedure T_frmColeta.RvClogoGetRow(Connection: TRvCustomConnection);
begin

  Connection.WriteStrData('', _dm2.cdsImagenslogomarca.AsString);

end;

end.







