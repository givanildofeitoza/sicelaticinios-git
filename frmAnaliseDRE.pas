unit frmAnaliseDRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  Vcl.Grids, Vcl.ExtCtrls, Vcl.Buttons, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.ComCtrls, Vcl.CheckLst;

type
  T_frmAnaliseDRE = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    data1: TDateEdit;
    data2: TDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    lblDesp: TLabel;
    Label9: TLabel;
    lblvendabruta: TLabel;
    Label11: TLabel;
    lblTotProd: TLabel;
    Label13: TLabel;
    lblalmox: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qrDespesas: TSQLQuery;
    qrVendas: TSQLQuery;
    qrSaldAum: TSQLQuery;
    qrProducao: TSQLQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    gridDespesas: TStringGrid;
    gridVendas: TStringGrid;
    gridSaida: TStringGrid;
    gridProducao: TStringGrid;
    pnlContas: TPanel;
    Label1: TLabel;
    chkbox: TCheckListBox;
    qrContas: TSQLQuery;
    BitBtn4: TBitBtn;
    chktodas: TCheckBox;
    Bevel1: TBevel;
    Label2: TLabel;
    lblvendaliq: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    lblfixa: TLabel;
    lblvariavel: TLabel;
    Bevel3: TBevel;
    Label14: TLabel;
    chkvendia: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure gridDespesasDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure chktodasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmAnaliseDRE: T_frmAnaliseDRE;
 frm:tform;
implementation

{$R *.dfm}
 uses dm,dm2,main,clipbrd;
procedure T_frmAnaliseDRE.BitBtn1Click(Sender: TObject);
var
li,liBox:integer;
totDespesas,fixa,variavel:currency;
 sql:string;
 valortotal,desconto,descitem,valortotalcusto,valorlucro,totVendaBruta,totalm : double;
begin


//============= DESPESAS =============================================================

chktodas.Checked:=false;
 _dm2.ConnecDm2.Connected:=false;
 qrContas.SQL.Clear;
 qrContas.SQL.Add('SELECT conta,descricao FROM despesas WHERE codigofilial='+quotedstr(glb_filial));
 qrContas.open;


  chkbox.Items.Clear;
  qrContas.first;
  while not qrContas.eof do
  begin

    chkbox.Items.Add(qrContas.FieldByName('conta').AsString+'-'+qrContas.FieldByName('descricao').AsString);
    qrContas.next;

  end;




      frm:=Tform.Create(self);
      frm.Width:=465;
      frm.Height:=430;
      frm.BorderStyle:=bsDialog;
      frm.Position:=poDesktopCenter;
      pnlContas.Parent:=frm;
      pnlContas.Align:=alClient;
      pnlContas.Visible:=true;
      pnlContas.Visible:=true;

      frm.ShowModal;


  fixa:=0;
  variavel:=0;
 totDespesas:=0;
 liBox:=0;
 li:=1;
 gridDespesas.RowCount:=1;
  while liBox <= chkbox.Items.Count -1 do
  begin
  if(chkbox.Checked[liBox]) then
  begin
  //showmessage(chkbox.Items[liBox]);
  gridDespesas.Cells[0,li]:='CONTA';
  gridDespesas.Cells[1,li]:=chkbox.Items[liBox];
  gridDespesas.Cells[2,li]:='';
  li:=li+1;
  gridDespesas.RowCount:=gridDespesas.RowCount+1;

         qrDespesas.SQL.Clear;
         qrDespesas.SQL.add(' SELECT SUM(valor) AS total,subconta,'+
          ' (SELECT tipodespesa FROM despesasub  WHERE idconta=conta AND idsubconta = m.subconta   AND codigofilial=m.codigofilial) AS tipodespesa, '+
          ' (SELECT despesa FROM despesasub  WHERE idconta=conta AND idsubconta = m.subconta   AND codigofilial=m.codigofilial ) AS despesa, '+
          ' (SELECT descricao FROM despesasub  WHERE idconta=conta AND idsubconta = m.subconta   AND codigofilial=m.codigofilial ) AS descricao '+
          ' FROM movdespesas AS m WHERE conta = '+quotedstr(copy(chkbox.Items[liBox],1,5))+' AND DATA BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.date))+
          ' AND m.codigofilial='+quotedstr(glb_filial)+' GROUP BY m.subconta ORDER BY tipodespesa'
         );

         qrDespesas.open();

     qrDespesas.First;
     while not qrDespesas.Eof do
     begin


     gridDespesas.Cells[0,li]:=qrDespesas.FieldByName('tipodespesa').AsString;
     gridDespesas.Cells[1,li]:='          '+qrDespesas.FieldByName('subconta').AsString+'  '+qrDespesas.FieldByName('descricao').AsString;
     gridDespesas.Cells[2,li]:='R$ '+formatcurr('##0.00',qrDespesas.FieldByName('total').AsCurrency);
     totDespesas:=totDespesas+ qrDespesas.FieldByName('total').AsCurrency;


     if(qrDespesas.FieldByName('tipodespesa').AsString='F')then
     fixa:=fixa+ qrDespesas.FieldByName('total').AsCurrency
     else if(qrDespesas.FieldByName('tipodespesa').AsString='V')then
     variavel:=variavel+ qrDespesas.FieldByName('total').AsCurrency;

     li:=li+1;
     gridDespesas.RowCount:=gridDespesas.RowCount+1;

     qrDespesas.Next;

     end;



  end;



  liBox:=liBox+1;
  end;

 lbldesp.Caption:= formatcurr('##0.00',totDespesas);
  lblfixa.Caption:= formatcurr('##0.00',fixa);
  lblvariavel.Caption:= formatcurr('##0.00',variavel);
//============= DESPESAS =============================================================



//============= PRODUÇÃO =============================================================
   _dm2.ConnecDm2.Connected:=false;
   qrProducao.SQL.Clear;
   qrProducao.SQL.Add('SELECT i.codigo,i.produto,SUM(i.quantidadeproduzida) AS totalproduzido,i.numeroproducao  '+
   ' FROM producaoitens AS i, movproducaodiaria AS m WHERE m.DATA BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.date))+
   ' AND m.encerrada="S" AND i.numeroproducao=m.numero GROUP BY codigo ORDER BY i.produto ; ');
   qrProducao.open;

   li:=1;

   gridProducao.RowCount:=1;


   while not qrProducao.Eof do
   begin

   gridProducao.Cells[0,li]:=  qrProducao.fieldbyname('codigo').AsString;
   gridProducao.Cells[1,li]:=  qrProducao.fieldbyname('produto').AsString;
   gridProducao.Cells[2,li]:=  qrProducao.fieldbyname('totalproduzido').AsString;


   li:=li+1;
   gridProducao.RowCount:=gridProducao.RowCount+1;
   qrProducao.Next;
   end;



   _dm2.ConnecDm2.Connected:=false;
   qrProducao.SQL.Clear;
   qrProducao.SQL.Add('SELECT SUM(i.quantidadeproduzida * (SELECT precovenda FROM produtos WHERE codigo=i.codigo)) AS valorProducao  '+
   ' FROM producaoitens AS i, movproducaodiaria AS m WHERE m.DATA BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.date))+
   ' AND m.encerrada="S" AND i.numeroproducao=m.numero  ');
   qrProducao.open;

  lblTotProd.Caption:= formatcurr('##0.00',qrProducao.fieldbyname('valorProducao').ascurrency);

//============= PRODUÇÃO =============================================================

//============= VENDAS ==============================================================



 {

    if(cboVendedor.Text <> 'Todos')then
      begin
     filtro := filtro+' AND vendedor = '+quotedstr(copy(cboVendedor.text,1,3));
     filtrocaixaarquivo := filtrocaixaarquivo+' AND vendedor = '+quotedstr(copy(cboVendedor.text,1,3));
      end;

      if(cbofilial.Text <> 'Todas')then
      begin
     filtro := filtro+' AND codigofilial = '+quotedstr(copy(cbofilial.text,1,5));
     filtrocaixaarquivo := filtrocaixaarquivo+' AND codigofilial = '+quotedstr(copy(cbofilial.text,1,5));
      end;

      if(chkdev.Checked=false)then
      begin
        filtro := filtro+ ' AND quantidade>0 ';
      end;

      if(txtcli.Text <> '')then
      begin
      filtro := filtro+' and codigocliente ='+quotedstr(_dm.ClientDataSetCliCodigo.AsString);
      filtrocaixaarquivo := filtrocaixaarquivo+' and codigocliente ='+quotedstr(_dm.ClientDataSetCliCodigo.AsString);
      end;
}

    {     sql:=' SELECT SUM(total) AS valor,SUM(descontovalor) AS desconto, SUM(ratdesc) AS ratdesc, SUM(ABS(IF(vendaatacado = "S",(quantidade *embalagem),quantidade))*custo) as custo,documento FROM vendaarquivo '+
        ' WHERE data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
        ' AND cancelado="N"  AND documento<>0  AND dpfinanceiro<> "Recebimento "'+
        ' AND codigofilial='+quotedstr(glb_filial)+' group by documento'+
        ' union all'+
        ' SELECT SUM(total) AS valor,SUM(descontovalor) AS desconto, SUM(ratdesc) AS ratdesc,SUM(ABS(IF(vendaatacado = "S",(quantidade *embalagem),quantidade))*custo) as custo, documento FROM venda '+
        ' WHERE data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' and '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
        ' AND cancelado="N"  AND documento<>0   AND dpfinanceiro<> "Recebimento "'+
        ' AND codigofilial='+quotedstr(glb_filial)+'group by documento';



_dm2.ConnecDm2.Connected:=false;
qrVendas.Close;
qrVendas.SQL.Clear;
qrVendas.SQL.add(sql);
qrVendas.Open;          }

      totVendaBruta:=0;
      desconto:=0;
      li:=1;
      gridvendas.RowCount:=1;

    {  qrVendas.First;
      while not qrVendas.Eof do
      begin

      //  totVendaBruta:= totVendaBruta + qrVendas.FieldByName('valor').AsCurrency;
     //   desconto:=desconto + (qrVendas.FieldByName('desconto').AsCurrency + qrVendas.FieldByName('ratdesc').AsCurrency);

       {
       _dm2.qrPadrao.SQL.Clear;
       _dm2.qrPadrao.SQL.add('SELECT codigo,produto,unidade,quantidade,preco,descontovalor,ratdesc,total FROM venda WHERE documento ='+quotedstr(qrVendas.fieldbyname('documento').AsString));
       _dm2.qrPadrao.SQL.add('UNION ALL SELECT codigo,produto,unidade,quantidade,preco,descontovalor,ratdesc,total AS total FROM vendaarquivo WHERE documento ='+quotedstr(qrVendas.fieldbyname('documento').AsString));
       _dm2.qrPadrao.Open();

               _dm2.qrPadrao.First;
               while not _dm2.qrPadrao.Eof do
               begin

                   gridvendas.Cells[0,li]:= _dm2.qrPadrao.FieldByName('codigo').AsString;
                   gridvendas.Cells[1,li]:= _dm2.qrPadrao.FieldByName('produto').AsString;
                   gridvendas.Cells[2,li]:= _dm2.qrPadrao.FieldByName('unidade').AsString;
                   gridvendas.Cells[3,li]:='R$ '+formatcurr('##0.00', _dm2.qrPadrao.FieldByName('preco').ascurrency);
                   gridvendas.Cells[4,li]:= formatcurr('##0.00',_dm2.qrPadrao.FieldByName('quantidade').ascurrency);
                    if(_dm2.qrPadrao.FieldByName('descontovalor').Ascurrency>0)then
                    begin
                    gridvendas.Cells[5,li]:= 'R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('descontovalor').ascurrency);
                    gridvendas.Cells[6,li]:= 'R$ '+formatcurr('##0.00',(_dm2.qrPadrao.FieldByName('total').ascurrency - _dm2.qrPadrao.FieldByName('descontovalor').ascurrency));
                   // desconto:=desconto:= _dm2.qrPadrao.FieldByName('descontovalor').ascurrency;
                    end
                    else
                    begin
                     gridvendas.Cells[5,li]:= 'R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('ratdesc').AsCurrency);
                     gridvendas.Cells[6,li]:= 'R$ '+formatcurr('##0.00',(_dm2.qrPadrao.FieldByName('total').ascurrency - _dm2.qrPadrao.FieldByName('ratdesc').ascurrency));
                 //    desconto:=desconto:= _dm2.qrPadrao.FieldByName('ratdesc').ascurrency;
                    end;

                   // totVendaBruta:=totVendaBruta+_dm2.qrPadrao.FieldByName('total').ascurrency;

                    li:=li+1;
                    gridvendas.RowCount:=gridvendas.RowCount+1;

               _dm2.qrPadrao.Next;
               end;




      qrVendas.next;
      end;    }



       _dm2.qrPadrao.SQL.Clear;
       if(chkvendia.Checked=true)then
    begin
       _dm2.qrPadrao.SQL.add('SELECT codigo,produto,unidade,sum(quantidade) as quantidade,AVG(preco) as precomedio,sum(descontovalor) as descontovalor,sum(ratdesc) as ratdesc,sum(total) as total FROM venda WHERE DATA = current_date AND codigofilial='+quotedstr(glb_filial)+' AND cancelado="N"  AND documento<>0  AND dpfinanceiro<> "Recebimento " GROUP By codigo  ');
      // _dm2.qrPadrao.SQL.add('SELECT codigo,produto,unidade,sum(quantidade) as quantidade,AVG(preco) as precomedio,sum(descontovalor) as descontovalor,sum(ratdesc) as ratdesc,sum(total) as total FROM vendaarquivo  WHERE DATA BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+' OR DATA = current_date AND codigofilial='+quotedstr(glb_filial)+'  AND cancelado="N"  AND documento<>0  AND dpfinanceiro<> "Recebimento " GROUP By  codigo ORDER BY PRODUTO');

    end
       else
       _dm2.qrPadrao.SQL.add('SELECT codigo,produto,unidade,sum(quantidade) as quantidade,AVG(preco) as precomedio,sum(descontovalor) as descontovalor,sum(ratdesc) as ratdesc,sum(total) as total FROM vendaarquivo  WHERE DATA BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+' AND codigofilial='+quotedstr(glb_filial)+'  AND cancelado="N"  AND documento<>0  AND dpfinanceiro<> "Recebimento " GROUP By  codigo ORDER BY PRODUTO');
       _dm2.qrPadrao.Open();

               _dm2.qrPadrao.First;
               while not _dm2.qrPadrao.Eof do
               begin

                   gridvendas.Cells[0,li]:= _dm2.qrPadrao.FieldByName('codigo').AsString;
                   gridvendas.Cells[1,li]:= _dm2.qrPadrao.FieldByName('produto').AsString;
                   gridvendas.Cells[2,li]:= _dm2.qrPadrao.FieldByName('unidade').AsString;
                 //  gridvendas.Cells[3,li]:='R$ '+formatcurr('##0.00', _dm2.qrPadrao.FieldByName('preco').ascurrency);
                   gridvendas.Cells[3,li]:= formatcurr('##0.00',_dm2.qrPadrao.FieldByName('quantidade').ascurrency);
                    if(_dm2.qrPadrao.FieldByName('descontovalor').Ascurrency>0)then
                    begin
                  //  gridvendas.Cells[4,li]:= 'R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('descontovalor').ascurrency);
                    gridvendas.Cells[4,li]:= 'R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('precomedio').ascurrency);
                    gridvendas.Cells[5,li]:= 'R$ '+formatcurr('##0.00',(_dm2.qrPadrao.FieldByName('total').ascurrency - _dm2.qrPadrao.FieldByName('descontovalor').ascurrency));
                    desconto:=desconto + _dm2.qrPadrao.FieldByName('descontovalor').ascurrency;
                    end
                    else
                    begin
                    // gridvendas.Cells[4,li]:= 'R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('ratdesc').AsCurrency);
                     gridvendas.Cells[4,li]:= 'R$ '+formatcurr('##0.00',_dm2.qrPadrao.FieldByName('precomedio').ascurrency);
                     gridvendas.Cells[5,li]:= 'R$ '+formatcurr('##0.00',(_dm2.qrPadrao.FieldByName('total').ascurrency - _dm2.qrPadrao.FieldByName('ratdesc').ascurrency));
                     desconto:=desconto + _dm2.qrPadrao.FieldByName('ratdesc').ascurrency;
                    end;

                    totVendaBruta:=totVendaBruta+_dm2.qrPadrao.FieldByName('total').ascurrency;

                    li:=li+1;
                    gridvendas.RowCount:=gridvendas.RowCount+1;

               _dm2.qrPadrao.Next;
               end;





       lblvendabruta.Caption:= formatcurr('##0.00',totVendaBruta);
       lblvendaliq.Caption:= formatcurr('##0.00',totVendaBruta-desconto);

//============= VENDAS ==============================================================

//============= AUMOXARIFADO ==============================================================


sql:= 'SELECT codigo,produto, SUM(quantidade) AS quantidade, SUM(quantidade * preco) AS total FROM produtosperdas '+
 ' WHERE codigofilial='+quotedstr(glb_filial)+' AND DATA  BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.Date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.Date))+
 ' GROUP BY codigo ORDER BY PRODUTO';



_dm2.ConnecDm2.Connected:=false;
qrSaldAum.Close;
qrSaldAum.SQL.Clear;
qrSaldAum.SQL.add(sql);
qrSaldAum.Open;


    gridSaida.RowCount:= 1;
    li:=1;


    qrSaldAum.first;
    while not qrSaldAum.Eof do
    begin

        gridSaida.Cells[0,li]:= qrSaldAum.FieldByName('codigo').Asstring;
        gridSaida.Cells[1,li]:= qrSaldAum.FieldByName('produto').Asstring;
        gridSaida.Cells[2,li]:= formatcurr('##0.00',qrSaldAum.FieldByName('quantidade').AsCurrency);
        gridSaida.Cells[3,li]:= 'R$  '+formatcurr('##0.00',qrSaldAum.FieldByName('total').AsCurrency);

    gridSaida.RowCount:=  gridSaida.RowCount + 1;
    li:=li+1;

    totalm:= totalm + qrSaldAum.FieldByName('total').AsCurrency;

    qrSaldAum.Next;
    end;

    lblalmox.Caption:= formatcurr('##0.00',totalm);


//============= AUMOXARIFADO ==============================================================


end;

procedure T_frmAnaliseDRE.BitBtn2Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmAnaliseDRE.BitBtn4Click(Sender: TObject);
begin

frm.modalresult:=-1;

end;

procedure T_frmAnaliseDRE.chktodasClick(Sender: TObject);
var
i:integer;
begin

          if(chktodas.Checked=true)then
          begin

                  for I := 0 to chkbox.Items.Count -1  do
                  begin

                    chkbox.Checked[I]:=true;

                  end;

          end
          else
            begin

                  for I := 0 to chkbox.Items.Count -1  do
                  begin

                    chkbox.Checked[I]:=false;

                  end;


            end;


end;

procedure T_frmAnaliseDRE.FormShow(Sender: TObject);
begin

 gridsaida.Cells[0,0]:=  'Código';
 gridsaida.Cells[1,0]:=  'Produto';
 gridsaida.Cells[2,0]:=  'Qtd.Saída';
 gridsaida.Cells[3,0]:=  'Total R$';

 gridsaida.ColWidths[0] :=80;
 gridsaida.ColWidths[1] :=350;
 gridsaida.ColWidths[2] :=150;
 gridsaida.ColWidths[3] :=150;

 gridvendas.Cells[0,0]:=  'Código';
 gridvendas.Cells[1,0]:=  'Produto';
 gridvendas.Cells[2,0]:=  'UN';
// gridvendas.Cells[3,0]:=  'Preço R$';
 gridvendas.Cells[3,0]:=  'Quantidade';
 gridvendas.Cells[4,0]:=  'Preço M. R$';
 gridvendas.Cells[5,0]:=  'Total Liq. R$';


 gridvendas.ColWidths[1] :=350;
 gridvendas.ColWidths[2] :=50;
 gridvendas.ColWidths[3] :=100;
 gridvendas.ColWidths[4] :=100;
 gridvendas.ColWidths[5] :=100;
 //gridvendas.ColWidths[6] :=100;

  gridDespesas.Cells[0,0]:=  'Tipo';
  gridDespesas.Cells[1,0]:=  'Sub-conta';
  gridDespesas.Cells[2,0]:=  'Total R$';


   gridDespesas.ColWidths[1] :=350;
   gridDespesas.ColWidths[2] :=200;


   gridProducao.Cells[0,0]:=  'Código';
   gridProducao.ColWidths[1] :=350;
   gridProducao.Cells[1,0]:=  'Produto';
   gridProducao.ColWidths[2] :=150;
   gridProducao.Cells[2,0]:=  'Produzido (KG/L)';
end;

procedure T_frmAnaliseDRE.gridDespesasDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var
   CellText, Texto: string;
begin

  if gridDespesas.Cells[0,ARow] = 'CONTA' then
  begin
    gridDespesas.Canvas.Brush.color := clMoneyGreen;
    gridDespesas.canvas.fillRect(Rect);
    CellText := gridDespesas.Cells[ACol, ARow]
  end;
  gridDespesas.Canvas.TextOut(Rect.Left + 4, Rect.Top + 4, CellText);


end;

end.
