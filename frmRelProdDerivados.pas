unit frmRelProdDerivados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask, RxToolEdit, RpBase, RpSystem, RpRave, RpDefine, RpCon, RpConDS,
  RpRender, RpRenderPDF;

type
  T_frmRelProdDerivados = class(TForm)
    Panel3: TPanel;
    lbloperacao: TLabel;
    BitBtn1: TBitBtn;
    data1: TDateEdit;
    data2: TDateEdit;
    RvDSpreProd: TRvDataSetConnection;
    rvpProducao: TRvProject;
    rvsProducao: TRvSystem;
    RVcc: TRvCustomConnection;
    RvDSProducaoFinal: TRvDataSetConnection;
    Label1: TLabel;
    RvRenderPDF1: TRvRenderPDF;
    Label2: TLabel;
    txtcodigo: TEdit;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure RVccEOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
    procedure RVccGetCols(Connection: TRvCustomConnection);
    procedure RVccGetRow(Connection: TRvCustomConnection);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRelProdDerivados: T_frmRelProdDerivados;

implementation

{$R *.dfm}
uses dm2,dm,main,clipbrd,frmProdPreProducao;

procedure T_frmRelProdDerivados.BitBtn1Click(Sender: TObject);
var
sql,codigo:string;
begin





sql:=' SELECT pri.lote,CAST(IF(pri.validade="1899-12-30","",pri.validade) AS DATE) AS validade,pd.codigoembalagem,pd.produtoembalagem,pd.id,pd.numeroproducao,pd.embadicionais,pd.codigofilial,pd.codigopreproducao,pri.produto AS prodpreproducao, '+
' pd.codigoderivado,pd.produtoderivado,pd.quantidadeembalagem,pd.operadorreqembadicional,pd.operadorreqemb,pd.embadicinalrequisitada,pd.embrequisitada, '+
'  (SELECT SUM(rp.quantidadeajustada) FROM resumoprodleite rp WHERE rp.numeroproducao=mv.numero AND rp.codigo=pri.codigo ) AS qtdleiteinformada, ';


if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
begin
sql:=sql+'  (SELECT SUM(quantidadeembalagem*quantidade) FROM producaoderivados WHERE numeroproducao=mv.numero AND  codigopreproducao=codigo LIMIT 1) AS quantidadetotal,pd.quantidade,'+
 ' ((SELECT SUM(rp.quantidadeajustada) FROM resumoprodleite rp WHERE rp.numeroproducao=mv.numero AND rp.codigo=pri.codigo ) / '+
' (SELECT SUM(quantidadeembalagem*quantidade) FROM producaoderivados WHERE numeroproducao=mv.numero AND  codigopreproducao=codigo LIMIT 1)) AS rendimento ';
end
else
begin
sql:=sql+'  sum(pri.quantidadeproduzida) as quantidadetotal,pd.quantidade,'+
' ((SELECT SUM(rp.quantidadeajustada) FROM resumoprodleite rp WHERE rp.numeroproducao=mv.numero AND rp.codigo=pri.codigo ) / '+
' sum(pri.quantidadeproduzida)) AS rendimento ';

end;

if(txtcodigo.Text<>'')then
sql:=sql+'  FROM producaoderivados AS pd, producaoitens AS pri, movproducaodiaria AS mv WHERE pd.codigopreproducao='+quotedstr(txtcodigo.text)+' AND pd.quantidade>0 AND mv.datafinalizacao BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.date))+' AND pri.numeroproducao=mv.numero  '
else
sql:=sql+'  FROM producaoderivados AS pd, producaoitens AS pri, movproducaodiaria AS mv WHERE pd.quantidade>0 AND mv.datafinalizacao BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.date))+' AND pri.numeroproducao=mv.numero  ';


sql:=sql+'  AND pd.numeroproducao=mv.numero  AND pri.codigo=pd.codigopreproducao and mv.codigofilial='+quotedstr(glb_filial)+' and mv.encerrada="S" GROUP BY pd.numeroproducao, pri.codigo,pd.codigoderivado ORDER BY pd.numeroproducao,mv.numero ';




     try
     begin
    _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
       _dm2.sdsproducaoderivados.CommandText:= sql;
       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;

     end
     except

     end;


    _dm2.ConnecDm2.Connected;
    _dm2.qrPadrao.SQL.Clear;
    if(txtcodigo.Text<>'')then
    _dm2.qrPadrao.SQL.Add( 'SELECT SUM(rp.quantidadeajustada) AS total_leite FROM movproducaodiaria AS mp, resumoprodleite AS rp WHERE rp.codigo='+quotedstr(txtcodigo.Text)+' AND mp.datafinalizacao BETWEEN "'+formatdatetime('yyyy-mm-dd',data1.date)+'" AND "'+formatdatetime('yyyy-mm-dd',data2.date)+'" AND rp.numeroproducao = mp.numero')
    else
    _dm2.qrPadrao.SQL.Add( 'SELECT SUM(rp.quantidadeajustada) AS total_leite FROM movproducaodiaria AS mp, resumoprodleite AS rp WHERE mp.datafinalizacao BETWEEN "'+formatdatetime('yyyy-mm-dd',data1.date)+'" AND "'+formatdatetime('yyyy-mm-dd',data2.date)+'" AND rp.numeroproducao = mp.numero');


    _dm2.qrPadrao.Open;

       if(_dm2.cdsproducaoderivados.RecordCount=0)then
       begin
         Application.MessageBox('Sem dados no período!','Mensagem',MB_ICONEXCLAMATION+MB_OK);
         exit;
       end;

        rvpProducao.SetParam('data1',data1.Text);
        rvpProducao.SetParam('data2',data2.Text);
        rvpProducao.SetParam('totalleite',formatcurr('##0.00',_dm2.qrPadrao.FieldByName('total_leite').Ascurrency));

        rvpProducao.Execute;

end;

procedure T_frmRelProdDerivados.BitBtn2Click(Sender: TObject);
begin
_frmProdPreProducao:=T_frmProdPreProducao.Create(self);
_frmProdPreProducao.ShowModal;

txtcodigo.Text:= _dm.cdsPrd2codigo.AsString;
//txtcodigo.Text:=  _dm.cdsPrd2descricao.AsString;

_frmProdPreProducao.Release;

end;

procedure T_frmRelProdDerivados.RVccEOF(
  Connection: TRvCustomConnection; var Eof: Boolean);
begin
eof:=_dm2.cdsimagens.Eof;
end;

procedure T_frmRelProdDerivados.RVccGetCols(
  Connection: TRvCustomConnection);
begin
 Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmRelProdDerivados.RVccGetRow(
  Connection: TRvCustomConnection);
begin
  Connection.WriteStrData('',_dm2.cdsImagenslogomarca.AsString);
end;

end.





