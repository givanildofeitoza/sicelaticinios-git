object _frmColetores: T_frmColetores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 551
  ClientWidth = 767
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object painelrodape: TPanel
    Left = 0
    Top = 408
    Width = 767
    Height = 143
    Align = alBottom
    TabOrder = 0
    object rgTipo: TRadioGroup
      Left = 16
      Top = 6
      Width = 402
      Height = 59
      Caption = 'Tipo'
      Columns = 4
      ItemIndex = 1
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Apelido'
        'Cpf')
      TabOrder = 1
      OnClick = rgTipoClick
    end
    object txtPesq: TEdit
      Left = 16
      Top = 80
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = txtPesqChange
    end
    object btnfechar: TBitBtn
      Left = 640
      Top = 88
      Width = 113
      Height = 41
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = btnfecharClick
    end
    object BitBtn3: TBitBtn
      Left = 434
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 515
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 596
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 5
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 343
      Top = 78
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 6
      OnClick = BitBtn6Click
    end
  end
  object dbGridColetores: TDBGrid
    Left = 0
    Top = 49
    Width = 767
    Height = 359
    Align = alClient
    DataSource = _dm.DsourceColetores
    GradientEndColor = clMedGray
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbGridColetoresDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'apelido'
        Title.Caption = 'Apelido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Title.Caption = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fone'
        Title.Caption = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'celular'
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigofilial'
        Title.Caption = 'Filial'
        Visible = True
      end>
  end
  object topo: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 49
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    object lbltitulo: TLabel
      Left = 48
      Top = 11
      Width = 215
      Height = 29
      Caption = 'Coletores de Leite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlcadastro: TPanel
    Left = 434
    Top = 9
    Width = 521
    Height = 417
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 40
      Top = 32
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label2: TLabel
      Left = 40
      Top = 75
      Width = 35
      Height = 13
      Caption = 'Apelido'
    end
    object Label3: TLabel
      Left = 234
      Top = 121
      Width = 14
      Height = 13
      Caption = 'RG'
    end
    object Label4: TLabel
      Left = 40
      Top = 121
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object Label5: TLabel
      Left = 40
      Top = 167
      Width = 24
      Height = 13
      Caption = 'Fone'
    end
    object Label7: TLabel
      Left = 408
      Top = 207
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label8: TLabel
      Left = 39
      Top = 211
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label9: TLabel
      Left = 41
      Top = 253
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label10: TLabel
      Left = 234
      Top = 253
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label11: TLabel
      Left = 41
      Top = 299
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object lblacao: TLabel
      Left = 208
      Top = 8
      Width = 54
      Height = 18
      Caption = 'lblacao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtnome: TEdit
      Left = 40
      Top = 48
      Width = 433
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object txtapelido: TEdit
      Left = 40
      Top = 94
      Width = 433
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object txtcpf: TEdit
      Left = 40
      Top = 140
      Width = 169
      Height = 21
      TabOrder = 2
    end
    object txtrg: TEdit
      Left = 234
      Top = 140
      Width = 169
      Height = 21
      TabOrder = 3
    end
    object txtfone: TMaskEdit
      Left = 40
      Top = 186
      Width = 159
      Height = 21
      EditMask = '!\(99\)0000-0000;0;_'
      MaxLength = 13
      TabOrder = 4
      Text = ''
    end
    object txtnumero: TEdit
      Left = 407
      Top = 226
      Width = 58
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object txtbairro: TEdit
      Left = 39
      Top = 272
      Width = 169
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object txtendereco: TEdit
      Left = 40
      Top = 226
      Width = 361
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object txtcidade: TEdit
      Left = 234
      Top = 272
      Width = 231
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object txtestado: TEdit
      Left = 41
      Top = 318
      Width = 80
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object BitBtn1: TBitBtn
      Left = 416
      Top = 368
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 10
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 184
      Top = 369
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 11
      OnClick = BitBtn2Click
    end
  end
end
