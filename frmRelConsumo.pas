unit frmRelConsumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  RxToolEdit, Vcl.ExtCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave;

type
  T_frmRelConsumo = class(TForm)
    pnlstatus: TPanel;
    Label1: TLabel;
    dataini: TDateEdit;
    datafim: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    txtProduto: TEdit;
    btnImp: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    RvPConsumo: TRvProject;
    RvSconsumo: TRvSystem;
    RvDsConnect: TRvDataSetConnection;
    txtcod: TEdit;
    RvCustomConnection1: TRvCustomConnection;
    chkgrupo: TCheckBox;
    BitBtn4: TBitBtn;
    chkEncerradas: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnImpClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RvCustomConnection1EOF(Connection: TRvCustomConnection;
      var Eof: Boolean);
    procedure RvCustomConnection1GetCols(Connection: TRvCustomConnection);
    procedure RvCustomConnection1GetRow(Connection: TRvCustomConnection);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  _frmRelConsumo: T_frmRelConsumo;
  imprimir:string='S';

implementation

{$R *.dfm}
uses
frmProdPreproducao,dm,dm2,main,frmProducaoDiaria,ComObj;

procedure T_frmRelConsumo.BitBtn1Click(Sender: TObject);
begin
_frmProdPreproducao:=T_frmProdPreproducao.Create(self);
_frmProdPreproducao.ShowModal;

txtcod.Text:= _dm.cdsPrd2codigo.AsString;
txtProduto.Text:=  _dm.cdsPrd2descricao.AsString;

//txtcod.Text:= _dm2.cdsProdPreProducaocodigo.AsString;
//txtProduto.Text:= _dm2.cdsProdPreProducaodescricao.AsString;

_frmProdPreProducao.Release;


end;

procedure T_frmRelConsumo.btnImpClick(Sender: TObject);
var
produto,sql:string;
totalLeite, totalCreme,totalManteiga:currency;
begin


  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('SELECT SUM(d.utilizado) AS total,p.numero,p.DATA FROM dadosproducaoleite AS d, movproducaodiaria AS p '+
    ' WHERE p.DATA BETWEEN "'+formatdatetime('yyyy-mm-dd',dataini.date)+'" AND "'+formatdatetime('yyyy-mm-dd',datafim.date)+'" AND p.codigofilial = "'+glb_filial+'" '+
    ' AND d.numeroproducao = p.numero  ');
    if(chkEncerradas.Checked=true)then
    _dm.qrPadrao.SQL.Add(' AND p.encerrada="S"');
  _dm.qrPadrao.open;

  totalLeite := _dm.qrPadrao.FieldByName('total').ascurrency;

    _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('SELECT SUM(d.utilizado) AS total,p.numero,p.DATA FROM dadosproducaocreme AS d, movproducaodiaria AS p '+
    ' WHERE p.DATA BETWEEN "'+formatdatetime('yyyy-mm-dd',dataini.date)+'" AND "'+formatdatetime('yyyy-mm-dd',datafim.date)+'" AND p.codigofilial = "'+glb_filial+'" '+
    ' AND d.numeroproducao = p.numero  ');
    if(chkEncerradas.Checked=true)then
    _dm.qrPadrao.SQL.Add(' AND p.encerrada="S"');

  _dm.qrPadrao.open;


  totalCreme :=   _dm.qrPadrao.FieldByName('total').ascurrency;


    _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('SELECT SUM(d.manteigautilizada) AS total,p.numero,p.DATA FROM dadosproducaomanteiga AS d, movproducaodiaria AS p '+
    ' WHERE p.DATA BETWEEN "'+formatdatetime('yyyy-mm-dd',dataini.date)+'" AND "'+formatdatetime('yyyy-mm-dd',datafim.date)+'" AND p.codigofilial = "'+glb_filial+'" '+
    ' AND d.numeroproducao = p.numero  ');
      if(chkEncerradas.Checked=true)then
    _dm.qrPadrao.SQL.Add(' AND p.encerrada="S"');

  _dm.qrPadrao.open;


  totalManteiga :=  _dm.qrPadrao.FieldByName('total').ascurrency;







    if(txtcod.Text<>'')then
    produto:=' AND codigoproduto='+quotedstr(txtcod.text);



    if(chkgrupo.Checked=true)then
    begin

    application.MessageBox('Atenção! Relatório agrupado. O produto da quantidade pelo média de custo unitário não será necessariamente o valor total do custo.','Alerta',MB_OK+MB_ICONINFORMATION);

  _dm2.ConnecDm2.Connected:=false;
  _dm2.cdsmateria.Close;
  _dm2.sdsMateria.CommandText:='select codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,';

  if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
  _dm2.sdsMateria.CommandText:=_dm2.sdsMateria.CommandText+ ' sum(quantidademateria) as quantidademateria, sum(quantidade*quantidademateria) as totalmateriautilizada ,sum((quantidade * quantidademateria) * custounitario) as totalcustoproducao,'
  else
   _dm2.sdsMateria.CommandText:=_dm2.sdsMateria.CommandText+' sum(quantidademateria) as quantidademateria, sum(totalmateriautilizada) as totalmateriautilizada ,sum((totalmateriautilizada) * custounitario) as totalcustoproducao,';


  _dm2.sdsMateria.CommandText:=_dm2.sdsMateria.CommandText+' avg(custounitario) as custounitario,DATA,operador from producaomovmateria'+
  ' WHERE codigofilial="'+glb_filial+'"  AND data BETWEEN "'+formatdatetime('yyyy-mm-dd',dataini.date)+'" AND "'+formatdatetime('yyyy-mm-dd',datafim.date)+'" '+produto;

  if(chkEncerradas.Checked=true)then
  _dm2.sdsMateria.CommandText:= _dm2.sdsMateria.CommandText+'  AND finalizado="S" ';

  _dm2.sdsMateria.CommandText:= _dm2.sdsMateria.CommandText+' GROUP BY codigomateria';
  _dm2.sdsMateria.ExecSQL();
 //clipboard.AsText:=  _dm2.sdsMateria.CommandText;
   _dm2.cdsmateria.Open;
  _dm2.cdsmateria.refresh;

  RvPConsumo.SetParam('titcusto','[Média C. Unit]');
    end
    else
    begin



  _dm2.ConnecDm2.Connected:=false;
  _dm2.cdsmateria.Close;
  _dm2.sdsMateria.CommandText:='select inc_prod_producao,codigofilial,idproducao,codigoproduto,descricaoproduto,codigomateria,descricaomateria,quantidade,';
   if(_dm.cdsConfigLaticinioadicionarqtdderivados.AsString='S')then
    _dm2.sdsMateria.CommandText:=_dm2.sdsMateria.CommandText+' quantidademateria as quantidademateria, (quantidade*quantidademateria) as totalmateriautilizada ,((quantidade * quantidademateria) * custounitario) as totalcustoproducao, custounitario,DATA,operador from producaomovmateria'
   else
    _dm2.sdsMateria.CommandText:=_dm2.sdsMateria.CommandText+' quantidademateria as quantidademateria, (totalmateriautilizada) as totalmateriautilizada ,((totalmateriautilizada) * custounitario) as totalcustoproducao, custounitario,DATA,operador from producaomovmateria';


    _dm2.sdsMateria.CommandText:=_dm2.sdsMateria.CommandText+' WHERE codigofilial="'+glb_filial+'"  AND data BETWEEN "'+formatdatetime('yyyy-mm-dd',dataini.date)+'" AND "'+formatdatetime('yyyy-mm-dd',datafim.date)+'" '+produto;

   if(chkEncerradas.Checked=true)then
   _dm2.sdsMateria.CommandText:= _dm2.sdsMateria.CommandText+'  AND finalizado="S" ';

  _dm2.sdsMateria.CommandText:= _dm2.sdsMateria.CommandText+' GROUP BY codigomateria';

  _dm2.sdsMateria.ExecSQL();
  _dm2.cdsmateria.Open;
  _dm2.cdsmateria.refresh;

  RvPConsumo.SetParam('titcusto','[ Custo Unit. ]');
    end;



  if(imprimir='S')then
  begin

  RvPConsumo.SetParam('tleite',formatcurr('##0.00',totalLeite));
  RvPConsumo.SetParam('tcreme',formatcurr('##0.00',totalCreme));
  RvPConsumo.SetParam('tmanteiga',formatcurr('##0.00',totalManteiga));

  RvPConsumo.SetParam('data1',dataini.Text);
  RvPConsumo.SetParam('data2',datafim.Text);
  RvPConsumo.SetParam('produto',txtcod.text);


  RvPConsumo.Execute;

  imprimir:='S';
  end;



end;

procedure T_frmRelConsumo.BitBtn3Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmRelConsumo.BitBtn4Click(Sender: TObject);
var
  PLANILHA : Variant;
  Linha : Integer;
begin
imprimir:='N';

             btnImp.Click();
             imprimir:='S';

            try
             _dm2.cdsmateria.Filtered  := False;
             Linha :=2;
             PLANILHA := CreateOleObject('Excel.Application');
             PLANILHA.Caption := 'SICE.net Produtos';
             PLANILHA.Visible := False;
             PLANILHA.WorkBooks.add(1);

             // TITULO DAS COLUNAS
             PLANILHA.Cells[1,1] := 'CÓDIGO';
             PLANILHA.Cells[1,2] := 'INSUMO';
             PLANILHA.Cells[1,3] := 'UTILIZADO KG/L';
             PLANILHA.Cells[1,4] := 'CUSTO UNIT.';
             PLANILHA.Cells[1,5] := 'TOTAL R$';



             _dm2.cdsmateria.DisableControls;
             _dm2.cdsmateria.First;
                // PRRENCHIMENTO DAS CÉLULAS COM OS VALORES DOS CAMPOS DA TABELA
             Try
                While not _dm2.cdsmateria.Eof do
                Begin
                   PLANILHA.Cells[Linha,1]:=  _dm2.cdsMateriacodigomateria.asstring;
                   PLANILHA.Cells[linha,2] := _dm2.cdsMateriadescricaomateria.asstring;
                   PLANILHA.Cells[linha,3] := formatcurr('##0.00',_dm2.cdsMateriatotalmateriautilizada.ascurrency);
                   PLANILHA.Cells[Linha,4] := _dm2.cdsMateriacustounitario.asfloat;
                   PLANILHA.cells[Linha,5] :=_dm2.cdsMateriatotalcustoproducao.ascurrency;






                   Linha := Linha + 1;
                  _dm2.cdsmateria.Next;
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
               _dm2.cdsmateria.EnableControls;
                PLANILHA := Unassigned;
             end; // TRY

             except on e:exception do begin
             application.messagebox('Erro na exportação! Verifique se o Excel está instalado.','Erro',mb_ok+mb_iconexclamation);
             // T_frmmensagens.Mensagem(mensagem, 'E',[mbOk]);
              exit;
             end;
             end; //try

             imprimir:='S';

end;

procedure T_frmRelConsumo.RvCustomConnection1EOF(
  Connection: TRvCustomConnection; var Eof: Boolean);
begin
eof:=_dm2.cdsImagens.Eof;
end;

procedure T_frmRelConsumo.RvCustomConnection1GetCols(
  Connection: TRvCustomConnection);
begin
 Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmRelConsumo.RvCustomConnection1GetRow(
  Connection: TRvCustomConnection);
begin
    Connection.WriteStrData('',_dm2.cdsImagenslogomarca.AsString);
end;

end.
