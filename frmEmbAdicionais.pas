unit frmEmbAdicionais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.Buttons, Vcl.Mask, RxToolEdit, RxCurrEdit, Vcl.DBGrids;

type
  T_frmEmbAdicionais = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    gridDerivados2: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnladd: TPanel;
    txtcod: TEdit;
    txtDesc: TEdit;
    BitBtn3: TBitBtn;
    txtQtd: TCurrencyEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    BitBtn6: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure gridDerivados2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure gridDerivados2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure gridDerivados2Click(Sender: TObject);
    procedure gridDerivados2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:tform;
    coluna,linha:integer;
  end;

var
  _frmEmbAdicionais: T_frmEmbAdicionais;

implementation

{$R *.dfm}
uses
frmProducaoDiaria,dm2,main,frmLogin,clipbrd,frmformacaoembalagem;
 function validaNumeros(var Key: Char):string;
begin
     if not( key in['0'..'9'])  and (key<>#8)then
  begin
      key:=#0;
  end;
end;

procedure incluirAuditoria(local:string; documento:string; acao:string; tabela:string);
begin

       	_dm2.ConnecDM2.Connected:=False;
				_dm2.qrpadrao.sql.clear;
				_dm2.qrpadrao.sql.Add('insert into auditoria (codigofilial,usuario,usuariosolicitante,hora,data,tabela,acao,');
				_dm2.qrpadrao.SQL.add('documento,local) ');
				_dm2.qrpadrao.sql.add('values (');
				_dm2.qrpadrao.sql.add(quotedstr(glb_filial)+',');
				_dm2.qrpadrao.sql.add(quotedstr(glb_usuario)+',');
				_dm2.qrpadrao.sql.add(quotedstr(glb_usuario)+',');
				_dm2.qrpadrao.sql.add('current_time,');
				_dm2.qrpadrao.sql.add('current_date,');
				_dm2.qrpadrao.sql.add(quotedstr(tabela)+',');
				_dm2.qrpadrao.sql.add(quotedstr(acao)+',');
				_dm2.qrpadrao.sql.add(quotedstr(documento)+',');
				_dm2.qrpadrao.sql.add(quotedstr(local)+')');
				_dm2.qrpadrao.ExecSQL;


end;
procedure carregarDadosGrid;
var
 I:integer;
begin



       _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
       _dm2.sdsproducaoderivados.CommandText:='SELECT *,(SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and quantidade>0 ';
      // ' AND embadicinalrequisitada='+quotedstr('N');
       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;

       _frmEmbAdicionais.gridDerivados2.RowCount:=1;
       I:=1;

       if(_dm2.cdsproducaoderivados.RecordCount>0)then
       begin

         _dm2.cdsProducaoDerivados.First;
         for I := 1 to _dm2.cdsproducaoderivados.RecordCount do
         begin
            _frmEmbAdicionais.gridDerivados2.RowCount:=_frmEmbAdicionais.gridDerivados2.RowCount+1;
            _frmEmbAdicionais.gridDerivados2.FixedRows:=1;

           _frmEmbAdicionais.gridDerivados2.Cells[0,I]:= _dm2.cdsProducaoDerivadoscodigopreproducao.AsString;
           _frmEmbAdicionais.gridDerivados2.Cells[1,I]:= _dm2.cdsProducaoDerivadoscodigoderivado.AsString;
           _frmEmbAdicionais.gridDerivados2.Cells[2,I]:=_dm2.cdsProducaoDerivadosprodutoderivado.AsString;
         //  _frmEmbAdicionais.gridDerivados2.Cells[3,I]:='0';

            _dm2.cdsProducaoDerivados.Next;
         end;



       end;



end;
procedure T_frmEmbAdicionais.BitBtn1Click(Sender: TObject);
var
 I:integer;
begin


    frm:=Tform.create(self);

    frm.Width:=539;
    frm.Height:=260;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;



    pnladd.Parent:=frm;
    pnladd.visible:=true;
    pnladd.Align:=alClient;
    txtcod.Text:='';
    txtdesc.Text:='';
    frm.ShowModal;


 {
    if(_dm2.cdsMovproducaoencerrada.AsString='S')then
    begin
    application.MessageBox('Produção já foi finalizada!','Alerta',MB_ICONWARNING+mb_ok);
     exit;
    end;



     glb_campo:='solicitarembalagensadicionais';

    _frmLogin:=T_frmLogin.Create(self);
    _frmLogin.lblfuncao.Caption:='Solicitar embalagens adicionais';
    _frmLogin.ShowModal;
    _frmLogin.Release;

    if(glb_permissao='N')then
    exit;

    //local,documento,acao,tabla
    incluirAuditoria('Produção diária', _dm2.cdsMovproducaonumero.AsString, 'Requisição de embalagens adicionais' , 'movProducao');



      for I := 1 to gridDerivados2.RowCount-1 do
      begin

          if(strtoint(gridDerivados2.Cells[2,I])>0)then
           begin


             _dm2.ConnecDm2.Connected;
             _dm2.qrPadrao.SQL.Clear;
             _dm2.qrPadrao.SQL.Add('UPDATE producaoderivados SET embadicionais=embadicionais+'+quotedstr(gridDerivados2.Cells[2,I])+', embadicinalrequisitada="S" WHERE codigoderivado='+quotedstr(gridDerivados2.Cells[0,I])+' AND numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString));
             _dm2.qrPadrao.ExecSQL;


           end;

      end;
       carregarDadosGrid;  }

end;

procedure T_frmEmbAdicionais.BitBtn2Click(Sender: TObject);
begin




       _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
//     _dm2.sdsproducaoderivados.CommandText:='SELECT * FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
//     ' AND embadicinalrequisitada='+quotedstr('S');
        _dm2.sdsproducaoderivados.CommandText:= 'SELECT  id, numeroproducao,codigofilial,codigopreproducao,prodPreProducao,codigoderivado,(select descricao from '+glb_produtos+' where codigo = codigoembalagem and codigofilial="'+glb_filial+'") as produtoderivado, quantidadeembalagem,'+
         ' (SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade,'+
         ' embadicionais as quantidade,custo,qtdleiteinformada,rendimento,quantidadeTotal, embadicionais, embrequisitada,embadicinalrequisitada, operadorreqemb,'+
         ' operadorreqembadicional,codigoembalagem, produtoembalagem FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
         ' AND embadicinalrequisitada='+quotedstr('S');
       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;


        _frmProducaoDiaria.rvpEmbReq.SetParam('titulo','Requisição de embalagens adicionais');
        _frmProducaoDiaria.rvpEmbReq.SetParam('titReqEmb','Emb. Adicionais');
        _frmProducaoDiaria.rvpEmbReq.SetParam('data',_dm2.cdsMovproducaodata.AsString);
        _frmProducaoDiaria.rvpEmbReq.SetParam('situacao','Produtos com embalagens adicionais requisitadas');
        _frmProducaoDiaria.rvpEmbReq.Execute;
end;

procedure T_frmEmbAdicionais.BitBtn3Click(Sender: TObject);
begin
     _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsCompEmbalagem.Close;
    _dm2.sdsCompEmbalagem.CommandText:='SELECT * FROM formacaoembalagem WHERE '+
    ' codigoprodproducao='+quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[0,linha])+
    ' AND codidoderivado='+quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[1,linha])+
    ' AND codigofilial='+quotedstr(glb_filial);
    _dm2.sdsCompEmbalagem.ExecSQL();
    _dm2.cdsCompEmbalagem.Open;
    _dm2.cdsCompEmbalagem.Refresh;





    _frmformacaoembalagem:=T_frmformacaoembalagem.Create(self);
    _frmformacaoembalagem.pnlacoes.Visible:=false;
    _frmformacaoembalagem.ShowModal();


    txtcod.Text:=_dm2.cdsCompEmbalagemcodigoembalagem.AsString;
    txtdesc.Text:=_dm2.cdsCompEmbalagemprodutoembalagem.AsString;


    _frmformacaoembalagem.Release;
    txtQtd.SetFocus;

end;

procedure T_frmEmbAdicionais.BitBtn4Click(Sender: TObject);
begin
    if(txtQtd.Value=0)then
    exit;


      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrPadrao.SQL.Clear;
      _dm2.qrPadrao.SQL.Add( 'INSERT INTO producaomovembalagem (numeroproducao,codigopreproducao, descricaopreproducao, codigoderivado,descricaoderivado,'+
      ' codigoembalagem,descricaoembalagem,qtdnecessaria,custounitario,custototal,qtdproduzido,'+
      ' qtdutilizado, tipo,solicitado, operadorsolicita,operadorsolicitaadicional,codigofilial) VALUES (');
      _dm2.qrPadrao.SQL.Add(quotedstr(_dm2.cdsMovproducaonumero.AsString)+','); //numeroproducao
      _dm2.qrPadrao.SQL.Add(quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[0,linha])+','); //codigopreproducao
      _dm2.qrPadrao.SQL.Add('(select descricao from produtospreproducao where codigo ='+quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[0,linha])+' and codigofilial = '+quotedstr(glb_filial)+' ),');//descricaopreproducao
      _dm2.qrPadrao.SQL.Add(quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[1,linha])+','); //codigoderivado
      _dm2.qrPadrao.SQL.Add(quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[2,linha])+',');  //descricaoderivado
      _dm2.qrPadrao.SQL.Add(quotedstr(txtcod.Text)+','); //codigoembalagem
      _dm2.qrPadrao.SQL.Add(quotedstr(txtdesc.Text)+','); //descricaoembalagem
      _dm2.qrPadrao.SQL.Add(quotedstr('0.00')+','); //qtdnecessaria
      //_dm2.qrPadrao.SQL.Add(quotedstr('0.00')+','); //custounitario
      _dm2.qrPadrao.SQL.Add('(select custo from '+glb_produtos+' where codigo='+quotedstr(txtcod.Text)+' and codigofilial='+glb_filial+'),'); //custounitario
      _dm2.qrPadrao.SQL.Add('(select custo from '+glb_produtos+' where codigo='+quotedstr(txtcod.Text)+' and codigofilial='+glb_filial+') * '+quotedstr(currtostr(txtQtd.Value))+','); //custototal
     // _dm2.qrPadrao.SQL.Add(quotedstr('0.00')+','); //custototal
      _dm2.qrPadrao.SQL.Add(quotedstr('0.00')+','); //qtdproduzido
      _dm2.qrPadrao.SQL.Add(quotedstr(currtostr(txtQtd.Value))+','); //qtdutilizado
      _dm2.qrPadrao.SQL.Add(quotedstr('Adicional')+','); //tipo
      _dm2.qrPadrao.SQL.Add(quotedstr('N')+','); //solicitado
      _dm2.qrPadrao.SQL.Add(quotedstr(glb_usuario)+','); //operadorsolicita
      _dm2.qrPadrao.SQL.Add(quotedstr(glb_usuario)+','); //operadorsolicitaadicional
      _dm2.qrPadrao.SQL.Add(quotedstr(glb_filial)+')'); //codigofilial
      _dm2.qrPadrao.execsql;


         _dm2.cdsprodmovembalagem.Close;
         _dm2.cdsprodmovembalagem.Open;
         _dm2.cdsprodmovembalagem.Refresh;

         frm.ModalResult:=-1;


end;

procedure T_frmEmbAdicionais.BitBtn5Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmEmbAdicionais.BitBtn6Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmEmbAdicionais.FormKeyPress(Sender: TObject; var Key: Char);
begin
validaNumeros(key);
end;

procedure T_frmEmbAdicionais.FormShow(Sender: TObject);
var
I:integer;
begin
 FormatSettings.DecimalSeparator:='.';
 linha:=0;
 coluna:=0;
 _dm2.cdsprodmovembalagem.Close;


  gridDerivados2.ColWidths[0]:=130;
  gridDerivados2.ColWidths[1]:=100;
  gridDerivados2.ColWidths[2]:=250;
//  gridDerivados2.ColWidths[3]:=130;

  gridDerivados2.Cells[0,0]:='Cód Pré-produção';
  gridDerivados2.Cells[1,0]:='Código';
  gridDerivados2.Cells[2,0]:='Produto destino';
//  gridDerivados2.Cells[3,0]:='Qtd.UN.Emb.Adicional';



  carregarDadosGrid;





end;

procedure T_frmEmbAdicionais.gridDerivados2Click(Sender: TObject);
var
sql:string;
begin


            // if(chkAgrupados.Checked=true)then
            // begin
              sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               ' descricaoembalagem,  qtdnecessaria,  custounitario,  custototal,  SUM(qtdproduzido) AS qtdproduzido, SUM(qtdutilizado) AS qtdutilizado,  tipo,  solicitado,'+
               ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               ' FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
               ' AND tipo="Adicional" AND codigopreproducao='+quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[0,linha])+' AND codigoderivado='+quotedstr(_frmEmbAdicionais.gridDerivados2.Cells[1,linha])+
               '  AND solicitado="S" GROUP BY codigoembalagem ';
             {end
             else
             begin
               sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               ' descricaoembalagem,  qtdnecessaria,  custounitario,  custototal, qtdproduzido,  qtdutilizado,  tipo,  solicitado,'+
               ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               ' FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
               '  AND solicitado="S"  ORDER BY tipo desc';

             end;}


                _dm2.ConnecDm2.Connected:=false;
                _dm2.cdsprodmovembalagem.Close;
                _dm2.sdsprodmovembalagem.CommandText:=sql;
                _dm2.sdsprodmovembalagem.ExecSQL();
                _dm2.cdsprodmovembalagem.Open;
                _dm2.cdsprodmovembalagem.Refresh;


end;

procedure T_frmEmbAdicionais.gridDerivados2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   if(gridDerivados2.Cells[ACol, ARow]='')then
    gridDerivados2.Cells[ACol, ARow]:='0';

  

end;

procedure T_frmEmbAdicionais.gridDerivados2KeyPress(Sender: TObject;
  var Key: Char);
begin
validaNumeros(key)
end;

procedure T_frmEmbAdicionais.gridDerivados2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  linha:=arow;
    coluna:=acol;
end;

end.



