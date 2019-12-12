unit frmInsumosdeproducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, RxToolEdit, RxCurrEdit, RpCon, RpConDS,
  RpBase, RpSystem, RpDefine, RpRave;

type
  T_frmInsumosdeproducao = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnlInsumo: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    rvpImpConsumo: TRvProject;
    rvsConsumo: TRvSystem;
    rvDsConsumo: TRvDataSetConnection;
    RvCConcumoInsumos: TRvCustomConnection;
    pnlQtdNecessario: TPanel;
    lblQtdNecessaria: TLabel;
    txtQtdnecessaria: TCurrencyEdit;
    txtQtdAdicional: TCurrencyEdit;
    lblAdicao: TLabel;
    pnlqtdproduzido: TPanel;
    txtqtdprod: TCurrencyEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtqtdaddprod: TCurrencyEdit;
    rgAjuste: TRadioGroup;
    lblinsumo: TLabel;
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RvCConcumoInsumosEOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
    procedure RvCConcumoInsumosGetCols(Connection: TRvCustomConnection);
    procedure RvCConcumoInsumosGetRow(Connection: TRvCustomConnection);
    procedure BitBtn2Click(Sender: TObject);
    procedure rgAjusteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmInsumosdeproducao: T_frmInsumosdeproducao;
  frm:tform;

implementation

{$R *.dfm}
uses

dm2,dm,main,frmProducaoDiaria;


procedure T_frmInsumosdeproducao.BitBtn1Click(Sender: TObject);
begin

    if(_dm2.cdsMovproducaoencerrada.AsString='S')then
    begin
    application.MessageBox('Produção já foi encerrada!','Alerta',MB_ICONQUESTION+mb_ok);
    exit;
    end;


     _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.SQL.Add(' SELECT * FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' AND codigo='+quotedstr(_dm2.cdsMateriacodigomateria.AsString));
    _dm2.qrPadrao.SQL.Add(' and codigofilial='+quotedstr(glb_filial));
    _dm2.qrPadrao.Open;


    lblinsumo.Caption:=_dm2.cdsMateriadescricaomateria.AsString;
    txtQtdnecessaria.value:= _dm2.qrPadrao.FieldByName('quantidade').ascurrency;
    txtqtdprod.Value:= _dm2.cdsMateriatotalmateriautilizada.AsCurrency;


    frm:=Tform.create(self);

    frm.Width:=577;
    frm.Height:=365;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;



    pnlInsumo.Parent:=frm;
    pnlInsumo.visible:=true;
    pnlInsumo.Align:=alClient;
    frm.ShowModal;


    pnlInsumo.Visible:=true;



end;

procedure T_frmInsumosdeproducao.BitBtn2Click(Sender: TObject);
var
soroutilizado:currency;
sqlgrupo:string;
begin






 _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.SQL.Add('select sum(quantidadesoro) as total_soro from producaoitens where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigofilial='+quotedstr(glb_filial));
    _dm2.qrPadrao.open;

   soroutilizado:= _dm2.qrPadrao.fieldbyname('total_soro').ascurrency;


   sqlgrupo:='';
   sqlgrupo:=' SELECT codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,';
   if(_dm.cdsConfigLaticinioparametroleite.AsString='N')then
    sqlgrupo:= sqlgrupo+' quantidademateria, sum(totalmateriautilizada) as totalmateriautilizada,sum((quantidade * quantidademateria) * custounitario) as custounitario,DATA,operador '
    else
    sqlgrupo:= sqlgrupo+' quantidademateria, sum(totalmateriautilizada) as totalmateriautilizada,sum((totalmateriautilizada) * custounitario) as custounitario,DATA,operador ';


   _dm2.cdsMateria.Close;
   _dm2.sdsMateria.commandtext:=sqlgrupo+ //' SELECT codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,'+
   // ' quantidademateria, sum(totalmateriautilizada) as totalmateriautilizada,sum((quantidade * quantidademateria) * custounitario) as custounitario,DATA,operador '+
   //' quantidademateria, sum(totalmateriautilizada) as totalmateriautilizada,sum((totalmateriautilizada) * custounitario) as custounitario,DATA,operador '+
   ' FROM producaomovmateria where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' group by codigomateria ';
   _dm2.sdsMateria.execsql;
   _dm2.cdsMateria.Open;
   _dm2.cdsMateria.Refresh;


    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
   // _dm2.qrPadrao.SQL.add(' SELECT format(l.utilizado,2) as utilizado_l,  format(c.utilizado,2) utilizado_c,format(m.manteigautilizada,2) as manteigautilizada  FROM dadosproducaoleite AS l, dadosproducaocreme AS c, dadosproducaomanteiga AS m '+

   _dm2.qrPadrao.SQL.add(
    ' SELECT FORMAT(l.utilizado,2) AS utilizado_l,(l.utilizado *(SELECT custo FROM produtos WHERE codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+')) AS custo_leite,'+
    ' FORMAT(c.utilizado,2) utilizado_c,(c.utilizado*(SELECT custo FROM produtos WHERE codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraocreme.AsString)+')) AS custo_creme,'+
    ' FORMAT(m.manteigautilizada,2) AS manteigautilizada,(m.manteigautilizada*(SELECT custo FROM produtos WHERE codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraomanteiga.AsString)+')) AS custo_manteiga'+
    ' FROM dadosproducaoleite AS l, dadosproducaocreme AS c, dadosproducaomanteiga AS m'+
     ' WHERE l.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
     ' AND c.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
     ' AND m.numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
     ' AND l.codigofilial='+quotedstr(glb_filial)+
     ' AND c.codigofilial='+quotedstr(glb_filial)+
     ' AND m.codigofilial='+quotedstr(glb_filial));

    _dm2.qrPadrao.open;



   rvpImpConsumo.SetParam('filial',glb_filial);
   rvpImpConsumo.SetParam('numero',_dm2.cdsMovproducaonumero.AsString);
   rvpImpConsumo.SetParam('data',_dm2.cdsMovproducaodata.AsString);
   rvpImpConsumo.SetParam('totalLeite',_dm2.qrPadrao.FieldByName('utilizado_l').AsString);
   rvpImpConsumo.SetParam('totalCreme',_dm2.qrPadrao.FieldByName('utilizado_c').AsString);
   rvpImpConsumo.SetParam('totalsoro',formatcurr('##0.00',soroutilizado));
   rvpImpConsumo.SetParam('totalManteiga',_dm2.qrPadrao.FieldByName('manteigautilizada').AsString);


   rvpImpConsumo.SetParam('totalVLeite','R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('custo_leite').ascurrency));
   rvpImpConsumo.SetParam('totalVCreme','R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('custo_creme').ascurrency));
   rvpImpConsumo.SetParam('totalVsoro',formatcurr('##0.00',soroutilizado));
   rvpImpConsumo.SetParam('totaVmanteiga','R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('custo_manteiga').ascurrency));



   rvpImpConsumo.Execute;


     _dm2.ConnecDm2.Connected;
    _dm2.cdsMateria.Close;
    _dm2.sdsMateria.commandtext:=_frmProducaoDiaria.sql2+//'select codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,'+
  // ' quantidademateria, totalmateriautilizada,(totalmateriautilizada * custounitario) as custounitario,DATA,operador from producaomovmateria'+
    ' where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString);
    _dm2.sdsMateria.execsql();
    _dm2.cdsMateria.open;
    _dm2.cdsMateria.refresh;




end;

procedure T_frmInsumosdeproducao.BitBtn3Click(Sender: TObject);
begin




    if(rgAjuste.ItemIndex=1)then
    begin

    if(txtQtdAdicional.Value=0)then
    begin
      application.MessageBox('Informe a quantidade!','Alerta',MB_ICONEXCLAMATION+mb_ok);
      exit;
    end;


    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.SQL.add('update producaomovmateria set quantidademateria=quantidademateria+('+currtostr(txtQtdAdicional.value)+'),totalmateriautilizada=(quantidade*quantidademateria)'+
    '  where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
    ' and  codigofilial='+quotedstr(glb_filial)+' and codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' and codigomateria='+quotedstr(_dm2.cdsMateriacodigomateria.AsString));
    _dm2.qrPadrao.execsql;

    end
    else if(rgAjuste.ItemIndex=0)then
    begin


    if(txtqtdaddprod.Value=0)then
    begin
      application.MessageBox('Informe a quantidade!','Alerta',MB_ICONEXCLAMATION+mb_ok);
      exit;
    end;

    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrPadrao.SQL.Clear;
    _dm2.qrPadrao.SQL.add('update producaomovmateria set totalmateriautilizada=totalmateriautilizada+('+currtostr(txtqtdaddprod.value)+'),quantidademateria=(totalmateriautilizada/quantidade)  where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
    ' and  codigofilial='+quotedstr(glb_filial)+' and codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString)+' and codigomateria='+quotedstr(_dm2.cdsMateriacodigomateria.AsString));
    _dm2.qrPadrao.execsql;



    end;




   _dm2.cdsMateria.Close;
   _dm2.cdsMateria.Open;
   _dm2.cdsMateria.Refresh;


   pnlInsumo.Visible:=false;
   frm.ModalResult:=-1;

end;

procedure T_frmInsumosdeproducao.BitBtn4Click(Sender: TObject);
begin
frm.ModalResult:=-1;
pnlInsumo.Visible:=false;

end;

procedure T_frmInsumosdeproducao.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure T_frmInsumosdeproducao.DBGrid2CellClick(Column: TColumn);
begin
    _dm2.ConnecDm2.Connected;
    _dm2.cdsMateria.Close;
    //_dm2.sdsMateria.commandtext:='select * from producaomovmateria where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString);

    _dm2.sdsMateria.commandtext:=_frmProducaoDiaria.sql2+{'select codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,totalcustoproducao,'+
   ' quantidademateria, totalmateriautilizada,((quantidade * quantidademateria) * custounitario) as custounitario,DATA,operador from producaomovmateria'+   }
   ' where idproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and codigoproduto='+quotedstr(_dm2.cdsproducaoitenscodigo.AsString);

    _dm2.sdsMateria.execsql();
    _dm2.cdsMateria.open;
    _dm2.cdsMateria.refresh;


end;

procedure T_frmInsumosdeproducao.DBGrid2DrawColumnCell(Sender: TObject;
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

procedure T_frmInsumosdeproducao.rgAjusteClick(Sender: TObject);
begin
      if(rgAjuste.ItemIndex=0)then
      begin
      pnlQtdNecessario.Visible:=false;
      pnlqtdproduzido.Visible:=true;
      end
      else if(rgAjuste.ItemIndex=1)then
      begin
      pnlQtdNecessario.Visible:=true;
      pnlqtdproduzido.Visible:=false;
      end

end;

procedure T_frmInsumosdeproducao.RvCConcumoInsumosEOF(
  Connection: TRvCustomConnection; var Eof: Boolean);
begin
eof:=_dm.cdsfiliais.Eof;
end;

procedure T_frmInsumosdeproducao.RvCConcumoInsumosGetCols(
  Connection: TRvCustomConnection);
begin
 Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmInsumosdeproducao.RvCConcumoInsumosGetRow(
  Connection: TRvCustomConnection);
begin
   Connection.WriteStrData('', _dm2.cdsImagenslogomarca.AsString);
end;

end.



