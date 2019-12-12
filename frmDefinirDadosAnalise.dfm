object _frmDefinirDadosAnalise: T_frmDefinirDadosAnalise
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 553
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 75
    Width = 59
    Height = 13
    Caption = 'Fornecedor:'
  end
  object Label2: TLabel
    Left = 24
    Top = 102
    Width = 27
    Height = 13
    Caption = 'Data:'
  end
  object txtFornecedor: TEdit
    Left = 89
    Top = 72
    Width = 352
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object txtData: TDateEdit
    Left = 89
    Top = 99
    Width = 121
    Height = 21
    NumGlyphs = 2
    ReadOnly = True
    TabOrder = 1
  end
  object pnlDados2: TPanel
    Left = 8
    Top = 246
    Width = 529
    Height = 193
    TabOrder = 2
    object Label13: TLabel
      Left = 18
      Top = 8
      Width = 50
      Height = 13
      Caption = 'Antibi'#243'tico'
    end
    object Label14: TLabel
      Left = 26
      Top = 39
      Width = 42
      Height = 13
      Caption = 'Fosfatse'
    end
    object Label15: TLabel
      Left = 15
      Top = 64
      Width = 53
      Height = 13
      Caption = 'Peroxidase'
    end
    object Label16: TLabel
      Left = 44
      Top = 92
      Width = 24
      Height = 13
      Caption = 'Soda'
    end
    object Label17: TLabel
      Left = 230
      Top = 9
      Width = 29
      Height = 13
      Caption = 'Amido'
    end
    object Label18: TLabel
      Left = 198
      Top = 35
      Width = 69
      Height = 13
      Caption = 'N'#227'o Conforme'
    end
    object Label19: TLabel
      Left = 225
      Top = 62
      Width = 34
      Height = 13
      Caption = 'Alizarol'
    end
    object Label20: TLabel
      Left = 217
      Top = 91
      Width = 42
      Height = 13
      Caption = 'Per'#243'xido'
    end
    object cboAntibiotico: TComboBox
      Left = 81
      Top = 2
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object cboFosfatse: TComboBox
      Left = 81
      Top = 29
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object cboPeroxidase: TComboBox
      Left = 81
      Top = 55
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object cboSoda: TComboBox
      Left = 81
      Top = 82
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 3
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object cboAmido: TComboBox
      Left = 279
      Top = 5
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 4
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object cboNaoconforme: TComboBox
      Left = 279
      Top = 30
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 5
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object cboAlizarol: TComboBox
      Left = 279
      Top = 56
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 6
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object cboPeroxido: TComboBox
      Left = 279
      Top = 84
      Width = 52
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 7
      Text = 'S'
      Items.Strings = (
        'S'
        'N')
    end
    object pnltipoleite: TPanel
      Left = 10
      Top = 105
      Width = 517
      Height = 88
      TabOrder = 8
      object Label9: TLabel
        Left = 8
        Top = 13
        Width = 72
        Height = 13
        Caption = 'Tipo do leite:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 64
        Top = 36
        Width = 37
        Height = 13
        Caption = 'Codigo:'
        Visible = False
      end
      object Label23: TLabel
        Left = 48
        Top = 55
        Width = 50
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object txtcodtipoleite: TEdit
        Left = 111
        Top = 28
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 0
        Visible = False
      end
      object txtdesctipoleite: TEdit
        Left = 111
        Top = 55
        Width = 328
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object BitBtn3: TBitBtn
        Left = 238
        Top = 28
        Width = 58
        Height = 25
        Caption = '...'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
    end
  end
  object pnlDados1: TPanel
    Left = 8
    Top = 135
    Width = 529
    Height = 105
    TabOrder = 3
    object Label3: TLabel
      Left = 25
      Top = 8
      Width = 62
      Height = 13
      Caption = 'Temperatura'
    end
    object Label4: TLabel
      Left = 28
      Top = 55
      Width = 40
      Height = 13
      Caption = 'Proteina'
    end
    object Label5: TLabel
      Left = 216
      Top = 55
      Width = 49
      Height = 13
      Caption = 'Cri'#243'scopia'
    end
    object Label6: TLabel
      Left = 124
      Top = 55
      Width = 50
      Height = 13
      Caption = 'Densidade'
    end
    object Label7: TLabel
      Left = 216
      Top = 7
      Width = 43
      Height = 13
      Caption = 'Gordura.'
    end
    object Label8: TLabel
      Left = 121
      Top = 8
      Width = 34
      Height = 13
      Caption = 'Dornic.'
    end
    object Label12: TLabel
      Left = 312
      Top = 8
      Width = 29
      Height = 13
      Caption = #193'gua.'
    end
    object txtGordura: TCurrencyEdit
      Left = 216
      Top = 24
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 2
    end
    object txtTemperatura: TCurrencyEdit
      Left = 25
      Top = 25
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 0
    end
    object txtProteina: TCurrencyEdit
      Left = 25
      Top = 72
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 4
    end
    object txtDornic: TCurrencyEdit
      Left = 121
      Top = 25
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 1
    end
    object txtCrioscopia: TCurrencyEdit
      Left = 216
      Top = 72
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DecimalPlaces = 3
      DisplayFormat = '0.000;0.000'
      TabOrder = 6
    end
    object txtDensidade: TCurrencyEdit
      Left = 121
      Top = 72
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 5
    end
    object txtAgua: TCurrencyEdit
      Left = 312
      Top = 25
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 3
    end
  end
  object pnlQtd: TPanel
    Left = 8
    Top = 445
    Width = 529
    Height = 58
    TabOrder = 4
    object Label10: TLabel
      Left = 26
      Top = 5
      Width = 28
      Height = 13
      Caption = 'Custo'
    end
    object Label11: TLabel
      Left = 114
      Top = 5
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      Visible = False
    end
    object txtCusto: TCurrencyEdit
      Left = 25
      Top = 22
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 0
    end
    object txtQtd: TCurrencyEdit
      Left = 114
      Top = 22
      Width = 73
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 1
      Visible = False
    end
  end
  object btnSalvar: TBitBtn
    Left = 23
    Top = 510
    Width = 97
    Height = 34
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object BitBtn2: TBitBtn
    Left = 440
    Top = 510
    Width = 97
    Height = 34
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 44
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 7
    object Label21: TLabel
      Left = 18
      Top = 10
      Width = 198
      Height = 23
      Caption = 'Informa'#231#245'es do leite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
