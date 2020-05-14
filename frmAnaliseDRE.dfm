object _frmAnaliseDRE: T_frmAnaliseDRE
  Left = 0
  Top = 0
  Caption = 'An'#225'lise financeira'
  ClientHeight = 673
  ClientWidth = 1207
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1207
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 3
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label5: TLabel
      Left = 54
      Top = 25
      Width = 29
      Height = 13
      Caption = 'In'#237'cio:'
    end
    object Label6: TLabel
      Left = 227
      Top = 25
      Width = 26
      Height = 13
      Caption = 'Final:'
    end
    object data1: TDateEdit
      Left = 100
      Top = 22
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object data2: TDateEdit
      Left = 259
      Top = 22
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 531
      Top = 20
      Width = 100
      Height = 25
      Caption = 'Gerar dados'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object chkvendia: TCheckBox
      Left = 394
      Top = 26
      Width = 125
      Height = 17
      Caption = 'Apenas caixas abertos'
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 584
    Width = 1207
    Height = 89
    Align = alBottom
    TabOrder = 1
    object Label7: TLabel
      Left = 351
      Top = 22
      Width = 129
      Height = 13
      Caption = 'Total das despesas R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDesp: TLabel
      Left = 510
      Top = 22
      Width = 24
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 16
      Top = 28
      Width = 96
      Height = 13
      Caption = 'Vendas Bruta R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblvendabruta: TLabel
      Left = 175
      Top = 28
      Width = 24
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 640
      Top = 22
      Width = 123
      Height = 13
      Caption = 'Valor da produ'#231#227'o R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotProd: TLabel
      Left = 836
      Top = 22
      Width = 24
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 640
      Top = 44
      Width = 145
      Height = 13
      Caption = 'Valor da sa'#237'da aumox. R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblalmox: TLabel
      Left = 836
      Top = 44
      Width = 24
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 8
      Top = 3
      Width = 327
      Height = 71
    end
    object Label2: TLabel
      Left = 16
      Top = 50
      Width = 78
      Height = 13
      Caption = 'Venda Liq. R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblvendaliq: TLabel
      Left = 175
      Top = 50
      Width = 24
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 5
      Width = 45
      Height = 13
      Caption = 'Receitas:'
    end
    object Bevel2: TBevel
      Left = 341
      Top = 3
      Width = 290
      Height = 71
    end
    object Label8: TLabel
      Left = 351
      Top = 4
      Width = 45
      Height = 13
      Caption = 'Despesa:'
    end
    object Label10: TLabel
      Left = 351
      Top = 38
      Width = 53
      Height = 13
      Caption = 'Fixas  R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 351
      Top = 54
      Width = 76
      Height = 13
      Caption = 'Vari'#225'veis  R$:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblfixa: TLabel
      Left = 510
      Top = 38
      Width = 24
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblvariavel: TLabel
      Left = 510
      Top = 54
      Width = 24
      Height = 13
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 637
      Top = 3
      Width = 332
      Height = 71
    end
    object Label14: TLabel
      Left = 640
      Top = 3
      Width = 49
      Height = 13
      Caption = 'Produ'#231#227'o:'
    end
    object BitBtn2: TBitBtn
      Left = 1088
      Top = 40
      Width = 99
      Height = 33
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 1207
    Height = 535
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Despesas'
      object gridDespesas: TStringGrid
        Left = 0
        Top = 0
        Width = 1199
        Height = 507
        Align = alClient
        ColCount = 3
        RowCount = 1
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnDrawCell = gridDespesasDrawCell
      end
      object pnlContas: TPanel
        Left = 344
        Top = 24
        Width = 457
        Height = 417
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 244
          Height = 19
          Caption = 'Selecionar Contas de Despesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object chkbox: TCheckListBox
          Left = 16
          Top = 41
          Width = 425
          Height = 328
          ItemHeight = 13
          TabOrder = 0
        end
        object BitBtn4: TBitBtn
          Left = 368
          Top = 375
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object chktodas: TCheckBox
          Left = 16
          Top = 375
          Width = 97
          Height = 17
          Caption = 'Todas'
          TabOrder = 2
          OnClick = chktodasClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 1
      object gridVendas: TStringGrid
        Left = 0
        Top = 0
        Width = 1199
        Height = 507
        Align = alClient
        ColCount = 6
        RowCount = 1
        FixedRows = 0
        TabOrder = 0
        ExplicitHeight = 473
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sa'#237'das almoxarifado'
      ImageIndex = 2
      object gridSaida: TStringGrid
        Left = 0
        Top = 0
        Width = 1199
        Height = 507
        Align = alClient
        ColCount = 4
        RowCount = 1
        FixedRows = 0
        TabOrder = 0
        RowHeights = (
          24)
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Produ'#231#227'o'
      ImageIndex = 3
      object gridProducao: TStringGrid
        Left = 0
        Top = 0
        Width = 1199
        Height = 507
        Align = alClient
        ColCount = 3
        TabOrder = 0
      end
    end
  end
  object qrDespesas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = _dm2.ConnecDm2
    Left = 592
    Top = 416
  end
  object qrVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = _dm2.ConnecDm2
    Left = 672
    Top = 416
  end
  object qrSaldAum: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = _dm2.ConnecDm2
    Left = 760
    Top = 416
  end
  object qrProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = _dm2.ConnecDm2
    Left = 840
    Top = 416
  end
  object qrContas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = _dm2.ConnecDm2
    Left = 948
    Top = 471
  end
end
