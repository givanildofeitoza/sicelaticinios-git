unit frmRelColeta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RxToolEdit, Vcl.Buttons, RDprint, Data.FMTBcd, Datasnap.Provider,
  Data.SqlExpr, Datasnap.DBClient, Data.DB, Vcl.Grids, Vcl.DBGrids, RxCurrEdit;

type
  T_frmRelColeta = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    rgtipodata: TRadioGroup;
    data1: TDateEdit;
    data2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    cboFilial: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    txtFornecedor: TEdit;
    BitBtn3: TBitBtn;
    txtCodFor: TEdit;
    impRelColeta: TRDprint;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1fornecedor: TWideStringField;
    ClientDataSet1total: TFMTBCDField;
    ClientDataSet1totalcusto: TFMTBCDField;
    ClientDataSet1datacoleta: TDateField;
    ClientDataSet1dataconfirmacao: TDateField;
    ClientDataSet1confirmada: TWideStringField;
    BitBtn4: TBitBtn;
    txtcoletado: TCurrencyEdit;
    Label6: TLabel;
    ClientDataSet1numero: TWideStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure impRelColetaBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRelColeta: T_frmRelColeta;

implementation

{$R *.dfm}
uses
dm,main,frmFornecedores,clipbrd;

procedure T_frmRelColeta.BitBtn1Click(Sender: TObject);
var
filtro:string;
linha:integer;
custo,quantidade:currency;
begin
     custo:=0;
     quantidade:=0;
      {
     case rgtipodata.ItemIndex of
    0:filtro:=' where mc.dataconfirmacao between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' and '+quotedstr( formatdatetime('yyyy-mm-dd',data2.date) );
    1:filtro:=' where mc.datacoleta between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' and '+quotedstr( formatdatetime('yyyy-mm-dd',data2.date) );

    end;

    if(cbofilial.Text<>'Todas')then
     filtro:=filtro+' AND mc.codigofilial='+quotedstr(copy(cbofilial.Text,1,5));

     if(txtCodFor.Text<>'')then
     filtro:=filtro + ' AND c.codigofornecedor='+quotedstr(txtCodFor.Text);

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' SELECT c.fornecedor, SUM(c.totalcoletado) AS total,SUM(c.totalcoletado * c.custo) AS totalcusto, mc.datacoleta, mc.dataconfirmacao,mc.confirmada FROM coleta AS c, movcoleta AS mc'+filtro);
    _dm.qrPadrao.SQL.Add(' AND c.numero=mc.numero and mc.confirmada="S" GROUP BY c.fornecedor');
    _dm.qrPadrao.open;

      }
    linha:=7;
      with impRelColeta do
      begin

         TamanhoQteLinhas:=60;
         TamanhoQteColunas:=80;
         OpcoesPreview.Preview:=true;

         abrir;


               ClientDataSet1.first;
               while not ClientDataSet1.eof do
               begin

                  impf(linha,1,ClientDataSet1.FieldByName('fornecedor').AsString,[comp12]);
                  impf(linha,40,formatcurr('#,#0.00',ClientDataSet1total.AsCurrency),[comp12]);
                  impf(linha,52,formatcurr('#,#0.00',ClientDataSet1totalcusto.AsCurrency),[comp12]);
                  inc(linha);


                  custo:= custo+ClientDataSet1totalcusto.AsCurrency;
                  quantidade:=quantidade+ClientDataSet1total.AsCurrency;

                  if(linha>58)then
                  begin
                    linha:=7;
                    Novapagina;
                  end;

                   ClientDataSet1.next;
               end;


               inc(linha,2);
               impf(linha,1,'Total de coletado:',[comp12,negrito]);
               impf(linha,20,formatcurr('#,#0.00',quantidade),[comp12,negrito]);
               inc(linha);
               impf(linha,1,'Total custo:',[comp12,negrito]);
               impf(linha,20,formatcurr('#,#0.00',custo),[comp12,negrito]);
               fechar;

      end;


end;

procedure T_frmRelColeta.BitBtn2Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmRelColeta.BitBtn3Click(Sender: TObject);
begin
_frmFornecedores:=T_frmFornecedores.Create(self);
_frmFornecedores.ShowModal;
 txtFornecedor.Text:=_dm.cdsForrazaosocial.AsString;
 txtCodFor.Text:=_dm.cdsForCodigo.AsString;
 _frmFornecedores.release;
end;

procedure T_frmRelColeta.BitBtn4Click(Sender: TObject);
var
filtro:string;
linha:integer;
custo,quantidade:currency;
begin
     custo:=0;
     quantidade:=0;

     case rgtipodata.ItemIndex of
    0:filtro:=' where mc.dataconfirmacao between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' and '+quotedstr( formatdatetime('yyyy-mm-dd',data2.date) );
    1:filtro:=' where mc.datacoleta between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' and '+quotedstr( formatdatetime('yyyy-mm-dd',data2.date) );

    end;

    if(cbofilial.Text<>'Todas')then
     filtro:=filtro+' AND mc.codigofilial='+quotedstr(copy(cbofilial.Text,1,5));

     if(txtCodFor.Text<>'')then
     filtro:=filtro + ' AND c.codigofornecedor='+quotedstr(txtCodFor.Text);

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add(' SELECT c.numero,c.fornecedor, SUM(c.totalcoletado) AS total,SUM(c.totalcoletado * c.custo) AS totalcusto, mc.datacoleta, mc.dataconfirmacao,mc.confirmada FROM coleta AS c, movcoleta AS mc'+filtro);
    _dm.qrPadrao.SQL.Add(' AND c.numero=mc.numero and mc.confirmada="S" GROUP BY c.fornecedor,c.numero');
    _dm.qrPadrao.open;
    // clipboard.astext:= _dm.qrPadrao.SQL.text;


  ClientDataSet1.Open;
  SQLDataSet1.CommandText:= _dm.qrPadrao.SQL.text;
  SQLDataSet1.execsql;
  ClientDataSet1.Open;
  ClientDataSet1.Refresh;


  ClientDataSet1.first;
               while not ClientDataSet1.eof do
               begin

                  custo:= custo+ClientDataSet1totalcusto.AsCurrency;
                  quantidade:=quantidade+ClientDataSet1total.AsCurrency;

                   ClientDataSet1.next;
               end;


          txtcoletado.Value:=   quantidade;


   {
    linha:=7;
      with impRelColeta do
      begin

         TamanhoQteLinhas:=60;
         TamanhoQteColunas:=80;
         OpcoesPreview.Preview:=true;

         abrir;


               _dm.qrPadrao.first;
               while not _dm.qrPadrao.eof do
               begin

                  impf(linha,1,_dm.qrPadrao.FieldByName('fornecedor').AsString,[comp12]);
                  impf(linha,40,formatcurr('#,#0.00',_dm.qrPadrao.FieldByName('total').AsCurrency),[comp12]);
                  impf(linha,52,formatcurr('#,#0.00',_dm.qrPadrao.FieldByName('totalcusto').AsCurrency),[comp12]);
                  inc(linha);


                  custo:= custo+_dm.qrPadrao.FieldByName('totalcusto').AsCurrency;
                  quantidade:=quantidade+_dm.qrPadrao.FieldByName('total').AsCurrency;

                  if(linha>58)then
                  begin
                    linha:=7;
                    Novapagina;
                  end;

                   _dm.qrPadrao.next;
               end;


               inc(linha,2);
               impf(linha,1,'Total de coletado:',[comp12,negrito]);
               impf(linha,20,formatcurr('#,#0.00',quantidade),[comp12,negrito]);
               inc(linha);
               impf(linha,1,'Total custo:',[comp12,negrito]);
               impf(linha,20,formatcurr('#,#0.00',custo),[comp12,negrito]);
               fechar;

      end; }


end;

procedure T_frmRelColeta.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure T_frmRelColeta.DBGrid1TitleClick(Column: TColumn);
begin
 ClientDataSet1.IndexFieldNames := Column.FieldName
end;

procedure T_frmRelColeta.FormShow(Sender: TObject);
begin
FormatSettings.DecimalSeparator:='.';

    data1.Date:=IncMonth(now,-1);
    data2.Date:=IncMonth(now,1);

      _dm.ConnecDm.Connected:=false;
      _dm.qrPadrao.SQL.Clear;
      _dm.qrPadrao.SQL.Add('select codigofilial,empresa,fantasia from filiais where grupo='+quotedstr(glb_grupo));
       _dm.qrPadrao.open;


        _dm.qrPadrao.first;
        while not  _dm.qrPadrao.eof do
        begin

        cboFilial.Items.Add( _dm.qrPadrao.FieldByName('codigofilial').AsString+' - '+_dm.qrPadrao.FieldByName('fantasia').AsString);
           _dm.qrPadrao.next;
        end;


end;

procedure T_frmRelColeta.impRelColetaBeforeNewPage(Sender: TObject;
  Pagina: Integer);
  var
  tipo:string;
begin
  case rgtipodata.ItemIndex of
    0:tipo:='Data Confirmação: ';
    1:tipo:='Data Coleta: ';

    end;



    with impRelColeta do
    begin
     impf(1,1,'Relatório geral de coletas',[expandido,negrito]);
     impf(2,1,tipo+data1.Text+' até '+data2.Text,[comp12]);
     impf(3,1,'Filial: '+cboFilial.Text,[comp12]);
     impf(4,1,'------------------------------------------------------------------------------------------------',[comp12]);
     impf(5,1,'[Fornecedor                            ][ Qtd. Coletada ][ Custo R$ ]',[comp12,negrito]);
     impf(6,1,'------------------------------------------------------------------------------------------------',[comp12]);
    end;
end;

end.
