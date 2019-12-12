unit frmDestinarReservatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBGrids, Vcl.Buttons;

type
  T_frmDestinarReservatorio = class(TForm)
    Panel13: TPanel;
    Label28: TLabel;
    lblVeiculo: TLabel;
    lblPlaca: TLabel;
    gridSilo: TStringGrid;
    Panel1: TPanel;
    Label1: TLabel;
    gridDest: TDBGrid;
    Panel2: TPanel;
    txtQtdSilo: TCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    cboDestino: TComboBox;
    BitBtn1: TBitBtn;
    txtSaldoTotal: TCurrencyEdit;
    BitBtn2: TBitBtn;
    cboReservatorio2: TComboBox;
    Label4: TLabel;
    BitBtn3: TBitBtn;
    txtTotalInformado: TCurrencyEdit;
    Label5: TLabel;
    cboReservatorio: TEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure gridDestDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure gridSiloClick(Sender: TObject);
    procedure gridSiloSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridDestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    linha:integer;
  end;

var
  _frmDestinarReservatorio: T_frmDestinarReservatorio;

implementation

{$R *.dfm}
uses
dm,main,clipbrd,frmConferenciaQtd;

procedure atualizarStatus(acao:string);
begin
     //atualizar totalDigitado
     if(acao='AT')then
     begin
      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.clear;
      _dm.qrPadrao.SQL.Add('SELECT SUM(quantidade) AS total FROM movdepositos WHERE nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip));
      _dm.qrPadrao.open();

     end;

     //atualizar grid de lançamento
      if(acao='AG')then
      begin
     _dm.ConnecDm.Connected:=false;
     _dm.cdsMovDepositos.Close;
     _dm.sdsMovDepositos.CommandText:= 'SELECT * FROM movdepositos WHERE '+
     ' nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip);
     _dm.sdsMovDepositos.ExecSQL();
     _dm.cdsMovDepositos.Open;
     _dm.cdsMovDepositos.Refresh;


      end;

      //deletar os itens do grid de lançamentos
      if(acao='D')then
      begin

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add('DELETE FROM movdepositos WHERE nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip));
      _dm.qrPadrao.execsql;

      end;

end;



procedure T_frmDestinarReservatorio.BitBtn1Click(Sender: TObject);
var
totalreservatorioA,totalreservatorioD,restante:currency;
begin
    if not(txtQtdSilo.Value>0)then
    exit;

    if(cboDestino.Text='') or (cboReservatorio.Text='')then
    exit;

     //verifica se ainda tem quantidade suficiente na boca
      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add('SELECT count(quantidade) AS total FROM movdepositos WHERE nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N" ');
     _dm.qrPadrao.SQL.Add(' and codigodeposito = abs('+quotedstr(copy(cbodestino.text,1,5))+') and reservatorioveiculo=abs('+quotedstr(cboreservatorio.Text)+') and codigofilial='+quotedstr(glb_filial));
     _dm.qrPadrao.open;

     if(_dm.qrPadrao.FieldByName('total').Asinteger > 0)then
     begin
       Application.MessageBox('Já foram lançados valores desse reservatório para esse depósito!','Alerta',MB_ICONEXCLAMATION+MB_OK);
       exit;
     end;


    //verifica se ainda tem quantidade suficiente na boca
      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add('SELECT SUM(qtdconferida) AS total FROM analise WHERE numero = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND reservatorio=abs('+copy(cboReservatorio.Text,1,3)+')');
      _dm.qrPadrao.open;

       totalreservatorioA:= _dm.qrPadrao.FieldByName('total').AsCurrency;

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add('SELECT SUM(quantidade) AS total FROM movdepositos WHERE nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N" AND reservatorioveiculo=ABS('+copy(cboReservatorio.Text,1,3)+') AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip));
      _dm.qrPadrao.open;

      totalreservatorioD:= _dm.qrPadrao.FieldByName('total').AsCurrency;

      restante:= totalreservatorioA - totalreservatorioD;



       if(txtQtdSilo.Value > restante)then
       begin
         showmessage('Restam apenas '+currtostr(restante)+' litros nesse reservatório!' );
         exit;
       end;

   //insere dados
     _dm.ConnecDm.Connected:=false;
     _dm.qrPadrao.SQL.Clear;
     _dm.qrPadrao.SQL.Add('INSERT INTO movdepositos (codigodeposito,deposito,reservatorioveiculo,nranalise,nrcoleta,data,codigofilial,quantidade,operador,ip) VALUES (');
     _dm.qrPadrao.SQL.Add('abs('+copy(cboDestino.Text,1,5)+'),');
     _dm.qrPadrao.SQL.Add('(SELECT identificacao FROM depositos WHERE id=abs('+copy(cboDestino.Text,1,5)+'))'+',');
     _dm.qrPadrao.SQL.Add('abs('+copy(cboReservatorio.Text,1,3)+'),');
     _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsMovAnalisenumero.AsString)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsMovAnalisenumerocoleta.AsString)+',');
     _dm.qrPadrao.SQL.Add('CURRENT_DATE,');
     _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(currtostr(txtQtdSilo.Value))+',');
     _dm.qrPadrao.SQL.Add(quotedstr(glb_usuario)+',');
     _dm.qrPadrao.SQL.Add(quotedstr(glb_ip)+')');
     _dm.qrPadrao.ExecSQL;

     _dm.ConnecDm.Connected:=false;
     _dm.cdsMovDepositos.Close;
     _dm.sdsMovDepositos.CommandText:= 'SELECT id,codigodeposito,deposito,reservatorioveiculo,nranalise,nrcoleta,data,codigofilial,SUM(quantidade) as quantidade,operador,ip,encerrado FROM movdepositos WHERE '+
     ' nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip)+
     ' GROUP BY reservatorioveiculo, deposito ORDER BY deposito';
     _dm.sdsMovDepositos.ExecSQL();
     _dm.cdsMovDepositos.Open;
     _dm.cdsMovDepositos.Refresh;


     {
      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.clear;
      _dm.qrPadrao.SQL.Add('SELECT SUM(quantidade) AS total FROM movdepositos WHERE nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip));
      _dm.qrPadrao.open();
      }

      atualizarStatus('AT');


     txtTotalInformado.Value:=_dm.qrPadrao.FieldByName('total').AsCurrency;
     txtQtdSilo.Value:=0;
     txtQtdSilo.SetFocus;
end;

procedure T_frmDestinarReservatorio.BitBtn2Click(Sender: TObject);
begin
      glb_continuar:='N';
      ModalResult:=-1;

end;

procedure T_frmDestinarReservatorio.BitBtn3Click(Sender: TObject);
begin

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.clear;
      _dm.qrPadrao.SQL.Add('SELECT SUM(quantidade) AS total FROM movdepositos WHERE nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip));
      _dm.qrPadrao.open();

     if(_dm.qrPadrao.FieldByName('total').AsCurrency <> txtSaldoTotal.Value)then
     begin
       Application.MessageBox('Ainda existem quantidades a destinar!','Alerta',MB_ICONEXCLAMATION+MB_OK);
       exit;
     end;

  glb_continuar:='S';
  modalresult:=-1;

end;

procedure T_frmDestinarReservatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    if(glb_continuar = 'N')then
    atualizarStatus('D');

 end;

procedure T_frmDestinarReservatorio.FormShow(Sender: TObject);
var
I,li:integer;
total:currency;
begin
FormatSettings.DecimalSeparator:='.';
//FormatSettings.ThousandSeparator := '';


   //preenche combobox silos
   _dm.ConnecDm.Connected:=false;
   _dm.cdsdepositos.Close;
   _dm.sdsDepositos.CommandText:='select * from depositos where codigofilial='+quotedstr(glb_filial)+' order by id';
   _dm.sdsDepositos.ExecSQL();
   _dm.cdsdepositos.Open;
   _dm.cdsdepositos.Refresh;


   cboDestino.Items.Clear;
   _dm.cdsdepositos.first;
   while not _dm.cdsdepositos.Eof do
   begin

    cboDestino.Items.add(  _dm.cdsdepositosid.AsString.PadLeft(5,'0')  +'-'+_dm.cdsdepositosidentificacao.AsString);

   _dm.cdsdepositos.Next;
   end;


   //preenche stringgrid


      lblVeiculo.Caption:='Veículo: '+_dm.cdsMovColetaveiculo.AsString;
      lblPlaca.Caption:='Placa: '+_dm.cdsMovColetaplaca.AsString;

      gridSilo.ColWidths[0]:=112;
      gridSilo.Cells[0,0]:='Origem (Reservatório)';

      gridSilo.ColWidths[1]:=80;
      gridSilo.Cells[1,0]:='Tot. Litors';



      txtQtdSilo.Value:=total;

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.clear;
      _dm.qrPadrao.SQL.Add('SELECT LPAD(reservatorio,3,"0") AS reservatorio,SUM(qtdconferida) AS qtdconferida FROM analise WHERE numero='+quotedstr(_dm.cdsMovanalisenumero.asstring)+' GROUP BY reservatorio');
      _dm.qrPadrao.open();


  //    cboReservatorio.Items.Clear;

      li:=1;
      _dm.qrPadrao.First;
      while not _dm.qrPadrao.Eof do
      begin

         //   cboReservatorio.Items.add(_dm.qrPadrao.FieldByName('reservatorio').AsString.PadLeft(2,'0'));

            gridSilo.RowCount:=gridSilo.RowCount+1;
            gridSilo.Cells[0,li]:=  'Reservatório: '+_dm.qrPadrao.FieldByName('reservatorio').AsString;
            gridSilo.Cells[1,li]:=  formatcurr('#,#0.00',_dm.qrPadrao.FieldByName('qtdconferida').ascurrency);

            li:=li+1;
            gridSilo.RowCount:=li;

      _dm.qrPadrao.Next;
      end;

     {
      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.clear;
      _dm.qrPadrao.SQL.Add('SELECT SUM(quantidade) AS total FROM movdepositos WHERE nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip));
      _dm.qrPadrao.open();
      }

     atualizarStatus('AT');
     txtTotalInformado.Value:=_dm.qrPadrao.FieldByName('total').AsCurrency;

    {
     _dm.ConnecDm.Connected:=false;
     _dm.cdsMovDepositos.Close;
     _dm.sdsMovDepositos.CommandText:= 'SELECT * FROM movdepositos WHERE '+
     ' nranalise = '+quotedstr(_dm.cdsMovAnalisenumero.AsString)+' AND encerrado="N"  AND operador='+quotedstr(glb_usuario)+' AND ip='+quotedstr(glb_ip);
     _dm.sdsMovDepositos.ExecSQL();
     _dm.cdsMovDepositos.Open;
     _dm.cdsMovDepositos.Refresh;
     }

     atualizarStatus('AG');
     txtQtdSilo.SetFocus;

end;

procedure T_frmDestinarReservatorio.gridDestDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridDest.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridDest.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridDest.DefaultDrawDataCell(Rect, gridDest.Columns[DataCol].Field, State);
end;

end;

procedure T_frmDestinarReservatorio.gridDestKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if(Key=VK_DELETE)then
   begin
      if(application.MessageBox('Exluir destino informado?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDNO)then
      exit;

       _dm.ConnecDm.Connected:=false;
       _dm.qrPadrao.SQL.Clear;
       _dm.qrPadrao.SQL.Add('DELETE FROM movdepositos WHERE id ='+quotedstr(_dm.cdsMovDepositosid.AsString));
       _dm.qrPadrao.ExecSQL();

       _dm.cdsMovDepositos.Close;
       _dm.cdsMovDepositos.Open;
       _dm.cdsMovDepositos.Refresh;

       atualizarStatus('AT');

   end;
end;

procedure T_frmDestinarReservatorio.gridSiloClick(Sender: TObject);
begin
    cboReservatorio.Text:=copy(gridSilo.Cells[0,linha],15,3);
    txtQtdSilo.SetFocus;
end;

procedure T_frmDestinarReservatorio.gridSiloSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
linha:=aRow;
end;

end.
