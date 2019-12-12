object _frmProdEmbalagens: T_frmProdEmbalagens
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 535
  ClientWidth = 784
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
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 65
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label40: TLabel
      Left = 23
      Top = 10
      Width = 185
      Height = 23
      Caption = 'Produtos derivados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblprodpre: TLabel
      Left = 23
      Top = 36
      Width = 7
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridPreEmbalagens: TDBGrid
    Left = 0
    Top = 65
    Width = 784
    Height = 423
    Align = alTop
    DataSource = _dm2.dsourceProdutosembalagem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridPreEmbalagensDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Width = 370
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidadeembalagem'
        Title.Caption = 'Qtd. Embalagem KG'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigofilial'
        Width = 115
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 496
    Width = 107
    Height = 33
    Caption = 'Incluir'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 253
    Top = 496
    Width = 110
    Height = 33
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn4: TBitBtn
    Left = 677
    Top = 496
    Width = 99
    Height = 33
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object pnlCadItens: TPanel
    Left = 112
    Top = 88
    Width = 585
    Height = 257
    TabOrder = 5
    Visible = False
    object Label5: TLabel
      Left = 24
      Top = 48
      Width = 74
      Height = 13
      Caption = 'C'#243'digo Produto'
    end
    object Label4: TLabel
      Left = 24
      Top = 86
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object Label1: TLabel
      Left = 24
      Top = 128
      Width = 54
      Height = 13
      Caption = 'Peso KG / L'
    end
    object Label2: TLabel
      Left = 25
      Top = 261
      Width = 90
      Height = 13
      Caption = 'C'#243'digo Embalagem'
      Visible = False
    end
    object pntTitulo: TPanel
      Left = 1
      Top = 1
      Width = 583
      Height = 30
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object Label14: TLabel
        Left = 23
        Top = 8
        Width = 53
        Height = 13
        Caption = 'Adicionar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object btnprocurar: TBitBtn
      Left = 148
      Top = 61
      Width = 49
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = btnprocurarClick
    end
    object txtcodigo: TEdit
      Left = 24
      Top = 64
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object txtproduto: TEdit
      Left = 24
      Top = 101
      Width = 376
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 23
      Top = 214
      Width = 106
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 148
      Top = 214
      Width = 106
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = BitBtn6Click
    end
    object txtPeso: TCurrencyEdit
      Left = 23
      Top = 178
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DecimalPlaces = 3
      DisplayFormat = '0.000;-0.000'
      TabOrder = 6
    end
    object txtcodigoembalagem: TEdit
      Left = 24
      Top = 280
      Width = 106
      Height = 21
      Enabled = False
      TabOrder = 7
      Text = '0'
      Visible = False
    end
    object BitBtn8: TBitBtn
      Left = 136
      Top = 278
      Width = 49
      Height = 25
      Caption = '...'
      TabOrder = 8
      Visible = False
      OnClick = BitBtn8Click
    end
    object rgMedida: TRadioGroup
      Left = 23
      Top = 142
      Width = 377
      Height = 32
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'G - Grama / ML -  Mililitro'
        'KG - Quilo / L - Litro')
      TabOrder = 9
    end
  end
  object BitBtn7: TBitBtn
    Left = 127
    Top = 496
    Width = 112
    Height = 33
    Caption = 'Alterar'
    TabOrder = 6
    OnClick = BitBtn7Click
  end
  object BitBtn9: TBitBtn
    Left = 463
    Top = 496
    Width = 137
    Height = 33
    Caption = 'Montar Embalagem'
    TabOrder = 7
    OnClick = BitBtn9Click
  end
end
