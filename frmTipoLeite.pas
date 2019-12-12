unit frmTipoLeite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  T_frmTipoLeite = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dbgridtipoleite: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    pnlDados: TPanel;
    Label2: TLabel;
    txtDescricao: TEdit;
    Bevel1: TBevel;
    btnCadastrar: TBitBtn;
    BitBtn6: TBitBtn;
    Label6: TLabel;
    cbofilial: TComboBox;
    btnFechar: TBitBtn;
    Panel2: TPanel;
    Label5: TLabel;
    Label3: TLabel;
    txtcodigo: TEdit;
    BitBtn4: TBitBtn;
    txtproduto: TEdit;
    Label4: TLabel;
    Label7: TLabel;
    txtCusto: TCurrencyEdit;
    lblpadraoalerta: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure dbgridtipoleiteDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:Tform;
    acao:string;
  end;

var
  _frmTipoLeite: T_frmTipoLeite;

implementation

{$R *.dfm}
uses
main,dm, frmProdutos;

procedure T_frmTipoLeite.BitBtn1Click(Sender: TObject);
begin
acao:='I';
    frm := Tform.Create(self);
    frm.Width:=450;
    frm.Height:=310;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnldados.Parent:=frm;
    pnldados.Align:= alClient;
    pnldados.Visible:=true;

     cbofilial.Text:= glb_filial;
     txtDescricao.Text:= '';
     txtcodigo.Text:='';
     txtproduto.Text:='';
     Panel2.Visible:=true;

     if(_dm.cdsConfigLaticiniousarprodpadraoleite.AsString='S')then
     begin

      lblpadraoalerta.Visible:=true;
      txtcodigo.Text:=_dm.cdsConfigLaticiniocodprodpadraoleite.AsString;
      txtproduto.Text:=_dm.cdsConfigLaticinioprodpadraoleite.AsString;
      Panel2.Enabled:=false;
     end
     else
     begin
      lblpadraoalerta.Visible:=false;
      txtcodigo.Text:='';
      txtproduto.Text:='';
      Panel2.Enabled:=true;
     end;



    frm.ShowModal;

end;

procedure T_frmTipoLeite.BitBtn2Click(Sender: TObject);
begin
acao:='A';

frm := Tform.Create(self);
    frm.Width:=450;
    frm.Height:=310;
    frm.BorderStyle:=bsDialog;
    frm.Position:=poDesktopCenter;

    pnldados.Parent:=frm;
    pnldados.Align:= alClient;
    pnldados.Visible:=true;

     cbofilial.Text:=    _dm.cdsTiposLeitecodigofilial.AsString;
     txtDescricao.Text:= _dm.cdsTiposLeitedescricao.AsString;
     txtcodigo.Text:=    _dm.cdsTiposLeitecodigoassociado.AsString;
     txtproduto.Text:=   _dm.cdsTiposLeiteprodutoassociado.AsString;
     txtCusto.Value:=    _dm.cdsTiposLeitecusto.ascurrency;

     if(_dm.cdsConfigLaticiniousarprodpadraoleite.AsString='S')then
     begin
    //  txtcodigo.Text:=_dm.cdsConfigLaticiniocodprodpadraoleite.AsString;
    //  txtproduto.Text:=_dm.cdsConfigLaticinioprodpadraoleite.AsString;
      Panel2.visible:=false;
     end;

    frm.ShowModal;
end;

procedure T_frmTipoLeite.BitBtn3Click(Sender: TObject);
begin

if(Application.MessageBox('Deseja excluir?','Pergunta',MB_ICONQUESTION+MB_YESNO)=idno)then
exit;

_dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('DELETE FROM tiposleite  ');
    _dm.qrpadrao.SQL.Add(' WHERE id='+quotedstr(_dm.cdsTiposLeiteid.AsString));
    _dm.qrpadrao.ExecSQL;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsTiposLeite.Close;
    _dm.cdsTiposLeite.Open;
    _dm.cdsTiposLeite.Refresh;

    application.MessageBox('Excluido com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);


end;

procedure T_frmTipoLeite.BitBtn4Click(Sender: TObject);
begin

    _frmProdutos:=T_frmprodutos.Create(self);
    _frmProdutos.ShowModal;


    if(copy(_dm.cdsPrdtipo.AsString,1,1)<>'2')then
    begin
      application.MessageBox('Produto não é uma matéria-prima!','Alerta',MB_ICONEXCLAMATION+MB_OK);
       txtcodigo.Text:='';
       txtproduto.Text:='';
      exit;
    end;

    txtcodigo.Text:=   _dm.cdsPrdcodigo.AsString;
    txtproduto.Text:=  _dm.cdsPrddescricao.AsString;

    _frmProdutos.Release;


end;

procedure T_frmTipoLeite.btnFecharClick(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmTipoLeite.btnCadastrarClick(Sender: TObject);
begin

   if(cbofilial.Text='') or (txtDescricao.Text='') or (txtcodigo.Text='') or (txtproduto.Text='')then
    begin
      application.MessageBox('Todos os campos devem ser preenchidos!','Alerta',MB_ICONEXCLAMATION+MB_OK);
      exit;
    end;



    if(acao='I')then
    begin


        if(_dm.cdsConfigLaticiniousarprodpadraoleite.AsString='S')then


    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('INSERT INTO tiposleite (descricao,codigoassociado,produtoassociado,custo,codigofilial) VALUES (');
    _dm.qrpadrao.SQL.Add(quotedstr(txtDescricao.Text)+',');
   //  if(_dm.cdsConfigLaticiniousarprodpadraoleite.AsString='S')then
     _dm.qrpadrao.SQL.Add(quotedstr(txtcodigo.Text)+',');
    _dm.qrpadrao.SQL.Add(quotedstr(txtproduto.Text)+',');
   // end;
   // _dm.qrpadrao.SQL.Add(quotedstr(txtproduto.Text)+',');
    _dm.qrpadrao.SQL.Add(quotedstr(currtostr(txtCusto.Value))+',');
    _dm.qrpadrao.SQL.Add(quotedstr(copy(cbofilial.Text,1,5))+')');
    _dm.qrpadrao.ExecSQL;



    application.MessageBox('Cadastrado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
    frm.ModalResult:=-1;

    _dm.ConnecDm.Connected:=false;
    _dm.cdsTiposLeite.Close;
    _dm.sdsTiposLeite.CommandText:='select * from tiposleite where codigofilial='+quotedstr(glb_filial);
    _dm.sdsTiposLeite.Execsql;
    _dm.cdsTiposLeite.Open;
    _dm.cdsTiposLeite.Refresh;

    end
    else if(acao='A')then
    begin


    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('UPDATE tiposleite SET ');
    _dm.qrpadrao.SQL.Add('descricao='+quotedstr(txtDescricao.Text)+',');

   // if(_dm.cdsConfigLaticiniousarprodpadraoleite.AsString='S')then

    _dm.qrpadrao.SQL.Add('codigoassociado='+quotedstr(txtcodigo.Text)+',');
    _dm.qrpadrao.SQL.Add('produtoassociado='+quotedstr(txtproduto.Text)+',');
  //  end;
    _dm.qrpadrao.SQL.Add('custo='+quotedstr(currtostr(txtCusto.Value))+',');
    _dm.qrpadrao.SQL.Add('codigofilial='+quotedstr(copy(cbofilial.Text,1,5))+' WHERE id='+quotedstr(_dm.cdsTiposLeiteid.AsString));
    _dm.qrpadrao.ExecSQL;



    _dm.ConnecDm.Connected:=false;
    _dm.cdsTiposLeite.Close;
    _dm.cdsTiposLeite.Open;
    _dm.cdsTiposLeite.Refresh;

    application.MessageBox('Alterado com sucesso!','Confirmação',MB_ICONINFORMATION+MB_OK);
    frm.ModalResult:=-1;


    end;

end;

procedure T_frmTipoLeite.dbgridtipoleiteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With dbgridtipoleite.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(dbgridtipoleite.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 dbgridtipoleite.DefaultDrawDataCell(Rect, dbgridtipoleite.Columns[DataCol].Field, State);
end;

end;

procedure T_frmTipoLeite.BitBtn6Click(Sender: TObject);
begin
frm.ModalResult:=-1;
end;

procedure T_frmTipoLeite.FormShow(Sender: TObject);
begin
FormatSettings.DecimalSeparator:='.';

    _dm.ConnecDm.Connected:=false;
    _dm.qrpadrao.SQL.clear;
    _dm.qrpadrao.SQL.Add('SELECT descricao,empresa,fantasia,codigofilial FROM filiais WHERE grupo='+quotedstr(glb_grupo));
    _dm.qrpadrao.Open;

     cbofilial.Items.Clear;
    _dm.qrpadrao.first;
    while not _dm.qrpadrao.eof do
    begin
     cbofilial.Items.Add(_dm.qrpadrao.FieldByName('Codigofilial').AsString+'-'+_dm.qrpadrao.FieldByName('fantasia').AsString);

    _dm.qrpadrao.next;
    end;

     _dm.ConnecDm.Connected:=false;
    _dm.cdsTiposLeite.Close;
    _dm.sdsTiposLeite.CommandText:='select * from tiposleite where codigofilial='+quotedstr(glb_filial);
    _dm.sdsTiposLeite.Execsql;
    _dm.cdsTiposLeite.Open;
    _dm.cdsTiposLeite.Refresh;

end;

end.
