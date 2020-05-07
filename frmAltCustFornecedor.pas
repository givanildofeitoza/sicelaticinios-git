unit frmAltCustFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, RxToolEdit, Vcl.Buttons, RxCurrEdit,DateUtils, RpConDS,
  RpCon, RpRave, RpDefine, RpBase, RpSystem;

type
  T_frmAltCustFornecedor = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    txtfornecedor: TEdit;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    data1: TDateEdit;
    data2: TDateEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    cboEstoque: TComboBox;
    BitBtn4: TBitBtn;
    Label5: TLabel;
    pnlalterar: TPanel;
    Panel4: TPanel;
    lblcusto: TLabel;
    lblfornecedor: TLabel;
    lblanalise: TLabel;
    Label9: TLabel;
    lblcoleta: TLabel;
    txtcusto: TCurrencyEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Button1: TButton;
    Label6: TLabel;
    txtanalise: TEdit;
    BitBtn2: TBitBtn;
    pnlCp: TPanel;
    Panel11: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Image2: TImage;
    Image1: TImage;
    Panel6: TPanel;
    Label7: TLabel;
    gridCp: TStringGrid;
    pnlAltDados: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Panel7: TPanel;
    Label8: TLabel;
    Panel8: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    lblDoc: TLabel;
    lblFor: TLabel;
    txtValor: TCurrencyEdit;
    txtData: TDateEdit;
    cboSetor: TComboBox;
    cboSubSetor1: TComboBox;
    txtIntervaloDias: TEdit;
    txtValAdicional: TCurrencyEdit;
    dataPriParcela: TDateEdit;
    vlrPriParcela: TCurrencyEdit;
    Panel10: TPanel;
    btnConf: TBitBtn;
    BitBtn9: TBitBtn;
    memoDesc: TMemo;
    txtParcelas: TEdit;
    Panel5: TPanel;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    btnaltDados: TBitBtn;
    BitBtn8: TBitBtn;
    Panel9: TPanel;
    Label24: TLabel;
    RvSBoletos: TRvSystem;
    RvPrintBoletos: TRvProject;
    RvCCboletos: TRvCustomConnection;
    RvConBoletos: TRvDataSetConnection;
    Label10: TLabel;
    Label15: TLabel;
    txtcustomedio: TCurrencyEdit;
    txtqtd: TCurrencyEdit;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    BitBtn10: TBitBtn;
    txttotalpagar: TCurrencyEdit;
    Label18: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure txtanaliseKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure gridCpDblClick(Sender: TObject);
    procedure gridCpDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure gridCpSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btnaltDadosClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure cboSetorEnter(Sender: TObject);
    procedure cboSetorSelect(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnConfClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn6Click(Sender: TObject);
    procedure RvCCboletosEOF(Connection: TRvCustomConnection; var Eof: Boolean);
    procedure RvCCboletosGetCols(Connection: TRvCustomConnection);
    procedure RvCCboletosGetRow(Connection: TRvCustomConnection);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm,frm2:tform;
     linha,coluna:integer;
  end;

var
  _frmAltCustFornecedor: T_frmAltCustFornecedor;

implementation

{$R *.dfm}

uses
dm,dm2,main,frmfornecedores,clipbrd,frmConferenciaQtd;

procedure T_frmAltCustFornecedor.BitBtn10Click(Sender: TObject);
begin
RvProject1.setparam( 'valorpagar','R$  '+formatcurr('##0.00',txttotalpagar.value));
RvProject1.Execute;
end;

procedure T_frmAltCustFornecedor.BitBtn1Click(Sender: TObject);
begin
     _frmfornecedores :=T_frmfornecedores.Create(self);
     _frmfornecedores.ShowModal();
     _frmfornecedores.Release;

     txtfornecedor.Text:=  _dm.cdsForCodigo.AsString.PadLeft(6,'0')+'-'+_dm.cdsForempresa.AsString;



end;

procedure T_frmAltCustFornecedor.BitBtn2Click(Sender: TObject);
var
i:integer;
begin





  if(_dm.cdsAnalisedoclancado.AsString='N')then
     begin
       Application.MessageBox('Essa compra de leite ainda não foi lançada no estoque!','',MB_ICONEXCLAMATION+mb_ok);
       exit;
   end;

  frm:=Tform.Create(self);

  frm.Width:=860;
  frm.Height:=616;
  frm.BorderStyle:=bsDialog;
  frm.Position:=poDesktopCenter;

  pnlCp.Parent:=frm;
  pnlCp.Align:=alClient;
  pnlCp.Visible:=true;





    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT   numero, fornecedor, SUM(custo * qtdconferida) AS valor FROM  analise ');
    _dm.qrPadrao.SQL.Add('WHERE numero = '+quotedstr(_dm.cdsAnalisenumero.AsString)+' and doclancado="N" GROUP BY fornecedor');
    _dm.qrPadrao.open;




    gridCp.Cells[0,0]:='À vista';
    gridCp.ColWidths[0]:=90;


    gridCp.Cells[1,0]:='Doc';
    gridCp.Cells[2,0]:='Fornecedor';
    gridCp.ColWidths[2]:=250;
    gridCp.Cells[3,0]:='Valor R$';
    gridCp.ColWidths[3]:=100;
    gridCp.Cells[4,0]:='Data Lanc.';
    gridCp.ColWidths[4]:=170;
    gridCp.Cells[5,0]:='Dias';
    gridCp.Cells[6,0]:='Parcelas';

    gridCp.Cells[7,0]:='Setor';
    gridCp.ColWidths[7]:=150;
    gridCp.ColWidths[8]:=170;
    gridCp.Cells[8,0]:='Sub-setor';
    gridCp.ColWidths[9]:=170;
    gridCp.Cells[9,0]:='Adicional R$';
    gridCp.Cells[10,0]:='Vlr R$ 1° Parc';
    gridCp.ColWidths[10]:=170;
    gridCp.Cells[11,0]:='Data 1° Venc';
    gridCp.ColWidths[11]:=170;
    //gridCp.Cells[12,0]:='Data 1° Venc';
    gridCp.ColWidths[12]:=1;
    gridCp.RowCount:= 1;
    i:=0;

    _dm.qrPadrao.first;
    while not _dm.qrPadrao.eof do
    begin

    i:=i+1;
    gridCp.RowCount:= gridCp.RowCount+1;
    gridCp.Cells[0,i]:='X';
    gridCp.Cells[1,i]:=_dm.qrPadrao.FieldByName('numero').AsString;
    gridCp.Cells[2,i]:=_dm.qrPadrao.FieldByName('fornecedor').AsString;
    gridCp.Cells[3,i]:=formatcurr('###0.00',_dm.qrPadrao.FieldByName('valor').Ascurrency);
    gridCp.Cells[4,i]:=formatdatetime('dd/mm/yyyy',now);
    gridCp.Cells[5,i]:='30';
    gridCp.Cells[6,i]:='1';

    gridCp.Cells[7,i]:='';
    gridCp.Cells[8,i]:='';

    gridCp.Cells[9,i]:='0.00';
    gridCp.Cells[10,i]:='0.00';
    gridCp.Cells[11,i]:=formatdatetime('dd/mm/yyyy',incmonth(now,1));

    _dm.qrPadrao.next;
    end;


    if(gridCp.RowCount>1)then
    begin
     gridCp.FixedRows:=1;
       end;




      frm.ShowModal();

end;

procedure T_frmAltCustFornecedor.BitBtn3Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmAltCustFornecedor.BitBtn4Click(Sender: TObject);
begin
      {
        _frmConferenciaQtd.lblFilial.Caption:= '';
        _frmConferenciaQtd.lblResp.Caption:=   '';
        _frmConferenciaQtd.lblPreenchido.Caption:='';
        _frmConferenciaQtd.lblAprovado.Caption:= '';

        _frmConferenciaQtd.grid.RowCount:=1;

       }

      ModalResult:=-1;

end;

procedure T_frmAltCustFornecedor.BitBtn5Click(Sender: TObject);
begin

if(application.MessageBox('Alterar custo do lançamento de leite desse fornecedor?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDNO)then
 exit;

  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('UPDATE analise SET custo='+quotedstr(currtostr(txtcusto.value))+' Where inc ='+quotedstr(_dm.cdsAnaliseinc.AsString));
  _dm.qrPadrao.execsql;


  _dm.ConnecDm.Connected:=false;
  _dm.qrPadrao.SQL.Clear;
  _dm.qrPadrao.SQL.Add('UPDATE entradas SET custo='+quotedstr(currtostr(txtcusto.value))+', custocalculado='+quotedstr(currtostr(txtcusto.value))+'  WHERE  numero='+quotedstr(_dm.cdsAnalisenrEntrada.AsString)+
  ' AND codigo='+quotedstr(_dm.cdsConfigLaticiniocodprodpadraoleite.AsString)+' AND fornecedor='+quotedstr(_dm.cdsAnalisefornecedor.AsString));
  _dm.qrPadrao.execsql;
  //clipboard.astext:=_dm.qrPadrao.SQL.text;

  application.MessageBox('Alterado com sucesso!','Informação',MB_ICONINFORMATION+MB_OK);
  _dm.cdsAnalise.Refresh;
  frm.ModalResult:=-1;

end;

procedure T_frmAltCustFornecedor.BitBtn6Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmAltCustFornecedor.BitBtn7Click(Sender: TObject);
var
 codsetor,codsubsetor,setor,subsetor,descricao:string;
  I,l,intervalo,nrParc: Integer;
 vlrParc,vlrPriParc,vlrTotal:currency;
 vencimento:Tdate;
begin


if(gridCp.RowCount=1)then
  exit;
 //vlrTotal:=  strtocurr(gridCp.Cells[9,linha]) + strtocurr(gridCp.Cells[3,linha]) ;

      if( gridCp.Cells[3,linha] = '' ) or ( gridCp.Cells[3,linha] = '  /  /    ' )then
      begin

           application.MessageBox('Data não informada!','Alerta',MB_ICONEXCLAMATION+MB_OK);
           exit;

      end;


     if(application.MessageBox('Inclir documentos?','Pergunta',MB_ICONQUESTION+MB_YESNO)=IDno)then
     exit;


      for I := 1 to gridCp.RowCount-1 do
      begin


         if( gridCp.Cells[0,I] <> 'X' )then
         begin

               //define total do débito valor + adicional
               vlrTotal:= strtocurr(gridCp.Cells[9,I]) + strtocurr(gridCp.Cells[3,I]) ;

               //verifica se tem valor da primeira parcela
               if(strtocurr(gridCp.Cells[10,I])>0)then
               vlrPriParc:=strtocurr(gridCp.Cells[10,I])
               else
               vlrPriParc:=0;


               //define quantas parcelas
               if(vlrPriParc > 0)then
               nrParc:= strtoint(gridCp.Cells[6,I]) - 1
               else
               nrParc:= strtoint(gridCp.Cells[6,I]);


               //define vlr das parcelas
               if(vlrPriParc > 0)then
                vlrParc:= (vlrTotal - vlrPriParc) /  nrParc
                else
                vlrParc:= vlrTotal / nrParc;


                 vencimento:=strtodate(gridCp.Cells[11,I]);
                 intervalo:= strtoint(gridCp.Cells[5,I]);

                 codsetor:=copy(gridCp.Cells[7,I],1,5);
                 codsubsetor:=copy(gridCp.Cells[8,I],1,5);
                 setor:=copy(gridCp.Cells[7,I],7,20);
                 subsetor:=copy(gridCp.Cells[8,I],7,20);


                 descricao:=gridCp.Cells[12,I];


               for l := 1 to strtoint(gridCp.Cells[6,I]) do
               begin


                    if(l<>1)then
                    vencimento:=IncDay(vencimento,intervalo);



                    _dm.ConnecDm.Connected:=true;
                    _dm.qrPadrao.SQL.clear;
                    _dm.qrPadrao.SQL.Add('INSERT INTO contaspagar(documento,empresa,valor,vencimento,datadocumento,codigoset,codigosubset,setor,subsetor,historico,numeroEntrada,nrAnaliseLeite,grupo,codigofilial) VALUES (');
                    _dm.qrPadrao.SQL.Add(quotedstr(gridCp.Cells[1,I]+'-'+inttostr(l))+','); //documento
                    _dm.qrPadrao.SQL.Add(quotedstr(gridCp.Cells[2,I])+','); //empresa

                    if(vlrPriParc>0) and (l=1)then
                    _dm.qrPadrao.SQL.Add(quotedstr(formatcurr('#.00',vlrPriParc))+',')//valor total parc
                    else
                    _dm.qrPadrao.SQL.Add(quotedstr(currtostr(vlrParc))+',');


                    _dm.qrPadrao.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',vencimento))+',');//vencimento
                    _dm.qrPadrao.SQL.Add(quotedstr(formatdatetime('yyyy-mm-dd',now))+','); //data do documento

                    _dm.qrPadrao.SQL.Add('abs('+quotedstr(codsetor)+'),'); //codsetor
                    _dm.qrPadrao.SQL.Add('abs('+quotedstr(codsubsetor)+'),'); //codsub-setor


                    _dm.qrPadrao.SQL.Add(quotedstr(setor)+','); //setor
                    _dm.qrPadrao.SQL.Add(quotedstr(subsetor)+','); //sub-setor
                    _dm.qrPadrao.SQL.Add(quotedstr(descricao)+','); //descricao
                    _dm.qrPadrao.SQL.Add(quotedstr('0')+','); //número entrada
                    _dm.qrPadrao.SQL.Add(quotedstr(_dm.cdsAnalisenumero.AsString)+','); //número análise
                    _dm.qrPadrao.SQL.Add(quotedstr(glb_grupo)+','); //grupo
                    _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+')');  //codigo filial
                    _dm.qrPadrao.execsql();




               end;//fim do segundo for

                    _dm.ConnecDm.Connected:=true;
                    _dm.qrPadrao.SQL.clear;
                    _dm.qrPadrao.SQL.Add('UPDATE analise SET doclancado="S" WHERE numero='+quotedstr(_dm.cdsAnalisenumero.AsString)+' AND ');
                    _dm.qrPadrao.SQL.Add(' fornecedor='+quotedstr(gridCp.Cells[2,I]));
                    _dm.qrPadrao.execsql();




         end; //fim da validação do pagamento à vista


      end;  // fim do primeiro for


        application.MessageBox('Documentos lançados com sucesso!','Mensagem',MB_ICONINFORMATION+MB_OK);

        frm.ModalResult:=-1;






end;

procedure T_frmAltCustFornecedor.BitBtn8Click(Sender: TObject);
begin
  _dm.ConnecDm.Connected:=false;
  _dm.cdsContasPagar.Close;
  _dm.sdscontaspagar.CommandText:='select * from contaspagar where nrAnaliseLeite='+quotedstr(_dm.cdsAnalisenumero.AsString)+' order by empresa';
  _dm.sdscontaspagar.ExecSQL();
  _dm.cdsContasPagar.Open;
  _dm.cdsContasPagar.Refresh;

    RvPrintBoletos.SetParam('empresa',_dm.cdsFiliaisfantasia.AsString);
    RvPrintBoletos.SetParam('numero',_dm.cdsAnalisenumero.AsString);
    RvPrintBoletos.Execute;
end;

procedure T_frmAltCustFornecedor.BitBtn9Click(Sender: TObject);
begin
frm2.ModalResult:=-1;
end;

procedure T_frmAltCustFornecedor.btnaltDadosClick(Sender: TObject);
begin

  if(gridCp.RowCount=1)then
  exit;


   _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT LPAD(codigo,5,"0") as codigo,descricao FROM setorcp WHERE codigofilial='+quotedstr(glb_filial));
    _dm.qrPadrao.open;

    _dm.qrPadrao.first;
    cboSetor.Items.Clear;

    while not _dm.qrPadrao.eof do
    begin


    cboSetor.Items.Add(_dm.qrPadrao.fieldbyname('codigo').AsString+'-'+_dm.qrPadrao.fieldbyname('descricao').AsString);

    _dm.qrPadrao.next;

    end;



  frm2:=Tform.Create(self);

  frm2.Width:=500;
  frm2.Height:=400;
  frm2.BorderStyle:=bsDialog;
  frm2.Position:=poDesktopCenter;

  pnlAltDados.Parent:=frm2;
  pnlAltDados.Align:=alClient;
  pnlAltDados.Visible:=true;



    if(linha=0)then
    linha:=1;

    lblDoc.Caption:= gridCp.Cells[1,linha];
    lblFor.Caption:= gridCp.Cells[2,linha];
    txtValor.Text:=  gridCp.Cells[3,linha];

    if(gridCp.Cells[4,linha]<>'')then
    txtData.Text:= gridCp.Cells[4,linha]
    else
    txtData.text:=formatdatetime('dd/mm/yyyy',now);

    if(gridCp.Cells[5,linha]<>'')then
    txtIntervaloDias.Text:= gridCp.Cells[5,linha]
    else
    txtIntervaloDias.Text:='30';


    txtParcelas.Text:= gridCp.Cells[6,linha];
   // if(gridCp.Cells[6,linha]<>'')then
  //  txtParcelas.Text:= gridCp.Cells[6,linha]
   // else
   // txtParcelas.Text:='1';


    cboSetor.Text:=        gridCp.Cells[7,linha];
    cboSubSetor1.Text:=    gridCp.Cells[8,linha];
    txtValAdicional.Text:= gridCp.Cells[9,linha];
    vlrPriParcela.text:=   gridCp.Cells[10,linha];
    dataPriParcela.Text:=  gridCp.Cells[11,linha];
    memodesc.Text:=  gridCp.Cells[12,linha];

   //gambirra para limpar o campo sub-setor que não apagava a informação.
   if(trim(cboSetor.Text)='')then
   begin
   cboSubSetor1.Items.Clear;
   cboSubSetor1.text;
   end;

   frm2.ShowModal;


end;

procedure T_frmAltCustFornecedor.btnConfClick(Sender: TObject);
begin



if(txtData.Text='  /  /    ')then
begin
  Application.MessageBox('Data inválida. Verifique!','Alerta',MB_ICONQUESTION+MB_OK);
  exit;
end;




    gridCp.Cells[1,linha]:=lblDoc.Caption;
    gridCp.Cells[2,linha]:=lblFor.Caption;
    gridCp.Cells[3,linha]:= formatcurr('#.00',txtValor.value);
    gridCp.Cells[4,linha]:=txtData.Text;
    gridCp.Cells[5,linha]:= txtIntervaloDias.Text;
    gridCp.Cells[6,linha]:=txtParcelas.Text;
    gridCp.Cells[7,linha]:=cboSetor.Text;
    gridCp.Cells[8,linha]:=cboSubSetor1.Text;
//    gridCp.Cells[9,linha]:=formatcurr('#,#0.00',txtValAdicional.value);
    gridCp.Cells[9,linha]:=formatcurr('#.00',txtValAdicional.value);
    gridCp.Cells[10,linha]:=formatcurr('#.00',vlrPriParcela.value);
    gridCp.Cells[11,linha]:=dataPriParcela.Text;
    gridCp.Cells[12,linha]:=memodesc.Text;



    pnlAltDados.Visible:=false;
    frm2.ModalResult:=-1;

end;

procedure T_frmAltCustFornecedor.Button1Click(Sender: TObject);
var
sqlTotal,nrentrada:string;
begin



   _dm.ConnecDm.Connected:=false;
   _dm.sdsAnalise.Close;
   _dm.cdsAnalise.close;
   if(cboEstoque.Text='S')then
   begin
   _dm.sdsAnalise.CommandText:=' WHERE nrentrada > 0';
   sqltotal:=' WHERE nrentrada > 0';

   end
   else
   begin
   _dm.sdsAnalise.CommandText:=' WHERE nrentrada = ("0" OR nrentrada is null)';
   sqltotal:= ' WHERE nrentrada = ("0" OR nrentrada is null)';
   end;






    if(txtanalise.Text<>'')then
    begin
    _dm.sdsAnalise.CommandText:= _dm.sdsAnalise.CommandText+' AND numero='+quotedstr(txtanalise.Text);
    sqltotal:=sqltotal+' AND numero='+quotedstr(txtanalise.Text);
    end;
    if(txtanalise.Text='')then
    begin

        if(txtfornecedor.Text<>'')then
        begin
        _dm.sdsAnalise.CommandText:= _dm.sdsAnalise.CommandText+' AND codigofornecedor='+quotedstr(_dm.cdsForCodigo.AsString);
         sqltotal:=sqltotal+' AND codigofornecedor='+quotedstr(_dm.cdsForCodigo.AsString);
        end;

        _dm.sdsAnalise.CommandText:= _dm.sdsAnalise.CommandText+ ' AND data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.date));
        sqltotal:=sqltotal+' AND data BETWEEN '+quotedstr(formatdatetime('yyyy-mm-dd',data1.date))+' AND '+quotedstr(formatdatetime('yyyy-mm-dd',data2.date));
    end;





   _dm.sdsAnalise.CommandText:= 'SELECT * FROM analise '+_dm.sdsAnalise.CommandText;

   _dm.sdsAnalise.ExecSQL();
   _dm.cdsAnalise.open;
   _dm.cdsAnalise.refresh;


   _dm2.qrPadrao.SQL.Clear;
   _dm2.qrPadrao.SQL.add('SELECT SUM(quantidade * custo) as totalpagamento,  SUM(quantidade * custo) / SUM(quantidade) AS customedio, SUM(quantidade) qtdTotal FROM analise '+sqltotal);
   _dm2.qrPadrao.Open;

  txtcustomedio.Value:= _dm2.qrPadrao.FieldByName('customedio').AsCurrency;
  txtqtd.Value:=  _dm2.qrPadrao.FieldByName('qtdTotal').AsCurrency;
  txttotalpagar.Value :=  _dm2.qrPadrao.FieldByName('totalpagamento').AsCurrency;
end;

procedure T_frmAltCustFornecedor.cboSetorEnter(Sender: TObject);
begin
cboSubSetor1.Text:='';
end;

procedure T_frmAltCustFornecedor.cboSetorSelect(Sender: TObject);
begin

    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.Clear;
    _dm.qrPadrao.SQL.Add('SELECT lpad(codigo,5,"0") as codigo,descricao FROM subsetorcp WHERE codigosetor=abs('+copy(cbosetor.Text,1,5)+') and codigofilial='+quotedstr(glb_filial));
    _dm.qrPadrao.open;

    _dm.qrPadrao.first;
    cbosubSetor1.Items.Clear;

    while not _dm.qrPadrao.eof do
    begin


    cbosubSetor1.Items.Add(_dm.qrPadrao.fieldbyname('codigo').AsString+'-'+_dm.qrPadrao.fieldbyname('descricao').AsString);

    _dm.qrPadrao.next;

    end;


end;

procedure T_frmAltCustFornecedor.DBGrid1DblClick(Sender: TObject);
begin

     if(_dm.cdsAnalisedoclancado.AsString='N')then
     begin
       Application.MessageBox('Essa compra de leite ainda não foi lançada no estoque!','',MB_ICONEXCLAMATION+mb_ok);
       exit;
     end;


     frm:=Tform.Create(self);
      frm.Width:=450;
      frm.Height:=193;
      frm.BorderStyle:=bsDialog;
      frm.Position:=poDesktopCenter;
      frm.KeyPreview:=true;
      pnlalterar.Parent:=frm;
      pnlalterar.Align:=alClient;
      pnlalterar.Visible:=true;
      pnlalterar.Visible:=true;


      txtcusto.Value:=0;
     lblfornecedor.Caption:= 'Fornecedor: '+_dm.cdsAnalisefornecedor.AsString;
     lblanalise.Caption:= 'Nr. Análise: '+_dm.cdsAnalisenumero.AsString;
     lblcusto.Caption:='Último Custo R$: '+_dm.cdsAnalisecusto.AsString;

     _dm.qrPadrao.SQL.Clear;
     _dm.qrPadrao.SQL.Add('select numerocoleta from movanalise where numero='+quotedstr(_dm.cdsAnalisenumero.AsString));
     _dm.qrPadrao.open;

    lblcoleta.Caption  :='Nr. Coleta: '+_dm.qrPadrao.FieldByName('numerocoleta').AsString;

    frm.ShowModal;

end;

procedure T_frmAltCustFornecedor.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure T_frmAltCustFornecedor.DBGrid1TitleClick(Column: TColumn);
begin
    _dm.cdsAnalise.IndexFieldNames := Column.FieldName;
end;

procedure T_frmAltCustFornecedor.gridCpDblClick(Sender: TObject);
begin
    if(gridCp.Cells[0,linha]='')then
    gridCp.Cells[0,linha]:='X'
    else
    begin
    gridCp.Cells[0,linha]:='';
    btnaltDadosClick(sender);

    end;

end;

procedure T_frmAltCustFornecedor.gridCpDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
 var
  s: string;
  aCanvas: TCanvas;
begin


if (ACol <> 0) or (ARow = 0) then
    Exit;
  s := (Sender as TStringGrid).Cells[ACol, ARow];

  // Draw ImageX.Picture.Bitmap in all Rows in Col 1
  aCanvas := (Sender as TStringGrid).Canvas;  // To avoid with statement
  // Clear current cell rect
  aCanvas.FillRect(Rect);
  // Draw the image in the cell
  if (s = 'X') then
    aCanvas.Draw(Rect.Left, Rect.Top, Image1.Picture.Bitmap)
  else
    aCanvas.Draw(Rect.Left, Rect.Top, Image2.Picture.Bitmap);
end;

procedure T_frmAltCustFornecedor.gridCpSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
 linha:=arow;
 coluna:=acol;
end;

procedure T_frmAltCustFornecedor.RvCCboletosEOF(Connection: TRvCustomConnection;
  var Eof: Boolean);
begin
eof := _dm.CdsFiliais.Eof;
end;

procedure T_frmAltCustFornecedor.RvCCboletosGetCols(
  Connection: TRvCustomConnection);
begin
Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmAltCustFornecedor.RvCCboletosGetRow(
  Connection: TRvCustomConnection);
begin
    Connection.WriteStrData('', _dm2.cdsImagenslogomarca.AsString);
end;

procedure T_frmAltCustFornecedor.txtanaliseKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) and (key <> #8) then
begin
key:=#0;
end;

end;

end.


