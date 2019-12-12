unit frmRelVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RpRave, RpCon, RpConDS, RpDefine,
  RpBase, RpSystem, Vcl.StdCtrls, Vcl.Buttons, Data.FMTBcd, Vcl.Mask,
  RxToolEdit, Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  T_frmRelVendas = class(TForm)
    BitBtn1: TBitBtn;
    data1: TDateEdit;
    data2: TDateEdit;
    RvPrelVendas: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    RvSystem1: TRvSystem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RvPvendastodos: TRvProject;
    RvDataSetConnection2: TRvDataSetConnection;
    RvSystem2: TRvSystem;
    chkgeral: TRadioButton;
    chkdocumento: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmRelVendas: T_frmRelVendas;

implementation

{$R *.dfm}
uses
main,dm2,dm,clipbrd;

procedure T_frmRelVendas.BitBtn1Click(Sender: TObject);
var
sql:string;
begin




      if(chkdocumento.Checked =true)then
      begin

         sql:='SELECT codigo,produto,((-1) * qtdvendida) AS qtdvendida,documento,'+
      '(SELECT codigo FROM vendaarquivo  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1 UNION ALL SELECT codigo FROM venda  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1 ) AS codigovenda,'+
      '(SELECT produto FROM vendaarquivo  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1 UNION ALL SELECT produto FROM venda  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1) AS produtovenda,'+
      '(SELECT quantidade FROM vendaarquivo  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1 UNION ALL SELECT quantidade FROM venda  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1) AS quantidadevenda,'+
      '(SELECT (total-ratdesc) FROM vendaarquivo  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1 UNION ALL SELECT (total-ratdesc) FROM venda  WHERE codigo=v.codigopreproducao AND v.documento=documento LIMIT 1) AS total'+

      ' FROM vendaprodlaticinios AS v'+
      ' WHERE DATA between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+'  ORDER BY documento';


      _dm2.ConnecDm2.Connected:=true;
      _dm2.cdsRelvenda.Close;
      _dm2.sdsrelvenda.CommandText:=sql;
      _dm2.sdsrelvenda.ExecSQL();
      _dm2.cdsRelvenda.Open;
      _dm2.cdsRelvenda.refresh;




       RvPrelVendas.SetParam('data1',data1.Text);
       RvPrelVendas.SetParam('data2',data2.Text);
       RvPrelVendas.Execute;
      end;



       if(chkgeral.Checked =true)then
      begin

      sql:= '  SELECT codigo,produto,SUM((-1) * qtdvendida) AS qtdvendida '+
            '  FROM vendaprodlaticinios  WHERE DATA between '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
            '  GROUP BY codigo ORDER BY produto';


      _dm2.ConnecDm2.Connected:=true;
      _dm2.cdsvendageral.Close;
      _dm2.sdsvendageral.CommandText:=sql;
      _dm2.sdsvendageral.ExecSQL();
      _dm2.cdsvendageral.Open;
      _dm2.cdsvendageral.refresh;

       RvPvendastodos.SetParam('data1',data1.Text);
       RvPvendastodos.SetParam('data2',data2.Text);
       RvPvendastodos.Execute;
      end;
end;

end.
