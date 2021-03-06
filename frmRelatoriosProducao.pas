unit frmRelatoriosProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RxToolEdit, RpBase, RpSystem, RpCon, RpConDS, RpDefine, RpRave, Vcl.ExtCtrls,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, RxCurrEdit;

type
  T_frmRelatoriosProducao = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    RvPRelProd: TRvProject;
    RvDRelProd: TRvDataSetConnection;
    RvSRelProd: TRvSystem;
    GroupBox1: TGroupBox;
    data1: TDateEdit;
    data2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtcod: TEdit;
    txtprod: TEdit;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    btnimprimir: TBitBtn;
    cdsrelProducao: TClientDataSet;
    dsrelProducao: TDataSetProvider;
    sdsrelProducao: TSQLDataSet;
    dSourcerelProducao: TDataSource;
    cdsrelProducaodataproducao: TDateField;
    cdsrelProducaohoraproducao: TTimeField;
    cdsrelProducaodatafimproducao: TDateField;
    cdsrelProducaohorafimproducao: TTimeField;
    cdsrelProducaocodigo: TWideStringField;
    cdsrelProducaoproduto: TWideStringField;
    cdsrelProducaounidade: TWideStringField;
    cdsrelProducaoquantidadeproduzida: TFMTBCDField;
    cdsrelProducaorendleite: TFMTBCDField;
    cdsrelProducaorendCreme: TFMTBCDField;
    cdsrelProducaorendmanteiga: TFMTBCDField;
    cdsrelProducaoquantidadeleite: TFMTBCDField;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    cboEncerradas: TComboBox;
    qtdleitF: TCurrencyEdit;
    qtdleitI: TCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cdsrelProducaonumeroproducao: TWideStringField;
    txtLeiteEntrada: TCurrencyEdit;
    Label8: TLabel;
    btnresumo: TBitBtn;
    pnlresumo: TPanel;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    lblnomeproduto: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lblperiodo: TLabel;
    txtproducaototal: TCurrencyEdit;
    txtrendimentoleite: TCurrencyEdit;
    txtrendimentocreme: TCurrencyEdit;
    txtrendimentomanteiga: TCurrencyEdit;
    txttotleite: TCurrencyEdit;
    cdsrelProducaoquantidadecreme: TFMTBCDField;
    cdsrelProducaoquantidademanteiga: TFMTBCDField;
    txttotcreme: TCurrencyEdit;
    txttotmanteiga: TCurrencyEdit;
    Label17: TLabel;
    Label18: TLabel;
    Panel1: TPanel;
    Label19: TLabel;
    pnlobs: TPanel;
    Panel3: TPanel;
    memoobs: TMemo;
    cdsrelProducaoparametrorendimento: TFMTBCDField;
    chkagruparprod: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnresumoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    imprimir:string;
    frm:tform;
  end;

var
  _frmRelatoriosProducao: T_frmRelatoriosProducao;

implementation

{$R *.dfm}
 uses
 dm,dm2,main,frmprodutos,frmprodpreproducao,ComObj;
procedure T_frmRelatoriosProducao.BitBtn1Click(Sender: TObject);
var
  PLANILHA : Variant;
  Linha : Integer;
begin
imprimir:='N';

             btnimprimir.Click();
             imprimir:='S';

            try
             cdsrelProducao.Filtered  := False;
             Linha :=2;
             PLANILHA := CreateOleObject('Excel.Application');
             PLANILHA.Caption := 'SICE.net Produtos';
             PLANILHA.Visible := False;
             PLANILHA.WorkBooks.add(1);

             // TITULO DAS COLUNAS
             PLANILHA.Cells[1,1] := 'INICIO';
             PLANILHA.Cells[1,2] := 'HORA';
             PLANILHA.Cells[1,3] := 'FIM';
             PLANILHA.Cells[1,4] := 'HORA';
             PLANILHA.Cells[1,5] := 'C�DIGO';
             PLANILHA.Cells[1,6] := 'PRODUTO';
             PLANILHA.Cells[1,7] := 'UN';
             PLANILHA.Cells[1,8] := 'QTD. PRODUZIDA';
             PLANILHA.Cells[1,9] := 'LEITE UTIL.';
             PLANILHA.Cells[1,10] := 'CREME UTIL.';
             PLANILHA.Cells[1,11] := 'MANTEIGA UTIL.';
             PLANILHA.Cells[1,12] := 'REND. LEITE';
             PLANILHA.Cells[1,13] := 'REND. CREME';
             PLANILHA.Cells[1,14] := 'REND. MANTEIGA';
             PLANILHA.Cells[1,15] := 'OBS:';

             cdsrelProducao.DisableControls;
             cdsrelProducao.First;
                // PRRENCHIMENTO DAS C�LULAS COM OS VALORES DOS CAMPOS DA TABELA
             Try
                While not cdsrelProducao.Eof do
                Begin
                   PLANILHA.Cells[Linha,1]:=  cdsrelProducaodataproducao.AsDateTime;
                   PLANILHA.Cells[linha,2] := cdsrelProducaohoraproducao.asstring;
                   PLANILHA.Cells[linha,3] := cdsrelProducaodatafimproducao.AsDateTime;
                   PLANILHA.Cells[linha,4] := cdsrelProducaohorafimproducao.asstring;
                   PLANILHA.Cells[Linha,5] := cdsrelProducaocodigo.asstring;
                   PLANILHA.Cells[Linha,6] := cdsrelProducaoproduto.asstring;
                   PLANILHA.Cells[Linha,7] := cdsrelProducaounidade.asstring;
                   PLANILHA.Cells[Linha,8] := cdsrelProducaoquantidadeproduzida.asfloat;
                   PLANILHA.Cells[Linha,9] := cdsrelProducaoquantidadeleite.asfloat;
                   PLANILHA.Cells[Linha,10] := cdsrelProducaoquantidadecreme.asfloat;
                   PLANILHA.Cells[Linha,11] := cdsrelProducaoquantidademanteiga.asfloat;
                   PLANILHA.Cells[Linha,12] := cdsrelProducaorendleite.asfloat;
                   PLANILHA.Cells[Linha,13] := cdsrelProducaorendcreme.asfloat;
                   PLANILHA.Cells[Linha,14] := cdsrelProducaorendmanteiga.asfloat;



                     _dm.qrPadrao.SQL.Clear;
                     _dm.qrPadrao.SQL.Add('SELECT observacao FROM movproducaodiaria WHERE numero ='+QuotedStr(cdsrelProducaonumeroproducao.AsString)+' LIMIT 1');
                     _dm.qrPadrao.Open;

                PLANILHA.Cells[Linha,15] := _dm.qrPadrao.FieldByName('observacao').AsString;


                   Linha := Linha + 1;
                  cdsrelProducao.Next;
                  application.ProcessMessages;
                 End;
                 PLANILHA.Columns.AutoFit;

                    // caso queira proteger a planilha com senha

            //     PLANILHA.WorkBooks[1].Sheets[1].Protect(DrawingObjects := True, Contents:=true,
            //     Scenarios := true, Password := '1234');

            //     IF SaveDialog1.Execute then       // colocar um compnente SaveDialog no form
            //        PLANILHA.WorkBooks[1].SaveAs(SaveDialog1.FileName);

                 PLANILHA.Visible := True;
             Finally
                cdsrelProducao.EnableControls;
                PLANILHA := Unassigned;
             end; // TRY

             except on e:exception do begin
             application.messagebox(pchar(e.Message),'Erro',mb_ok+mb_iconexclamation);
             // T_frmmensagens.Mensagem(mensagem, 'E',[mbOk]);
              exit;
             end;
             end; //try

             imprimir:='S';

end;

procedure T_frmRelatoriosProducao.BitBtn2Click(Sender: TObject);
begin
_frmProdPreProducao:=T_frmProdPreProducao.Create(self);
_frmProdPreProducao.ShowModal;

txtcod.Text:= _dm.cdsPrd2codigo.AsString;
txtprod.Text:=  _dm.cdsPrd2descricao.AsString;

_frmProdPreProducao.Release;

end;

procedure T_frmRelatoriosProducao.BitBtn3Click(Sender: TObject);
var
filtroProd:string;
begin
filtroProd:='';

if(chkagruparprod.Checked=true)then
begin
  application.MessageBox('Ao marcar o filtro agrupado por produto, as informa��es de data de produ��o,hora da produ��o, n�mero da produ��o n�o ser�o precisas.','Alerta',MB_ICONWARNING+MB_OK);
end;

    if(txtcod.Text<>'0')then
    filtroProd:=' and p.codigo='+quotedstr(txtcod.Text);

    if(cboEncerradas.Text <> 'Todas')then
    filtroProd:=filtroProd + ' and m.encerrada='+quotedstr(cboEncerradas.Text);


   _dm.ConnecDm.Connected:=false;
   cdsrelProducao.Close;
   sdsrelProducao.CommandText:= 'SELECT p.numeroproducao, (SELECT DATA FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS dataproducao,  '+
    ' (SELECT hora FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horaproducao,'+
    ' (SELECT parametrorendimento FROM '+glb_produtos+' WHERE codigo=p.codigo AND codigofilial=p.codigofilial) AS parametrorendimento,'+
    ' (SELECT datafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS datafimproducao, '+
    ' (SELECT horafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horafimproducao, '+
   ' p.codigo,p.produto,p.unidade,sum(p.quantidadeproduzida) as quantidadeproduzida, '+
   ' IFNULL((sum(p.quantidadeleite)  / sum(p.quantidadeproduzida)),0) AS rendleite, '+
   ' IFNULL((sum(p.quantidadecreme)  / sum(p.quantidadeproduzida)),0) AS rendCreme, ' +
   ' IFNULL((sum(p.quantidademanteiga)  / sum(p.quantidadeproduzida)),0) AS rendmanteiga, '+
   ' SUM(p.quantidadeleite ) as quantidadeleite,'+
   ' SUM(p.quantidadecreme ) as quantidadecreme,'+
   ' SUM(p.quantidademanteiga ) as quantidademanteiga'+
   '  FROM producaoitens AS p, movproducaodiaria AS m WHERE m.data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
   '  AND p.codigofilial='+quotedstr(glb_filial)+
   '  AND p.numeroproducao=m.numero ' +
   '  AND p.codigofilial=m.codigofilial '+
    filtroProd;

  if(chkagruparprod.Checked=true)then
  begin
      sdsrelProducao.CommandText:= sdsrelProducao.CommandText+' GROUP BY  p.codigo ORDER BY p.produto';
  end
  else
  begin
   sdsrelProducao.CommandText:= sdsrelProducao.CommandText+
   '   GROUP BY p.numeroproducao, p.codigo /*HAVING quantidadeleite BETWEEN '+QUOTEDSTR(formatcurr('##0.00',qtdleitI.Value))+' AND '+QUOTEDSTR(formatcurr('##0.00',qtdleitF.Value))+'*/  ORDER BY m.data, m.numero';
   // clipboard.astext:=sdsrelProducao.CommandText;

  end;
    sdsrelProducao.ExecSQL();

    cdsrelProducao.Open;
    cdsrelProducao.Refresh;

    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.sql.Add( ' select SUM(p.quantidadeleite ) as quantidadeleite'+
   '  FROM producaoitens AS p, movproducaodiaria AS m WHERE m.data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
   '  AND p.codigofilial='+quotedstr(glb_filial)+
   '  AND p.numeroproducao=m.numero ' +
   '  AND p.codigofilial=m.codigofilial '+
    filtroProd+
   ' /*  GROUP BY p.numeroproducao, p.codigo HAVING quantidadeleite BETWEEN '+QUOTEDSTR(formatcurr('##0.00',qtdleitI.Value))+' AND '+QUOTEDSTR(formatcurr('##0.00',qtdleitF.Value))+'  ORDER BY m.data, m.numero */'


    );
    _dm.qrPadrao.open();

      qtdleitF.Value:=  _dm.qrPadrao.fieldbyname('quantidadeleite').ascurrency;

end;

procedure T_frmRelatoriosProducao.btnimprimirClick(Sender: TObject);
//var
//filtroProd:string;
begin
{filtroProd:='';



    if(txtcod.Text<>'0')then
   filtroProd:=' and p.codigo='+quotedstr(txtcod.Text);



   _dm.ConnecDm.Connected:=false;
   cdsrelProducao.Close;
   sdsrelProducao.CommandText:= 'SELECT (SELECT DATA FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS dataproducao,  '+
    ' (SELECT hora FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horaproducao,'+
    ' (SELECT datafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS datafimproducao, '+
    ' (SELECT horafinalizacao FROM movproducaodiaria WHERE numero=p.numeroproducao AND codigofilial=p.codigofilial) AS horafimproducao, '+
   ' p.codigo,p.produto,p.unidade,p.quantidadeproduzida, '+
   ' IFNULL((p.quantidadeleite / p.quantidadeproduzida),0) AS rendleite, '+
   ' IFNULL((p.quantidadecreme / p.quantidadeproduzida),0) AS rendCreme, ' +
   ' IFNULL((p.quantidademanteiga / p.quantidadeproduzida),0) AS rendmanteiga, '+
   ' p.quantidadeleite '+
   '  FROM producaoitens AS p, movproducaodiaria AS m WHERE m.data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
   '  AND p.codigofilial='+quotedstr(glb_filial)+
   '  AND p.numeroproducao=m.numero ' +
   '  AND p.codigofilial=m.codigofilial '+
    filtroProd+
   ' and m.encerrada="S" order by m.data, m.numero';
    sdsrelProducao.ExecSQL();
   // clipboard.astext:=sdsrelProducao.CommandText;
    cdsrelProducao.Open;
    cdsrelProducao.Refresh;
                    }


      if(imprimir='S')then
      begin
          RvPRelProd.SetParam('data1',data1.text);
          RvPRelProd.SetParam('data2',data2.text);
          RvPRelProd.Execute;
          imprimir:='S';
      end;

end;

procedure T_frmRelatoriosProducao.btnresumoClick(Sender: TObject);
begin

try
 begin
  if(txtcod.Text='') or (txtcod.Text='0')then
  begin
    application.MessageBox('Infor��o liberada somente por filtragem individual!','Alerta',MB_ICONEXCLAMATION+mb_ok);
    exit;
  end;

        lblnomeproduto.Caption:= txtcod.Text+' - '+txtprod.Text;
        lblperiodo.Caption:= 'De  '+data1.Text+' � '+data2.Text;
        txtproducaototal.Value:=      0;
        txttotleite.Value:=           0;
        txtrendimentoleite.Value:=    0;
        txtrendimentocreme.Value:=    0;
        txtrendimentomanteiga.Value:= 0;


   cdsrelProducao.First;
   while not cdsrelProducao.eof do
   begin


        txtproducaototal.Value:=      txtproducaototal.Value + cdsrelProducaoquantidadeproduzida.AsCurrency;
        txttotleite.Value:=           txttotleite.Value   + cdsrelProducaoquantidadeleite.AsCurrency;
        txttotcreme.Value:=           txttotcreme.Value   + cdsrelProducaoquantidadecreme.AsCurrency;
        txttotmanteiga.Value:=        txttotmanteiga.Value   + cdsrelProducaoquantidademanteiga.AsCurrency;



        txtrendimentoleite.Value:=    txtrendimentoleite.Value + cdsrelProducaorendleite.AsCurrency;
        txtrendimentocreme.Value:=    txtrendimentocreme.Value   + cdsrelProducaorendcreme.AsCurrency;
        txtrendimentomanteiga.Value:= txtrendimentomanteiga.Value  + cdsrelProducaorendmanteiga.AsCurrency;


   cdsrelProducao.Next;
   end;



        txtrendimentoleite.Value:= txttotleite.Value /  txtproducaototal.Value;
        txtrendimentocreme.Value:=   txttotcreme.Value /  txtproducaototal.Value ;
        txtrendimentomanteiga.Value:= txttotmanteiga.Value /  txtproducaototal.Value;




     frm:=Tform.create(self);

          frm.Width:=570;
          frm.Height:=360;
          frm.Position:=poDesktopCenter;
          frm.BorderStyle:=bsDialog;

          pnlresumo.Parent:=frm;
          pnlresumo.visible:=true;
          pnlresumo.Align:=alClient;
          frm.ShowModal;

 end
except

end;


end;

procedure T_frmRelatoriosProducao.DBGrid1DrawColumnCell(Sender: TObject;
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



  {     if Column.Field=cdsrelProducaorendleite then
       begin
             _dm.qrPadrao.SQL.Clear;
             _dm.qrPadrao.SQL.Add('SELECT parametrorendimento FROM '+glb_produtos+' WHERE codigo='+quotedstr(cdsrelProducaocodigo.AsString)+' AND codigofilial='+quotedstr(glb_filial));
             _dm.qrPadrao.open;
        }
             if(cdsrelProducaoparametrorendimento.AsCurrency < cdsrelProducaorendleite.AsCurrency )then
             DBGrid1.Canvas.Font.Color:=clRed;
             dbgrid1.DefaultDrawDataCell(Rect,dbgrid1.columns[datacol].field,state);

     //  end;



end;

end;

procedure T_frmRelatoriosProducao.DBGrid1TitleClick(Column: TColumn);
begin
cdsrelProducao.IndexFieldNames:=Column.FieldName;
end;

procedure T_frmRelatoriosProducao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key=VK_DOWN)then
   begin
   cdsrelProducao.Next;
   data1.SetFocus;
   end;

    if(Key=VK_up)then
   begin
  cdsrelProducao.Prior;
   data1.SetFocus;
   end;

    if(Key=vk_f3) and (cdsrelProducaonumeroproducao.AsString<>'')then
    begin

    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT observacao FROM movproducaodiaria WHERE numero ='+QuotedStr(cdsrelProducaonumeroproducao.AsString)+' LIMIT 1');
     _dm.qrPadrao.Open;



    frm:=Tform.create(self);

    frm.Width:=780;
    frm.Height:=445;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;

    pnlobs.Parent:=frm;
    pnlobs.visible:=true;
    pnlobs.Align:=alClient;

    memoobs.Text:=  _dm.qrPadrao.FieldByName('observacao').AsString;
    frm.ShowModal;

    end;


end;

procedure T_frmRelatoriosProducao.FormShow(Sender: TObject);
begin
imprimir:='S';


                            _dm.ConnecDm.Connected:=false;
                            _dm.qrPadrao.SQL.Clear;
                            _dm.qrPadrao.SQL.add('SELECT quantidade FROM '+glb_produtos+' where codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' and codigofilial='+quotedstr(glb_filial));
                            _dm.qrPadrao.open;

                            txtLeiteEntrada.Value:=  _dm.qrPadrao.FieldByName('quantidade').AsCurrency;
end;

end.





