unit frmMovEmbalgem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, RpCon, RpConDS, RpBase, RpSystem, RpDefine, RpRave,
  RpRender, RpRenderPDF, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  T_frmMovEmbalagem = class(TForm)
    Panel5: TPanel;
    Label14: TLabel;
    gridMateria: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    rvpEmbalagens: TRvProject;
    RvSystem1: TRvSystem;
    rvDsConsumoEtiquetas: TRvDataSetConnection;
    ccLogoEmb: TRvCustomConnection;
    RvRenderPDF1: TRvRenderPDF;
    Panel1: TPanel;
    chkAgrupados: TCheckBox;
    txtcusto: TCurrencyEdit;
    Label1: TLabel;
    BitBtn6: TBitBtn;
    procedure gridMateriaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure chkAgrupadosClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ccLogoEmbEOF(Connection: TRvCustomConnection; var Eof: Boolean);
    procedure ccLogoEmbGetCols(Connection: TRvCustomConnection);
    procedure ccLogoEmbGetRow(Connection: TRvCustomConnection);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmMovEmbalagem: T_frmMovEmbalagem;

implementation

{$R *.dfm}
uses
dm2,dm,main,frmEmbAdicionais, frmProducaoDiaria,clipbrd;

procedure atualizarCustoEmb(nrProducao:string);
begin

       _dm2.qrPadrao.SQL.Clear;
       _dm2.qrPadrao.SQL.Add('UPDATE movproducaodiaria SET custoembalagens =(SELECT SUM(custototal) AS custo FROM producaomovembalagem WHERE numeroproducao='+quotedstr(nrProducao)+' AND codigofilial ='+quotedstr(glb_filial)+') '+
       'WHERE numero = '+quotedstr(nrProducao)+' AND codigofilial ='+quotedstr(glb_filial));
        _dm2.qrPadrao.execsql;

       _dm2.cdsMovproducao.Refresh;

       _frmMovEmbalagem.txtcusto.Value:= _dm2.cdsMovproducaocustoembalagens.ascurrency;
       _frmProducaoDiaria.txtcustoemb.value:= _dm2.cdsMovproducaocustoembalagens.ascurrency;

end;

procedure T_frmMovEmbalagem.BitBtn1Click(Sender: TObject);
begin


     if(_dm2.cdsMovproducaoencerrada.AsString='S')then
     exit;


      if(_dm2.cdsprodmovembalagem.RecordCount>1)then
      begin
      application.MessageBox('Embalagens já foram requisitadas!','Alerta',MB_ICONQUESTION+MB_OK);
      exit;
      end;

     if(application.MessageBox('Requisitar embalagens?','Alerta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then
     exit;

     _dm2.ConnecDm2.Connected:=false;
     _dm2.qrPadrao.SQL.Clear;
     _dm2.qrPadrao.SQL.Add('SELECT * FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and quantidade>0');
     _dm2.qrPadrao.Open;


     _dm2.qrPadrao.first;
     while not _dm2.qrPadrao.eof do
     begin

          //_dm2.ConnecDm2.Connected:=false;
          _dm2.qrPadrao2.SQL.Clear;
          _dm2.qrPadrao2.SQL.Add('INSERT INTO producaomovembalagem ( numeroproducao, codigopreproducao,descricaopreproducao,codigoderivado,descricaoderivado,'+
                                  'codigoembalagem,descricaoembalagem,qtdutilizado,custounitario,custototal,tipo,solicitado,operadorsolicita,codigofilial) SELECT ');
          _dm2.qrPadrao2.SQL.Add(quotedstr(_dm2.qrPadrao.FieldByName('numeroproducao').AsString)+',');   //numeroproducao
          _dm2.qrPadrao2.SQL.Add(quotedstr(_dm2.qrPadrao.FieldByName('codigopreproducao').AsString)+','); //codigopreproducao
          _dm2.qrPadrao2.SQL.Add('(select descricao from produtospreproducao where codigo='+quotedstr(_dm2.qrPadrao.FieldByName('codigopreproducao').AsString)+' and codigofilial='+quotedstr(glb_filial)+'),'); //descricaopreproducao
          _dm2.qrPadrao2.SQL.Add(quotedstr(_dm2.qrPadrao.FieldByName('codigoderivado').AsString)+','); //codigoderivado
          _dm2.qrPadrao2.SQL.Add(quotedstr(_dm2.qrPadrao.FieldByName('produtoderivado').AsString)+','); //descricaoderivado
          _dm2.qrPadrao2.SQL.Add('codigoembalagem,'); //codigoembalagem
          _dm2.qrPadrao2.SQL.Add('produtoembalagem,');//descricaoembalagem
          _dm2.qrPadrao2.SQL.Add('(quantidade * '+_dm2.qrPadrao.FieldByName('quantidade').AsString+'),'); //qtdutilizado
          _dm2.qrPadrao2.SQL.Add('(select custo from '+glb_produtos+'  where codigo=codigoembalagem and codigofilial='+quotedstr(glb_filial)+'),');//custo
           _dm2.qrPadrao2.SQL.Add('((select custo from '+glb_produtos+' where codigo=codigoembalagem and codigofilial='+quotedstr(glb_filial)+') * '+_dm2.qrPadrao.FieldByName('quantidade').AsString+'),');//tipo

          _dm2.qrPadrao2.SQL.Add(quotedstr('Normal')+',');//tipo
          _dm2.qrPadrao2.SQL.Add(quotedstr('N')+','); //solicitado
          _dm2.qrPadrao2.SQL.Add(quotedstr(glb_usuario)+',');//operadorsolicita
          _dm2.qrPadrao2.SQL.Add(quotedstr(glb_filial)); //codigofilial
          _dm2.qrPadrao2.SQL.Add(' FROM formacaoembalagem WHERE codigoprodproducao='+quotedstr(_dm2.qrPadrao.FieldByName('codigopreproducao').AsString));
          _dm2.qrPadrao2.SQL.Add(' AND codidoderivado='+quotedstr(_dm2.qrPadrao.FieldByName('codigoderivado').AsString));
         // _dm2.qrPadrao2.SQL.Add(' AND codigopreproducao='+quotedstr());
         // _dm2.qrPadrao2.SQL.Add(' AND codigopreproducao='+quotedstr());
          _dm2.qrPadrao2.execsql;




     _dm2.qrPadrao.Next;
     end;

    {   _dm2.qrPadrao.SQL.Clear;
       _dm2.qrPadrao.SQL.Add('UPDATE movproducaodiaria SET custoembalagens =(SELECT SUM(custototal) AS custo FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigofilial ='+quotedstr(glb_filial)+') '+
       'WHERE numero = '+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND codigofilial ='+quotedstr(glb_filial));
        _dm2.qrPadrao.execsql;

       _dm2.cdsMovproducao.Refresh;

       txtcusto.Value:= _dm2.cdsMovproducaocustoembalagens.ascurrency;   }

       atualizarCustoEmb(_dm2.cdsMovproducaonumero.AsString);

        chkAgrupados.Checked:=true;
        chkAgrupadosClick(sender);


end;

procedure T_frmMovEmbalagem.BitBtn2Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmMovEmbalagem.BitBtn3Click(Sender: TObject);
begin

 if(_dm2.cdsMovproducaoencerrada.AsString='S')then
 exit;


 if(_dm2.cdsMovproducaonumero.AsString='')then
 exit;


   if(_dm2.cdsMovproducaoitensderivadosconfirmados.AsString='N')then
   exit;


   if(_dm2.cdsprodmovembalagem.RecordCount=0)then
    begin
    application.MessageBox('Primeiro faça a requisição das embalagens normais!','Alerta',MB_ICONQUESTION+MB_OK);
    exit;
    end;


_frmEmbAdicionais:=T_frmEmbAdicionais.Create(self);
_frmEmbAdicionais.ShowModal;
_frmEmbAdicionais.Release;



 atualizarCustoEmb(_dm2.cdsMovproducaonumero.AsString);

chkAgrupados.Checked:=true;
chkAgrupadosClick(sender);

    {   _dm2.ConnecDm2.Connected;
       _dm2.cdsproducaoderivados.close;
       _dm2.sdsproducaoderivados.CommandText:='SELECT *,(SELECT lote FROM producaoitens LIMIT 1) AS lote,(SELECT validade FROM producaoitens LIMIT 1) AS validade FROM producaoderivados WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString);
       _dm2.sdsproducaoderivados.execsql;
       _dm2.cdsproducaoderivados.open;
       _dm2.cdsproducaoderivados.Refresh;   }
end;

procedure T_frmMovEmbalagem.BitBtn4Click(Sender: TObject);
begin


 if(_dm2.cdsMovproducaoencerrada.AsString='S')then
 exit;

      if(chkAgrupados.Checked=true)then
      begin
        application.MessageBox('É necessário desagrupar os itens primeiro!','Alerta',MB_ICONEXCLAMATION+MB_OK);
        exit;
      end;


      if(_dm2.cdsprodmovembalagemtipo.AsString <>'Adicional')then
      begin
        application.MessageBox('Apenas embalagens adicionais podem ser excluídas!','Alerta',MB_ICONEXCLAMATION+MB_OK);
        exit;
      end;



      if(  application.MessageBox('Excluir componente de embalagem?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idyes )then
      begin
      _dm2.ConnecDm2.Connected:=false;
      _dm2.qrPadrao.SQL.Clear;
      _dm2.qrPadrao.SQL.Add(' delete from producaomovembalagem where id='+quotedstr(_dm2.cdsprodmovembalagemid.AsString));
      _dm2.qrPadrao.ExecSQL();

       _dm2.cdsprodmovembalagem.close;
       _dm2.cdsprodmovembalagem.Open;
       _dm2.cdsprodmovembalagem.Refresh;

        atualizarCustoEmb(_dm2.cdsMovproducaonumero.AsString);
      end;


end;

procedure T_frmMovEmbalagem.BitBtn5Click(Sender: TObject);
var
sql:string;
begin

          sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               ' descricaoembalagem,  qtdnecessaria,  custounitario,  custototal, qtdproduzido,  qtdutilizado,  tipo,  solicitado,'+
               ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               ' FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
               '  AND solicitado="S" ORDER BY descricaoderivado';
                _dm2.ConnecDm2.Connected:=false;
                _dm2.cdsprodmovembalagem.Close;
                _dm2.sdsprodmovembalagem.CommandText:=sql;
                _dm2.sdsprodmovembalagem.ExecSQL();
                _dm2.cdsprodmovembalagem.Open;
                _dm2.cdsprodmovembalagem.Refresh;

    rvpEmbalagens.SetParam('numero',_dm2.cdsMovproducaonumero.AsString);
    rvpEmbalagens.SetParam('data',_dm2.cdsMovproducaodata.AsString);
    rvpEmbalagens.SetParam('operador',_dm2.cdsprodmovembalagemoperadorsolicita.AsString);

    rvpEmbalagens.execute;

end;

procedure T_frmMovEmbalagem.BitBtn6Click(Sender: TObject);
begin


               if(_dm2.cdsMovproducaoencerrada.AsString='S')then
               exit;





               if(application.MessageBox('Atualizar estoque das embalagens?','Pergunta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then
                exit;




                _dm.qrPadrao.SQL.Clear;
                _dm.qrPadrao.SQL.Add('select count(1) as qtdEmbLanc from producaomovembalagem where numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' AND solicitado="N" ');
                _dm.qrPadrao.Open();

                if(_dm.qrPadrao.FieldByName('qtdEmbLanc').AsInteger=0)then
                exit;

                _dm2.ConnecDm2.Connected:=false;
                _dm2.cdsprodmovembalagem.Close;
                _dm2.sdsprodmovembalagem.CommandText:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               '  descricaoembalagem,  qtdnecessaria,  custounitario,  custototal, qtdproduzido,  qtdutilizado,  tipo,  solicitado,'+
               '  operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               '  FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
               '  AND solicitado="N"  ORDER BY tipo desc';
                _dm2.sdsprodmovembalagem.ExecSQL();
                _dm2.cdsprodmovembalagem.Open;
                _dm2.cdsprodmovembalagem.Refresh;


                 _dm2.cdsprodmovembalagem.First;
                while not  _dm2.cdsprodmovembalagem.Eof do
                begin
                    //altera a qtdanterior nas embalagens produção

                    _dm.qrPadrao.SQL.Clear;
                    _dm.qrPadrao.SQL.Add('UPDATE producaomovembalagem SET solicitado="S", qtdanterior = (select quantidade from '+glb_produtos+' where codigo ='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+' ),'+
                     ' qtdatual=(select quantidade from '+glb_produtos+' where codigo ='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+' ) - '+quotedstr(_dm2.cdsprodmovembalagemqtdutilizado.Asstring)+', datafinalizacao=current_date, horafinalizacao=current_time WHERE codigoembalagem='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+
                     ' and numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+' and solicitado="N"');
                    _dm.qrPadrao.ExecSQL();



                    //altera estoque de produtos
                    _dm.qrPadrao.SQL.Clear;
                    _dm.qrPadrao.SQL.Add('UPDATE '+glb_produtos+' SET quantidade = quantidade-'+quotedstr(_dm2.cdsprodmovembalagemqtdutilizado.Asstring)+' WHERE codigo='+quotedstr(_dm2.cdsprodmovembalagemcodigoembalagem.Asstring)+' and codigofilial='+quotedstr(glb_filial) );
                    _dm.qrPadrao.ExecSQL();


                 _dm2.cdsprodmovembalagem.Next;
                end;

end;

procedure T_frmMovEmbalagem.ccLogoEmbEOF(Connection: TRvCustomConnection;
  var Eof: Boolean);
begin
eof:=_dm2.cdsImagens.Eof;
end;

procedure T_frmMovEmbalagem.ccLogoEmbGetCols(Connection: TRvCustomConnection);
begin
 Connection.WriteField('logo', dtString, 120, '', '');
end;

procedure T_frmMovEmbalagem.ccLogoEmbGetRow(Connection: TRvCustomConnection);
begin
    Connection.WriteStrData('',_dm2.cdsImagenslogomarca.AsString);
end;

procedure T_frmMovEmbalagem.chkAgrupadosClick(Sender: TObject);
var
sql:string;
begin

             if(chkAgrupados.Checked=true)then
             begin
              sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               ' descricaoembalagem,  qtdnecessaria,  custounitario,  custototal,  SUM(qtdproduzido) AS qtdproduzido, SUM(qtdutilizado) AS qtdutilizado,  tipo,  solicitado,'+
               ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               ' FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
               ' GROUP BY codigoembalagem,tipo ORDER BY tipo desc';
             end
             else
             begin
               sql:='SELECT   id,  numeroproducao,  codigopreproducao,  descricaopreproducao,  codigoderivado,  descricaoderivado,  codigoembalagem,'+
               ' descricaoembalagem,  qtdnecessaria,  custounitario,  custototal, qtdproduzido,  qtdutilizado,  tipo,  solicitado,'+
               ' operadorsolicita,  operadorsolicitaadicional,  codigofilial'+
               ' FROM producaomovembalagem WHERE numeroproducao='+quotedstr(_dm2.cdsMovproducaonumero.AsString)+
               '    ORDER BY tipo desc';

             end;


                _dm2.ConnecDm2.Connected:=false;
                _dm2.cdsprodmovembalagem.Close;
                _dm2.sdsprodmovembalagem.CommandText:=sql;
                _dm2.sdsprodmovembalagem.ExecSQL();
                _dm2.cdsprodmovembalagem.Open;
                _dm2.cdsprodmovembalagem.Refresh;

           
end;

procedure T_frmMovEmbalagem.FormShow(Sender: TObject);
begin
 txtcusto.Value:= _dm2.cdsMovproducaocustoembalagens.ascurrency;
end;

procedure T_frmMovEmbalagem.gridMateriaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridMateria.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
           if(_dm2.cdsprodmovembalagemtipo.AsString='Normal')then
           Font.Color:=clBlack
          else
          Font.Color:=clred;
          end
  else
  Begin
  If Odd(gridMateria.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD;

           if(_dm2.cdsprodmovembalagemtipo.AsString='Normal')then
            Font.Color:=clBlack
            else
            Font.Color:=clred;

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

        if(_dm2.cdsprodmovembalagemtipo.AsString='Normal')then
            Font.Color:=clBlack
            else
            Font.Color:=clred;

    End;
  End;
 gridMateria.DefaultDrawDataCell(Rect, gridMateria.Columns[DataCol].Field, State);
end;



end;

end.
