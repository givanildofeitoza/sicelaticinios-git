object _frmProdutos: T_frmProdutos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 572
  ClientWidth = 891
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 57
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 9
      Width = 108
      Height = 29
      Caption = 'Produtos'
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
    Top = 400
    Width = 891
    Height = 172
    Align = alBottom
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 5
      Top = 8
      Width = 876
      Height = 156
      Caption = 'pequisa r'#225'pida'
      TabOrder = 0
      object rgTipo: TRadioGroup
        Left = 27
        Top = 63
        Width = 502
        Height = 48
        Caption = 'Tipo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Descri'#231#227'o'
          'C'#243'digo'
          'Barras')
        TabOrder = 1
        OnClick = rgTipoClick
      end
      object txtPesqProd: TEdit
        Left = 27
        Top = 114
        Width = 502
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = txtPesqProdChange
      end
      object btnFechar: TBitBtn
        Left = 760
        Top = 108
        Width = 113
        Height = 38
        Caption = 'Fechar'
        TabOrder = 2
        OnClick = btnFecharClick
      end
      object GroupBox2: TGroupBox
        Left = 27
        Top = 22
        Width = 502
        Height = 33
        TabOrder = 3
        object Label2: TLabel
          Left = 11
          Top = 8
          Width = 26
          Height = 13
          Caption = 'Fillial:'
        end
        object Label3: TLabel
          Left = 271
          Top = 8
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        object cboFilial: TComboBox
          Left = 43
          Top = 5
          Width = 222
          Height = 21
          TabOrder = 0
          Text = '00001'
        end
        object cboSituacao: TComboBox
          Left = 322
          Top = 5
          Width = 160
          Height = 21
          TabOrder = 1
          Text = 'Normal'
          Items.Strings = (
            'Normal'
            'Leite'
            'Promo'#231#227'o'
            'Inativo'
            'Item Geral'
            'Consigna'#231#227'o'
            'Item da Balan'#231'a'
            'Descontinuado')
        end
      end
    end
  end
  object gridProdutos: TDBGrid
    Left = 0
    Top = 57
    Width = 891
    Height = 343
    Align = alClient
    Color = cl3DLight
    DataSource = _dm.DSourcePrd
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridProdutosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unidade'
        Title.Caption = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precovenda'
        Title.Caption = 'pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigobarras'
        Title.Caption = 'Barras'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'situacao'
        Title.Caption = 'Situa'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoFilial'
        Title.Caption = 'Filial'
        Visible = True
      end>
  end
end
