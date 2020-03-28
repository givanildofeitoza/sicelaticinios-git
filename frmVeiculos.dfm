object _frmVeiculos: T_frmVeiculos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 491
  ClientWidth = 641
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 49
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 9
      Width = 99
      Height = 29
      Caption = 'Ve'#237'culos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 363
    Width = 641
    Height = 128
    Align = alBottom
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 2
      Top = 0
      Width = 639
      Height = 121
      Caption = 'Pesquisa r'#225'pida'
      TabOrder = 1
    end
    object rgTipo: TRadioGroup
      Left = 40
      Top = 14
      Width = 289
      Height = 49
      Caption = 'Tipo'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Ve'#237'culo'
        'Placa'
        'Motorista')
      TabOrder = 2
      OnClick = rgTipoClick
    end
    object btnfechar: TBitBtn
      Left = 534
      Top = 82
      Width = 91
      Height = 33
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = btnfecharClick
    end
    object txtPesquisa: TEdit
      Left = 40
      Top = 73
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = txtPesquisaChange
    end
    object GroupBox1: TGroupBox
      Left = 335
      Top = 14
      Width = 290
      Height = 49
      Caption = 'Ferramentas'
      TabOrder = 4
      object BitBtn1: TBitBtn
        Left = 15
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 102
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 192
        Top = 15
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
    end
    object BitBtn6: TBitBtn
      Left = 335
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 5
      OnClick = BitBtn6Click
    end
  end
  object dbgridVeiculos: TDBGrid
    Left = 0
    Top = 49
    Width = 641
    Height = 314
    Align = alClient
    DataSource = _dm.DSourceVeiculos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgridVeiculosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'veiculo'
        Title.Caption = 'Ve'#237'culos'
        Width = 263
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'placa'
        Title.Caption = 'Placa'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'motorista'
        Title.Caption = 'Motorista'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'capacidadeKg'
        Title.Caption = 'Capacidade Kg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'capacidadem3'
        Title.Caption = 'Cap. em M'#178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'marca'
        Title.Caption = 'Marca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'renavam'
        Title.Caption = 'Renavam'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigofilial'
        Title.Caption = 'Filial'
        Visible = True
      end>
  end
  object pnlcad: TPanel
    Left = 128
    Top = 68
    Width = 505
    Height = 273
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 40
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Ve'#237'culo'
    end
    object Label3: TLabel
      Left = 40
      Top = 67
      Width = 25
      Height = 13
      Caption = 'Placa'
    end
    object Label4: TLabel
      Left = 184
      Top = 67
      Width = 29
      Height = 13
      Caption = 'Marca'
    end
    object Label5: TLabel
      Left = 42
      Top = 113
      Width = 58
      Height = 13
      Caption = 'Combust'#237'vel'
    end
    object Label6: TLabel
      Left = 184
      Top = 113
      Width = 47
      Height = 13
      Caption = 'RENAVAN'
    end
    object Label7: TLabel
      Left = 328
      Top = 113
      Width = 26
      Height = 13
      Caption = 'ANTT'
    end
    object Tara: TLabel
      Left = 42
      Top = 159
      Width = 22
      Height = 13
      Caption = 'Tara'
    end
    object Label8: TLabel
      Left = 184
      Top = 159
      Width = 56
      Height = 13
      Caption = 'Capacidade'
    end
    object txtveiculo: TEdit
      Left = 40
      Top = 40
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object txtplaca: TEdit
      Left = 40
      Top = 86
      Width = 134
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object txtmarca: TEdit
      Left = 184
      Top = 86
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object txtrenavam: TEdit
      Left = 184
      Top = 132
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object txtantt: TEdit
      Left = 328
      Top = 132
      Width = 105
      Height = 21
      TabOrder = 4
    end
    object txttara: TCurrencyEdit
      Left = 40
      Top = 183
      Width = 131
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-0.00'
      TabOrder = 5
      Value = 1.000000000000000000
    end
    object txtcapacidade: TCurrencyEdit
      Left = 184
      Top = 183
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-0.00'
      TabOrder = 6
      Value = 1.000000000000000000
    end
    object BitBtn4: TBitBtn
      Left = 377
      Top = 231
      Width = 105
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 7
    end
    object BitBtn5: TBitBtn
      Left = 126
      Top = 231
      Width = 105
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 8
      OnClick = BitBtn5Click
    end
    object cbocombustival: TComboBox
      Left = 40
      Top = 132
      Width = 134
      Height = 21
      ItemIndex = 0
      TabOrder = 9
      Text = 'DISEL'
      Items.Strings = (
        'DISEL'
        'GASOLINA'
        #193'LCOOL'
        'EL'#201'TRICO'
        'G'#193'S')
    end
  end
end
