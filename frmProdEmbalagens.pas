unit frmProdEmbalagens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  T_frmProdEmbalagens = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    gridPreEmbalagens: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    pnlCadItens: TPanel;
    pntTitulo: TPanel;
    Label14: TLabel;
    btnprocurar: TBitBtn;
    txtcodigo: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    txtproduto: TEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    lblprodpre: TLabel;
    txtPeso: TCurrencyEdit;
    Label1: TLabel;
    BitBtn7: TBitBtn;
    txtcodigoembalagem: TEdit;
    BitBtn8: TBitBtn;
    Label2: TLabel;
    BitBtn9: TBitBtn;
    rgMedida: TRadioGroup;
    procedure btnprocurarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure gridPreEmbalagensDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tipo:string;
  end;

var
  _frmProdEmbalagens: T_frmProdEmbalagens;
  frm:tform;

implementation

{$R *.dfm}
uses
frmprodutos,main,dm,dm2,clipbrd,frmformacaoembalagem;

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
procedure T_frmProdEmbalagens.BitBtn1Click(Sender: TObject);
var
ultimocodigo:integer;
begin



              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrpadrao.sql.Clear;
             // _dm2.qrpadrao.sql.Add('select count(1) as total from produtosembalagens where codigo = '+quotedstr(txtcodigo.Text)+' and codprodpreproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString));
              _dm2.qrpadrao.sql.Add('select MAX(IFNULL(codigo,0)) as codigo from produtosembalagens where codprodpreproducao='+quotedstr(_dm.cdsPrd2codigo.AsString)+' and codigofilial='+glb_filial);

              _dm2.qrpadrao.Open;
              if(_dm2.qrpadrao.FieldByName('codigo').Asstring='')then
               ultimocodigo:=0
               else
              ultimocodigo:=  _dm2.qrpadrao.FieldByName('codigo').AsInteger;


   tipo:='I';



    frm := Tform.Create(self);
    frm.Width:=590;
    frm.Height:=280;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnlCadItens.Parent:=frm;
    pnlCadItens.Align:= alClient;
    pnlCadItens.Visible:=true;



   txtcodigo.Text:='';
   txtproduto.Text:='';

   if(_dm.cdsConfigLaticinioderivadoscadastrosice.AsString='N')then
   begin
   txtcodigo.Enabled:=false;
   txtcodigo.Text:=inttostr(ultimocodigo+1);
   btnprocurar.Enabled:=false;
   txtproduto.Enabled:=true;

   end;


   frm.ShowModal;








end;

procedure T_frmProdEmbalagens.BitBtn2Click(Sender: TObject);
begin

    if(application.MessageBox('Deseja realmente excluir?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
    exit;

    _dm2.ConnecDm2.Connected:=false;
    _dm2.qrpadrao.sql.Clear;
    _dm2.qrpadrao.sql.Add('delete from produtosembalagens where id='+quotedstr(_dm2.cdsProdutosembalagemid.AsString));
    _dm2.qrpadrao.execsql;

    _dm2.cdsProdutosembalagem.Close;
    _dm2.cdsProdutosembalagem.Open;
    _dm2.cdsProdutosembalagem.Refresh;

end;

procedure T_frmProdEmbalagens.btnprocurarClick(Sender: TObject);
begin

  _frmprodutos:=T_frmProdutos.Create(self);
  _frmprodutos.ShowModal;

   txtcodigo.Text:=_dm.cdsPrdcodigo.AsString;
   txtproduto.Text:=_dm.cdsPrddescricao.AsString;

end;



procedure T_frmProdEmbalagens.BitBtn4Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_frmProdEmbalagens.BitBtn5Click(Sender: TObject);

begin


         if(tipo='I')then
         begin


              _dm2.ConnecDm2.Connected:=false;
              _dm2.qrpadrao.sql.Clear;
             // _dm2.qrpadrao.sql.Add('select count(1) as total from produtosembalagens where codigo = '+quotedstr(txtcodigo.Text)+' and codprodpreproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString));
              _dm2.qrpadrao.sql.Add('select count(1) as total from produtosembalagens where codigo = '+quotedstr(txtcodigo.Text)+' and codprodpreproducao='+quotedstr(_dm.cdsPrd2codigo.AsString));

              _dm2.qrpadrao.Open;

              if( _dm2.qrpadrao.FieldByName('total').AsInteger>0)then
              begin
                  application.MessageBox('Item já lançado','Alerta',MB_ICONEXCLAMATION+MB_ok);
                  exit;
              end;




         if(txtcodigo.Text=string.Empty) or (txtproduto.Text=string.Empty) or  (txtpeso.Value=0) then
         begin
         application.MessageBox('Para o correto funcionamento é obrigátório preencher todos os campos!','Alerta',MB_ICONEXCLAMATION+MB_ok);
         exit;
         end;




            _dm2.ConnecDm2.Connected:=false;
            _dm2.qrpadrao.sql.Clear;
            _dm2.qrpadrao.sql.Add('insert into produtosembalagens(codigofilial,origem,codigo,descricao,unidade,codprodpreproducao,quantidadeembalagem,codigoembalagem,descprodpreproducao) values ( ');
            _dm2.qrpadrao.sql.Add(quotedstr(glb_filial)+',');

            if(_dm.cdsConfigLaticinioderivadoscadastrosice.AsString='S')then
            begin
            _dm2.qrpadrao.sql.Add(quotedstr('sice')+',');
            _dm2.qrpadrao.sql.Add(quotedstr(_dm.cdsPrdcodigo.AsString)+',');
            _dm2.qrpadrao.sql.Add(quotedstr(_dm.cdsPrdDescricao.AsString)+',');
            _dm2.qrpadrao.sql.Add(quotedstr(_dm.cdsPrdunidade.AsString)+',');


            end
            else
            begin
            _dm2.qrpadrao.sql.Add(quotedstr('novo')+',');
            _dm2.qrpadrao.sql.Add(quotedstr(txtcodigo.Text)+',');
            _dm2.qrpadrao.sql.Add(quotedstr(txtproduto.Text)+',');
            _dm2.qrpadrao.sql.Add(quotedstr('UN')+',');
            end;

            //_dm2.qrpadrao.sql.Add(quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+',');
            _dm2.qrpadrao.sql.Add(quotedstr(_dm.cdsPrd2codigo.AsString)+',');
            if(rgMedida.ItemIndex=0)then
            _dm2.qrpadrao.sql.Add(quotedstr(currtostr(txtPeso.Value/1000))+',')
            else
            _dm2.qrpadrao.sql.Add(quotedstr(currtostr(txtPeso.Value))+',');

            _dm2.qrpadrao.sql.Add(quotedstr(txtcodigoembalagem.text)+',');
            //_dm2.qrpadrao.sql.Add(quotedstr(_dm2.cdsProdPreProducaodescricao.AsString)+')');
             _dm2.qrpadrao.sql.Add(quotedstr(_dm.cdsPrd2descricao.AsString)+')');


            _dm2.qrpadrao.execsql;

            _dm2.cdsProdutosembalagem.Close;
            _dm2.cdsProdutosembalagem.Open;
            _dm2.cdsProdutosembalagem.Refresh;

           frm.ModalResult:=-1;

         end;


         if(tipo='A')then
         begin


         if(txtcodigo.Text=string.Empty) or (txtproduto.Text=string.Empty) or  (txtpeso.Value=0) then
         begin
         application.MessageBox('Para o correto funcionamento é obrigátório preencher todos os campos!','Alerta',MB_ICONEXCLAMATION+MB_ok);
         exit;
         end;


             _dm2.ConnecDm2.Connected:=false;
            _dm2.qrpadrao.sql.Clear;
            _dm2.qrpadrao.sql.Add(' UPDATE produtosembalagens SET  codigo='+quotedstr(txtcodigo.Text));
            _dm2.qrpadrao.sql.Add(' ,descricao='+quotedstr(txtproduto.Text)+', codigoembalagem='+quotedstr(txtcodigoembalagem.Text));

            if(rgMedida.ItemIndex=0)then
            _dm2.qrpadrao.sql.Add(' ,quantidadeembalagem='+quotedstr(currtostr(txtPeso.Value/1000))+' WHERE id='+quotedstr(_dm2.cdsProdutosembalagemid.AsString))
            else
            _dm2.qrpadrao.sql.Add(' ,quantidadeembalagem='+quotedstr(currtostr(txtPeso.Value))+' WHERE id='+quotedstr(_dm2.cdsProdutosembalagemid.AsString));


           _dm2.qrpadrao.execsql;

             //local,documento,acao,tabla
            incluirAuditoria('Cadastro/alteração produtos embalagens cod. prod:'+quotedstr(_dm2.cdsProdutosembalagemcodigo.asstring), '0', 'Alteração do codigo embalagem: de '+_dm2.cdsProdutosembalagemcodigoembalagem.asstring+' para '+txtcodigoembalagem.text , 'embalagens');

            _dm2.cdsProdutosembalagem.Close;
            _dm2.cdsProdutosembalagem.Open;
            _dm2.cdsProdutosembalagem.Refresh;

            frm.ModalResult:=-1;


         end;





end;

procedure T_frmProdEmbalagens.BitBtn6Click(Sender: TObject);
begin

 frm.ModalResult:=-1;

end;

procedure T_frmProdEmbalagens.BitBtn7Click(Sender: TObject);
begin

tipo:='A';


    frm := Tform.Create(self);
    frm.Width:=590;
    frm.Height:=280;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;


      txtcodigo.Text:=_dm2.cdsProdutosembalagemcodigo.AsString;
      txtproduto.Text:=_dm2.cdsProdutosembalagemdescricao.AsString;
      txtPeso.Value := _dm2.cdsProdutosembalagemquantidadeembalagem.AsCurrency;
      txtcodigoembalagem.Text:= _dm2.cdsProdutosembalagemcodigoembalagem.asstring;
      pnlCadItens.Visible:=true;



    pnlCadItens.Parent:=frm;
    pnlCadItens.Align:= alClient;
    pnlCadItens.Visible:=true;
    frm.ShowModal;


end;

procedure T_frmProdEmbalagens.BitBtn8Click(Sender: TObject);
begin


  _frmprodutos:=T_frmProdutos.Create(self);
  _frmprodutos.ShowModal;

   txtcodigoembalagem.Text:=_dm.cdsPrdcodigo.AsString;
   //txtproduto.Text:=_dm.cdsPrddescricao.AsString;


end;

procedure T_frmProdEmbalagens.BitBtn9Click(Sender: TObject);
begin


    if(_dm2.cdsProdutosembalagem.RecordCount=0)then
    exit;

     _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsCompEmbalagem.Close;
    _dm2.sdsCompEmbalagem.CommandText:='SELECT * FROM formacaoembalagem WHERE '+
   // ' codigoprodproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+
   // ' AND codidoderivado='+quotedstr(_dm2.cdsProdutosembalagemcodigo.AsString)+
    ' codigoprodproducao='+quotedstr(_dm.cdsPrd2codigo.AsString)+
    ' AND codidoderivado='+quotedstr(_dm2.cdsProdutosembalagemcodigo.AsString)+


    ' AND codigofilial='+quotedstr(glb_filial);
    _dm2.sdsCompEmbalagem.ExecSQL();
    _dm2.cdsCompEmbalagem.Open;
    _dm2.cdsCompEmbalagem.Refresh;

    _frmformacaoembalagem:=T_frmformacaoembalagem.create(Self);
    _frmformacaoembalagem.ShowModal;
    _frmformacaoembalagem.release;




end;

procedure T_frmProdEmbalagens.FormShow(Sender: TObject);
begin

    _dm2.ConnecDm2.Connected:=false;
    _dm2.cdsProdutosembalagem.Close;
    //_dm2.sdsProdutosembalagem.CommandText:='SELECT * FROM produtosembalagens WHERE codprodpreproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+' AND codigofilial='+quotedstr(glb_filial);
    _dm2.sdsProdutosembalagem.CommandText:='SELECT * FROM produtosembalagens WHERE codprodpreproducao='+quotedstr(_dm.cdsPrd2codigo.AsString)+' AND codigofilial='+quotedstr(glb_filial);

    _dm2.sdsProdutosembalagem.ExecSQL();
    _dm2.cdsProdutosembalagem.Open;
    _dm2.cdsProdutosembalagem.Refresh;

   
end;

procedure T_frmProdEmbalagens.gridPreEmbalagensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With gridPreEmbalagens.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridPreEmbalagens.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridPreEmbalagens.DefaultDrawDataCell(Rect, gridPreEmbalagens.Columns[DataCol].Field, State);
  end;
end;

end.
