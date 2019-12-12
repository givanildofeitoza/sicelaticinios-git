object _frmformacaoembalagem: T_frmformacaoembalagem
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 525
  ClientWidth = 894
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 74
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label14: TLabel
      Left = 23
      Top = 14
      Width = 207
      Height = 19
      Caption = 'Forma'#231#227'o de embalagens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblProdutoDerivado: TLabel
      Left = 23
      Top = 39
      Width = 8
      Height = 16
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridEmb: TDBGrid
    Left = 8
    Top = 80
    Width = 878
    Height = 364
    DataSource = _dm2.DSourceCompEmbalagem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridEmbDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'codigoembalagem'
        Title.Caption = 'C'#243'digo'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produtoembalagem'
        Title.Caption = 'Componente'
        Width = 433
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Width = 130
        Visible = True
      end>
  end
  object pnlacoes: TPanel
    Left = 8
    Top = 456
    Width = 297
    Height = 63
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 15
      Top = 12
      Width = 113
      Height = 39
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 143
      Top = 12
      Width = 121
      Height = 39
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object pnldados: TPanel
    Left = 171
    Top = 120
    Width = 505
    Height = 249
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 40
      Top = 85
      Width = 61
      Height = 13
      Caption = 'Componente'
    end
    object Label2: TLabel
      Left = 40
      Top = 143
      Width = 110
      Height = 13
      Caption = 'Quantidade necess'#225'ria'
    end
    object Label3: TLabel
      Left = 40
      Top = 45
      Width = 112
      Height = 13
      Caption = 'C'#243'digo do Componente'
    end
    object txtcomponente: TEdit
      Left = 40
      Top = 104
      Width = 337
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object txtqtd: TCurrencyEdit
      Left = 40
      Top = 160
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-0.00'
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      Left = 383
      Top = 102
      Width = 50
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object BitBtn2: TBitBtn
      Left = 208
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 384
      Top = 200
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object txtCod: TEdit
      Left = 40
      Top = 61
      Width = 110
      Height = 21
      Enabled = False
      TabOrder = 5
    end
  end
  object BitBtn6: TBitBtn
    Left = 765
    Top = 480
    Width = 121
    Height = 39
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BitBtn6Click
  end
end
