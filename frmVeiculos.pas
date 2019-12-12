unit frmVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, RxToolEdit, RxCurrEdit;

type
  T_frmVeiculos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    dbgridVeiculos: TDBGrid;
    RadioGroup1: TRadioGroup;
    rgTipo: TRadioGroup;
    btnfechar: TBitBtn;
    txtPesquisa: TEdit;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    pnlcad: TPanel;
    txtveiculo: TEdit;
    txtplaca: TEdit;
    txtmarca: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtrenavam: TEdit;
    Label6: TLabel;
    txtantt: TEdit;
    Label7: TLabel;
    Tara: TLabel;
    txttara: TCurrencyEdit;
    txtcapacidade: TCurrencyEdit;
    Label8: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    cbocombustival: TComboBox;
    procedure rgTipoClick(Sender: TObject);
    procedure dbgridVeiculosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure txtPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnfecharClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    frm:tform;
  end;

var
  _frmVeiculos: T_frmVeiculos;

implementation

{$R *.dfm}
 uses
 dm,main;
procedure T_frmVeiculos.BitBtn1Click(Sender: TObject);
begin
    glb_acao:='I';

   frm:=TForm.Create(self);
    frm.Width:=520;
    frm.Height:=290;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;


          txtveiculo.Text :='';
          txtplaca.Text  :='';
          txtcapacidade.Text  :='';
          cbocombustival.Text :='';
          txtantt.Text  :='';
          txtmarca.Text :='';
          txttara.Text :='';
          txtrenavam.Text:='';


    pnlcad.Parent:=frm;
    pnlcad.visible:=true;
    pnlcad.Align:=alClient;
    frm.ShowModal;


end;

procedure T_frmVeiculos.BitBtn2Click(Sender: TObject);
begin
    glb_acao:='A';


   frm:=TForm.Create(self);
    frm.Width:=520;
    frm.Height:=290;
    frm.Position:=poDesktopCenter;
    frm.BorderStyle:=bsDialog;


          txtveiculo.Text :=_dm.cdsVeiculosveiculo.AsString;
          txtplaca.Text  :=_dm.cdsVeiculosplaca.AsString;
          txtcapacidade.Text  :=_dm.cdsVeiculoscapacidadem3.AsString;
          cbocombustival.Text :=_dm.cdsVeiculoscombustivel.AsString;
          txtantt.Text  :=_dm.cdsVeiculosANTT.AsString;
          txtmarca.Text :=_dm.cdsVeiculosmarca.AsString;
          txttara.Text :=_dm.cdsVeiculostara.AsString;
          txtrenavam.Text:=_dm.cdsVeiculosrenavam.AsString;



    pnlcad.Parent:=frm;
    pnlcad.visible:=true;
    pnlcad.Align:=alClient;
    frm.ShowModal;


end;

procedure T_frmVeiculos.BitBtn3Click(Sender: TObject);
begin


         if(Application.MessageBox('Confirmar exclusão?','Pergunta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then
        exit;
               _dm.qrPadrao.SQL.Clear;
               _dm.qrPadrao.SQL.Add(' delete from  veiculos ');
               _dm.qrPadrao.SQL.Add('  where inc='+quotedstr(_dm.cdsVeiculosinc.AsString));
                _dm.qrPadrao.ExecSQL();

               Application.MessageBox('Excluido com sucesso!','Resultado',MB_ICONINFORMATION+MB_OK);
               try
               _dm.cdsVeiculos.Refresh;
               except
               end;


end;

procedure T_frmVeiculos.BitBtn5Click(Sender: TObject);
begin


      if(glb_acao='I')then
      begin


        if(Application.MessageBox('Confirmar cadastro?','Pergunta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then
        exit;


         _dm.qrPadrao.SQL.Clear;
         _dm.qrPadrao.SQL.Add('INSERT INTO veiculos (codigofilial,veiculo, placa, capacidadem3, combustivel, ANTT, marca,'+
                              'tara, renavam) VALUE (');
         _dm.qrPadrao.SQL.Add(quotedstr(glb_filial)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(txtveiculo.Text)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(txtplaca.Text)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(txtcapacidade.Text)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(cbocombustival.Text)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(txtantt.Text)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(txtmarca.Text)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(txttara.Text)+',');
         _dm.qrPadrao.SQL.Add(quotedstr(txtrenavam.Text)+')');
         _dm.qrPadrao.ExecSQL();


         Application.MessageBox('Cadastrado com sucesso!','Resultado',MB_ICONINFORMATION+MB_OK);
         try
         _dm.cdsVeiculos.Refresh;
         except
         end;

         frm.modalresult:=-1;

      end
      else if(glb_acao='A')then
      begin


       if(Application.MessageBox('Confirmar alteração?','Pergunta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then
        exit;
               _dm.qrPadrao.SQL.Clear;
               _dm.qrPadrao.SQL.Add(' update veiculos set ');
               _dm.qrPadrao.SQL.Add(' veiculo='+quotedstr(txtveiculo.Text)+',');
               _dm.qrPadrao.SQL.Add(' placa='+quotedstr(txtplaca.Text)+',');
               _dm.qrPadrao.SQL.Add(' capacidadem3='+quotedstr(txtcapacidade.Text)+',');
               _dm.qrPadrao.SQL.Add(' combustivel='+quotedstr(cbocombustival.Text)+',');
               _dm.qrPadrao.SQL.Add(' ANTT='+quotedstr(txtantt.Text)+',');
               _dm.qrPadrao.SQL.Add(' marca='+quotedstr(txtmarca.Text)+',');
               _dm.qrPadrao.SQL.Add(' tara='+quotedstr(txttara.Text)+',');
               _dm.qrPadrao.SQL.Add(' renavam='+quotedstr(txtrenavam.Text)+' where inc='+quotedstr(_dm.cdsVeiculosinc.AsString));
                _dm.qrPadrao.ExecSQL();

               Application.MessageBox('Alterado com sucesso!','Resultado',MB_ICONINFORMATION+MB_OK);
               try
               _dm.cdsVeiculos.Refresh;
               except
               end;

               frm.modalresult:=-1;

      end;



end;

procedure T_frmVeiculos.btnfecharClick(Sender: TObject);
begin
 ModalResult:=-1;
end;

procedure T_frmVeiculos.dbgridVeiculosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
With dbgridVeiculos.Canvas do
  begin
 // If Brush.Color = clhighlight then
  if gdSelected in State then
    Begin
      Brush.Color := $0045CFF3;
      Font.Color:=clBlack;
    end
  else
  Begin
  If Odd(dbgridVeiculos.DataSource.DataSet.RecNo) Then
    Begin
     Brush.Color:= $00E4E7CD

    End
  else
    Begin
      Brush.Color:= $00F5F5F5;

    End;
  End;
 dbgridVeiculos.DefaultDrawDataCell(Rect, dbgridVeiculos.Columns[DataCol].Field, State);
end;
end;

procedure T_frmVeiculos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(key=VK_ESCAPE)then
    btnfechar.Click;

   if(Key=VK_DOWN)then
   begin
    _dm.cdsVeiculos.Next;
     txtPesquisa.Text:='';
   end;

    if(Key=VK_up)then
   begin
    _dm.cdsVeiculos.Prior;
     txtPesquisa.Text:='';
   end;
end;

procedure T_frmVeiculos.rgTipoClick(Sender: TObject);
begin
txtPesquisa.SetFocus;
end;

procedure T_frmVeiculos.txtPesquisaChange(Sender: TObject);
var
sql:string;
begin
           sql:='select * from veiculos where ';

           if txtPesquisa.Text ='' then
           exit;

           case rgTipo.ItemIndex of
           0: sql:=sql+' veiculo like '+quotedstr(txtPesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);
           1: sql:=sql+' placa like '+quotedstr(txtPesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);
           2: sql:=sql+' motorista like '+quotedstr(txtPesquisa.Text+'%')+' and codigofilial ='+quotedstr(main.glb_filial);

           end;


           _dm.ConnecDm.Connected:=false;
           _dm.cdsVeiculos.close;
           _dm.sdsVeiculos.CommandText:=sql;
           _dm.sdsVeiculos.ExecSQL();
           _dm.cdsVeiculos.Open;
           _dm.cdsVeiculos.Refresh;

end;

end.
