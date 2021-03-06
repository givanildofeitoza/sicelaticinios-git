unit frmProdPreProducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  T_frmProdPreProducao = class(TForm)
    Panel10: TPanel;
    Label40: TLabel;
    gridProdPre: TDBGrid;
    Panel1: TPanel;
    txtNomePesquisa: TEdit;
    Label1: TLabel;
    rgTipoPesq: TRadioGroup;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnfechar: TBitBtn;
    BitBtn4: TBitBtn;
    pnlProdPreProducao: TPanel;
    txtDescricao: TEdit;
    Panel3: TPanel;
    lbloperacao: TLabel;
    cbounidade: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    btnExcluir: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    pnlRendimento: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    txtParaRend: TCurrencyEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    procedure btnfecharClick(Sender: TObject);
    procedure gridProdPreDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure txtNomePesquisaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridProdPreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure txtParaRendKeyPress(Sender: TObject; var Key: Char);
    procedure rgTipoPesqClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:tform;
  end;

var
  _frmProdPreProducao: T_frmProdPreProducao;

implementation

{$R *.dfm}
 uses
 main,dm,dm2,frmComposicao,frmProdEmbalagens,frmProcProducao,ComObj;
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

procedure T_frmProdPreProducao.BitBtn10Click(Sender: TObject);
begin
    frm := Tform.Create(self);
    frm.Width:=370;
    frm.Height:=160;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnlRendimento.Parent:=frm;
    pnlRendimento.Align:= alClient;
    pnlRendimento.Visible:=true;
    txtParaRend.value:=_dm.cdsPrd2parametrorendimento.AsCurrency;

    frm.ShowModal;


end;

procedure T_frmProdPreProducao.BitBtn11Click(Sender: TObject);
var
  PLANILHA : Variant;
  Linha : Integer;
begin



   try

        _dm.cdsPrd2.Filtered  := False;
        PLANILHA := CreateOleObject('Excel.Application');
        PLANILHA.Caption := 'SICElatic�nios - Produtos';
        PLANILHA.Visible := False;
        PLANILHA.WorkBooks.add(1);
        PLANILHA.Cells[1,1] := 'FICHA T�CNICA DE PRODUTOS';
        Linha :=3;


      Try
        _dm.cdsPrd2.first;
        while not _dm.cdsPrd2.Eof do
        begin

         PLANILHA.Cells[linha,1] := _dm.cdsprd2codigo.AsString+' - '+_dm.cdsprd2descricao.AsString;
          PLANILHA.Cells[linha,2] := 'COMPOSI��O';
         LINHA:=LINHA+1;
         // TITULO DAS COLUNAS
         PLANILHA.Cells[linha,2] := 'MAT�RIA';
         PLANILHA.Cells[linha,3] := 'PAR�METRO UTIL. ';
         PLANILHA.Cells[linha,4] := 'VALOR PAR�METRO L/KG';
         PLANILHA.Cells[linha,5] := 'QTD. UTIL. P/PAR�METRO L/KG';
         LINHA:=LINHA+1;


              _dm2.cdsComposicao.Close;
              _dm2.sdsComposicao.CommandText:='SELECT * FROM composicaolaticinio WHERE codpreproducao='+quotedstr(_dm.cdsprd2codigo.AsString)+' AND codigofilial='+quotedstr(glb_filial);
              _dm2.sdsComposicao.ExecSQL();
              _dm2.cdsComposicao.Open;
              _dm2.cdsComposicao.Refresh;


              _dm2.cdsComposicao.First;
              while not _dm2.cdsComposicao.Eof do
              begin



                 PLANILHA.Cells[linha,2] := _dm2.cdsComposicaocodigo.AsString+'-'+_dm2.cdsComposicaoproduto.AsString;

                 if(_dm2.cdsComposicaotipoparametro.AsString='L')then
                 PLANILHA.Cells[linha,3] := 'LEITE';
                 if(_dm2.cdsComposicaotipoparametro.AsString='C')then
                 PLANILHA.Cells[linha,3] := 'CREME';
                 if(_dm2.cdsComposicaotipoparametro.AsString='M')then
                 PLANILHA.Cells[linha,3] := 'MANTEIGA';

                 PLANILHA.Cells[linha,4] := _dm2.cdsComposicaoparametroleite.AsFloat;
                 PLANILHA.Cells[linha,5] := _dm2.cdsComposicaoQUANTIDADE.AsFloat;

                 LINHA:=LINHA+1;


              _dm2.cdsComposicao.Next;
              end;

              LINHA:=LINHA+2;

         _dm.cdsPrd2.next;
         application.ProcessMessages;
         end;
         PLANILHA.Columns.AutoFit;

                 PLANILHA.Visible := True;
             Finally
                 _dm.cdsPrd2.EnableControls;
                PLANILHA := Unassigned;
             end; // TRY

             except on e:exception do
             begin
             application.messagebox(pchar(e.Message),'Erro',mb_ok+mb_iconexclamation);
             // T_frmmensagens.Mensagem(mensagem, 'E',[mbOk]);
              exit;
             end;
             end; //try

end;

procedure T_frmProdPreProducao.BitBtn1Click(Sender: TObject);
begin


    frm := Tform.Create(self);
    lbloperacao.Caption:='Cadastro';
    frm.Width:=580;
    frm.Height:=260;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnlProdPreProducao.Parent:=frm;
    pnlProdPreProducao.Align:= alClient;
    pnlProdPreProducao.Visible:=true;
    txtDescricao.Text:='';

    frm.ShowModal;
end;

procedure T_frmProdPreProducao.BitBtn2Click(Sender: TObject);
begin

    frm := Tform.Create(self);
    lbloperacao.Caption:='Altera��o';
    txtDescricao.Text:=_dm2.cdsProdPreProducaodescricao.AsString;
    cbounidade.Text:=_dm2.cdsProdPreProducaounidade.AsString;
    frm.Width:=580;
    frm.Height:=260;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnlProdPreProducao.Parent:=frm;
    pnlProdPreProducao.Align:= alClient;
    pnlProdPreProducao.Visible:=true;


    frm.ShowModal;
end;

procedure T_frmProdPreProducao.BitBtn3Click(Sender: TObject);
begin

{
_frmProdEmbalagens:=T_frmProdEmbalagens.create(self);

_frmProdEmbalagens.lblprodpre.caption:= _dm2.cdsProdPreProducaocodigo.AsString+' - '+_dm2.cdsProdPreProducaodescricao.AsString;

_frmProdEmbalagens.showmodal;
_frmProdEmbalagens.release;
}


      _frmProdEmbalagens:=T_frmProdEmbalagens.create(self);

      _frmProdEmbalagens.lblprodpre.caption:= _dm.cdsPrd2codigo.AsString+' - '+_dm.cdsPrd2descricao.AsString;

      _frmProdEmbalagens.showmodal;
      _frmProdEmbalagens.release;




end;

procedure T_frmProdPreProducao.btnExcluirClick(Sender: TObject);
begin

    if( application.MessageBox('Excluir produto da pr�-producao?','Pergunta',MB_ICONQUESTION+mb_YESNO)=IDNo)then
     exit;

     _dm.ConnecDm.Connected:=true;
     _dm.qrPadrao.SQL.Clear;
     _dm.qrPadrao.SQL.add(' delete from produtospreproducao');
     _dm.qrPadrao.SQL.add(' where codigo='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString));
     _dm.qrPadrao.ExecSQL;

     _dm.cdsPrd2.Close;
     _dm.cdsPrd2.Open;
     _dm.cdsPrd2.refresh;



end;

procedure T_frmProdPreProducao.btnfecharClick(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmProdPreProducao.BitBtn4Click(Sender: TObject);
begin

{
 _dm2.ConnecDm2.Connected:=false;
 _dm2.cdsComposicao.Close;
 _dm2.sdsComposicao.commandtext:='select * from composicaolaticinio where codpreproducao='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString)+' and codigofilial='+quotedstr(glb_filial);
 _dm2.sdsComposicao.execsql;
 _dm2.cdsComposicao.open;
 _dm2.cdsComposicao.Refresh;
 }


 {

_frmcomposicao:= T_frmcomposicao.create(self);
_frmcomposicao.lblcomposicaoitem.caption:='Composi��o do item: '+_dm2.cdsProdPreProducaodescricao.asstring;

_frmcomposicao.showmodal;
_frmcomposicao.release;

 }


 _dm2.ConnecDm2.Connected:=false;
 _dm2.cdsComposicao.Close;
 _dm2.sdsComposicao.commandtext:='select * from composicaolaticinio where codpreproducao='+quotedstr(_dm.cdsPrd2codigo.AsString)+' and codigofilial='+quotedstr(glb_filial);
 _dm2.sdsComposicao.execsql;
 _dm2.cdsComposicao.open;
 _dm2.cdsComposicao.Refresh;



_frmcomposicao:= T_frmcomposicao.create(self);
_frmcomposicao.lblcomposicaoitem.caption:='Composi��o do item: '+_dm.cdsPrd2descricao.asstring;

_frmcomposicao.showmodal;
_frmcomposicao.release;


end;

procedure T_frmProdPreProducao.BitBtn5Click(Sender: TObject);
begin

if(lbloperacao.Caption='Cadastro')then
begin

 if( application.MessageBox('Cadastrar produto da pr�-producao?','Pergunta',MB_ICONQUESTION+mb_YESNO)=IDNo)then
     exit;


     if(txtDescricao.Text=string.Empty)then
     begin
       application.MessageBox('Informe a descri��o','Alerta',MB_ICONEXCLAMATION+MB_ok);
       exit;
     end;

     _dm.ConnecDm.Connected:=true;
     _dm.qrPadrao.SQL.Clear;
     _dm.qrPadrao.SQL.add('INSERT INTO produtospreproducao(descricao,unidade,codigofilial) VALUES (');
     _dm.qrPadrao.SQL.add(quotedstr(txtDescricao.Text)+',');
     _dm.qrPadrao.SQL.add(quotedstr(copy(cbounidade.Text,1,2))+',');
     _dm.qrPadrao.SQL.add(quotedstr(glb_filial)+')');
     _dm.qrPadrao.ExecSQL;

    _dm.cdsPrd2.Close;
    _dm.cdsPrd2.Open;
    _dm.cdsPrd2.refresh;


     frm.ModalResult:=-1;
end
else if(lbloperacao.Caption='Altera��o')then
begin
     _dm.ConnecDm.Connected:=true;
     _dm.qrPadrao.SQL.Clear;
     _dm.qrPadrao.SQL.add(' update produtospreproducao set descricao='+quotedstr(txtDescricao.Text)+',');
     _dm.qrPadrao.SQL.add(' unidade='+quotedstr(copy(cbounidade.Text,1,2)));
     _dm.qrPadrao.SQL.add(' where codigo='+quotedstr(_dm2.cdsProdPreProducaocodigo.AsString));
     _dm.qrPadrao.ExecSQL;

     _dm.cdsPrd2.Close;
     _dm.cdsPrd2.Open;
     _dm.cdsPrd2.refresh;


     frm.ModalResult:=-1;



end;

end;

procedure T_frmProdPreProducao.BitBtn6Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmProdPreProducao.BitBtn7Click(Sender: TObject);
begin


 _dm2.sdsProcProducao.Close;
 _dm2.cdsProcProducao.Close;
 _dm2.sdsProcProducao.CommandText:='SELECT * FROM cadetapaproducao WHERE codigoproduto='+quotedstr(_dm.cdsPrd2codigo.AsString)+' AND codigofilial='+quotedstr(glb_filial);
 _dm2.sdsProcProducao.ExecSQL();
  _dm2.sdsProcProducao.open;
 _dm2.cdsProcProducao.Open;
 _dm2.cdsProcProducao.refresh;

_frmProcProducao:=T_frmProcProducao.Create(Self);
_frmProcProducao.ShowModal();
_frmProcProducao.release;
end;

procedure T_frmProdPreProducao.BitBtn8Click(Sender: TObject);
var
filtro:string;
begin

          case rgTipoPesq.ItemIndex of
          0:filtro:=' AND descricao LIKE( '+quotedstr(txtNomePesquisa.Text+'%')+')';
          1:filtro:=' AND codigo ='+quotedstr(txtNomePesquisa.Text);
          2:
          begin
          filtro:=' AND marcado ="X" ';
           txtNomePesquisa.Text:='';
          end;
          3:
           begin
           filtro:='  ';
           txtNomePesquisa.Text:='';
          end;
          end;

             { _dm2.ConnecDm2.Connected:=false;
              _dm2.cdsProdPreProducao.Close;
              _dm2.sdsProdPreProducao.Close;
              _dm2.sdsProdPreProducao.commandtext:='select * from produtospreproducao '+filtro+quotedstr(txtNomePesquisa.Text+'%')+') and codigofilial='+quotedstr(glb_filial);
              _dm2.sdsProdPreProducao.ExecSQL();
              _dm2.cdsProdPreProducao.open;
              _dm2.cdsProdPreProducao.Refresh;
              }

              _dm.ConnecDm.Connected:=false;
              _dm.cdsPrd2.Close;
              _dm.sdsPrd2.Close;
              _dm.sdsPrd2.commandtext:='SELECT * FROM produtos  WHERE codigofilial='+quotedstr(glb_filial)+filtro;
              _dm.sdsPrd2.ExecSQL();
              _dm.cdsPrd2.open;
              _dm.cdsPrd2.Refresh;


end;

procedure T_frmProdPreProducao.BitBtn9Click(Sender: TObject);
begin
  _dm2.ConnecDm2.Connected:=true;
  _dm2.qrPadrao.SQL.Clear;
  _dm2.qrPadrao.SQL.Add('UPDATE '+glb_produtos+' SET parametrorendimento ='+quotedstr(formatcurr('##0.00',txtParaRend.Value))+' WHERE codigo='+quotedstr(_dm.cdsprd2codigo.AsString)+' AND codigofilial='+quotedstr(glb_filial));
  _dm2.qrPadrao.execsql;

    try
      _dm.cdsprd2.Refresh;
    except
    end;

    frm.ModalResult:=-1;


end;

procedure T_frmProdPreProducao.txtNomePesquisaChange(Sender: TObject);
var
filtro:string;
begin


        if(_dm2.cdsconffinancbuscaautomatica.asstring='S')then
        begin

          case rgTipoPesq.ItemIndex of
          0:filtro:=' WHERE descricao LIKE( ';
          1:filtro:=' WHERE codigo LIKE( ';
          end;

             { _dm2.ConnecDm2.Connected:=false;
              _dm2.cdsProdPreProducao.Close;
              _dm2.sdsProdPreProducao.Close;
              _dm2.sdsProdPreProducao.commandtext:='select * from produtospreproducao '+filtro+quotedstr(txtNomePesquisa.Text+'%')+') and codigofilial='+quotedstr(glb_filial);
              _dm2.sdsProdPreProducao.ExecSQL();
              _dm2.cdsProdPreProducao.open;
              _dm2.cdsProdPreProducao.Refresh;
              }

              _dm.ConnecDm.Connected:=false;
              _dm.cdsPrd2.Close;
              _dm.sdsPrd2.Close;
              _dm.sdsPrd2.commandtext:='select * from produtos '+filtro+quotedstr(txtNomePesquisa.Text+'%')+') and codigofilial='+quotedstr(glb_filial);
              _dm.sdsPrd2.ExecSQL();
              _dm.cdsPrd2.open;
              _dm.cdsPrd2.Refresh;

        end;

end;

procedure T_frmProdPreProducao.txtParaRendKeyPress(Sender: TObject;
  var Key: Char);
begin

  if(key=#13)then
  BitBtn9.SetFocus;

end;

procedure T_frmProdPreProducao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   if(key=VK_ESCAPE)then
   btnfechar.Click;

   if(Key=VK_DOWN)then
   begin
     _dm.cdsPrd2.Next;

     txtNomePesquisa.SetFocus;
   end;

   if(Key=VK_up)then
   begin
    _dm.cdsPrd2.Prior;

    txtNomePesquisa.SetFocus;
   end;

     if(Key=VK_F2)then
   begin


              _dm.ConnecDm.Connected:=false;

            if(trim(_dm.cdsprd2marcado.AsString)='')then
            begin
              _dm.qrPadrao.SQL.Clear;
              _dm.qrPadrao.SQL.Add('UPDATE '+glb_produtos+' SET marcado='+quotedstr('X')+' WHERE codigo='+quotedstr(_dm.cdsprd2codigo.AsString)+' AND codigofilial='+quotedstr(glb_filial));
              _dm.qrPadrao.ExecSql;
            end
            else
            begin

              _dm.qrPadrao.SQL.Clear;
              _dm.qrPadrao.SQL.Add('UPDATE '+glb_produtos+' SET marcado='+quotedstr('')+' WHERE codigo='+quotedstr(_dm.cdsprd2codigo.AsString)+' AND codigofilial='+quotedstr(glb_filial));
              _dm.qrPadrao.ExecSql;

            end;

              _dm.cdsPrd2.open;
              _dm.cdsPrd2.Refresh;


   end;


  if( application.MessageBox('Esse processo pode demora, deseja continuar?','Confirma��o',mb_iconquestion+MB_YESNO)=ID_YES)then
   begin
   if(Key=VK_F8)then
   begin
              _dm.ConnecDm.Connected:=false;

            if(trim(_dm.cdsprd2marcado.AsString)='')then
            begin
              _dm.qrPadrao.SQL.Clear;
              _dm.qrPadrao.SQL.Add('UPDATE '+glb_produtos+' SET marcado='+quotedstr('X')+' WHERE  codigofilial='+quotedstr(glb_filial));
              _dm.qrPadrao.ExecSql;
            end
            else
            begin

              _dm.qrPadrao.SQL.Clear;
              _dm.qrPadrao.SQL.Add('UPDATE '+glb_produtos+' SET marcado='+quotedstr('')+' WHERE  codigofilial='+quotedstr(glb_filial));
              _dm.qrPadrao.ExecSql;

            end;

              _dm.cdsPrd2.open;
              _dm.cdsPrd2.Refresh;
   end;

   end;





end;

procedure T_frmProdPreProducao.FormShow(Sender: TObject);
begin

   _dm.cdsPrd2.close;
   _dm.cdsPrd2.open;
 //  _dm2.cdsProdPreProducao.refresh;
     txtNomePesquisa.SetFocus;
end;

procedure T_frmProdPreProducao.gridProdPreDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin


With gridProdPre.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(gridProdPre.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 gridProdPre.DefaultDrawDataCell(Rect, gridProdPre.Columns[DataCol].Field, State);

end;
end;

procedure T_frmProdPreProducao.gridProdPreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  if(Key=VK_DELETE)then
  begin
      btnExcluir.Click;
  end;

end;

procedure T_frmProdPreProducao.rgTipoPesqClick(Sender: TObject);
begin
txtNomePesquisa.SetFocus;
end;

end.






