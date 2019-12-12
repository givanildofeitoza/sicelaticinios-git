object _frmEmbAdicionais: T_frmEmbAdicionais
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 650
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 351
    Width = 155
    Height = 16
    Caption = 'Componentes adicionais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 57
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label40: TLabel
      Left = 23
      Top = 17
      Width = 184
      Height = 19
      Caption = 'Embalagens adicionais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridDerivados2: TStringGrid
    Left = 0
    Top = 57
    Width = 802
    Height = 288
    Align = alTop
    ColCount = 3
    FixedCols = 0
    RowCount = 2
    TabOrder = 1
    OnClick = gridDerivados2Click
    OnDrawCell = gridDerivados2DrawCell
    OnKeyPress = gridDerivados2KeyPress
    OnSelectCell = gridDerivados2SelectCell
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 605
    Width = 185
    Height = 41
    Caption = 'Adicionar Componente'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 605
    Width = 161
    Height = 41
    Caption = 'Imprimir'
    TabOrder = 3
    Visible = False
    OnClick = BitBtn2Click
  end
  object pnladd: TPanel
    Left = 104
    Top = 120
    Width = 529
    Height = 193
    TabOrder = 4
    Visible = False
    object txtcod: TEdit
      Left = 32
      Top = 38
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object txtDesc: TEdit
      Left = 32
      Top = 88
      Width = 457
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 159
      Top = 35
      Width = 57
      Height = 25
      Caption = '...'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object txtQtd: TCurrencyEdit
      Left = 32
      Top = 136
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;0.00'
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 159
      Top = 133
      Width = 113
      Height = 25
      Caption = 'Requisitar Emb.'
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 384
      Top = 136
      Width = 107
      Height = 25
      Caption = 'Fechar'
      TabOrder = 5
      OnClick = BitBtn5Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 376
    Width = 786
    Height = 223
    DataSource = _dm2.dSourceprodmovembalagem
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigoembalagem'
        Title.Caption = 'C'#243'digo'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricaoembalagem'
        Title.Caption = 'Componente Emb.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtdutilizado'
        Title.Caption = 'Qtd. Adicional'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Visible = True
      end>
  end
  object BitBtn6: TBitBtn
    Left = 685
    Top = 605
    Width = 109
    Height = 41
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BitBtn6Click
  end
end
