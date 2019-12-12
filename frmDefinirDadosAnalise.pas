unit frmDefinirDadosAnalise;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  RxToolEdit, Vcl.DBCtrls, RxCurrEdit, Vcl.Buttons;

type
  T_frmDefinirDadosAnalise = class(TForm)
    txtFornecedor: TEdit;
    txtData: TDateEdit;
    pnlDados2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlDados1: TPanel;
    txtGordura: TCurrencyEdit;
    txtTemperatura: TCurrencyEdit;
    txtProteina: TCurrencyEdit;
    txtDornic: TCurrencyEdit;
    txtCrioscopia: TCurrencyEdit;
    txtDensidade: TCurrencyEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pnlQtd: TPanel;
    txtCusto: TCurrencyEdit;
    Label10: TLabel;
    txtQtd: TCurrencyEdit;
    Label11: TLabel;
    btnSalvar: TBitBtn;
    BitBtn2: TBitBtn;
    txtAgua: TCurrencyEdit;
    Label12: TLabel;
    cboAntibiotico: TComboBox;
    cboFosfatse: TComboBox;
    cboPeroxidase: TComboBox;
    cboSoda: TComboBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cboAmido: TComboBox;
    Label18: TLabel;
    cboNaoconforme: TComboBox;
    cboAlizarol: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    cboPeroxido: TComboBox;
    Panel4: TPanel;
    Label21: TLabel;
    pnltipoleite: TPanel;
    Label9: TLabel;
    Label22: TLabel;
    txtcodtipoleite: TEdit;
    Label23: TLabel;
    txtdesctipoleite: TEdit;
    BitBtn3: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmDefinirDadosAnalise: T_frmDefinirDadosAnalise;

implementation

{$R *.dfm}
uses
dm,main,frmAnaliseColeta,clipbrd,frmTipoLeite,frmProdutos;
procedure T_frmDefinirDadosAnalise.btnSalvarClick(Sender: TObject);
begin


    _dm.ConnecDm.Connected:=false;
    _dm.qrPadrao.SQL.clear;
    _dm.qrPadrao.SQL.Add('update analise set temperatura ='+quotedstr( currtostr(txtTemperatura.value))+',');
    _dm.qrPadrao.SQL.Add('quantidade='+ quotedstr(currtostr(txtQtd.value ))+',');
    _dm.qrPadrao.SQL.Add('dornic='+ quotedstr(currtostr(txtDornic.value ))+',');
    _dm.qrPadrao.SQL.Add('gordura='+  quotedstr(currtostr(txtGordura.value ))+',');
    _dm.qrPadrao.SQL.Add('proteina='+  quotedstr(currtostr(txtProteina.value))+',');
    _dm.qrPadrao.SQL.Add('crioscopia='+  quotedstr(currtostr(txtCrioscopia.value))+',');
    _dm.qrPadrao.SQL.Add('densidade='+  quotedstr(currtostr(txtDensidade.value) )+',');
    _dm.qrPadrao.SQL.Add('custo='+quotedstr(currtostr(txtCusto.value))+',');
    _dm.qrPadrao.SQL.Add('agua='+  quotedstr(currtostr(txtAgua.value) )+',');
    _dm.qrPadrao.SQL.Add('antibiotico='+  quotedstr(cboAntibiotico.text )+',');
    _dm.qrPadrao.SQL.Add('fosfatse= '+ quotedstr(cboFosfatse.text)+',');
    _dm.qrPadrao.SQL.Add('peroxidase='+  quotedstr(cboPeroxidase.text)+',');
    _dm.qrPadrao.SQL.Add('peroxido='+  quotedstr(cboPeroxido.text)+',');
    _dm.qrPadrao.SQL.Add('soda='+  quotedstr(cboSoda.text )+',');
    _dm.qrPadrao.SQL.Add('amido='+  quotedstr(cboAmido.text )+',');
    _dm.qrPadrao.SQL.Add('naoconforme='+  quotedstr(cboNaoconforme.text )+',');
    _dm.qrPadrao.SQL.Add('alizarol='+  quotedstr(cboAlizarol.text )+',');
    _dm.qrPadrao.SQL.Add('codigotipoleite='+  quotedstr(txtcodtipoleite.text )+',');
    _dm.qrPadrao.SQL.Add('tipoleite='+  quotedstr(txtdesctipoleite.text ));
    _dm.qrPadrao.SQL.Add('  where inc= '+_dm.cdsAnaliseinc.AsString);
    _dm.qrPadrao.ExecSQL();



     _dm.cdsAnalise.Close;
     _dm.cdsAnalise.Open;
     _dm.cdsAnalise.Refresh;

      ModalResult:=-1;



end;

procedure T_frmDefinirDadosAnalise.BitBtn2Click(Sender: TObject);
begin
 ModalResult:=-1;
end;

procedure T_frmDefinirDadosAnalise.BitBtn3Click(Sender: TObject);
begin
  _frmtipoleite:=T_frmtipoleite.Create(self);
  _frmtipoleite.ShowModal();
  //codigo tipo leite referente ao código do produtos associado ao tipo de leite

  if(_dm.cdsConfigLaticiniousarprodpadraoleite.AsString='S')then
  txtcodtipoleite.Text:= _dm.cdsConfigLaticiniocodprodpadraoleite.AsString
  else
  txtcodtipoleite.Text:= _dm.cdsTiposLeitecodigoassociado.AsString;

  txtdesctipoleite.Text:= _dm.cdsTiposLeitedescricao.AsString;
  txtCusto.Value:= _dm.cdsTiposLeitecusto.AsCurrency;
  _frmtipoleite.Release;


  end;

procedure T_frmDefinirDadosAnalise.FormShow(Sender: TObject);
begin
FormatSettings.DecimalSeparator:='.';

end;

end.
