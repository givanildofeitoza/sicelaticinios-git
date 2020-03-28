object _frmFornecedores: T_frmFornecedores
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 546
  ClientWidth = 759
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
    Width = 759
    Height = 49
    Align = alTop
    Color = clMenuHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 140
      Height = 25
      Caption = 'Fornecedores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 428
    Width = 759
    Height = 118
    Align = alBottom
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 7
      Top = 6
      Width = 747
      Height = 105
      Caption = 'Pesquisa r'#225'pida'
      TabOrder = 0
      object txtNomePesquisa: TEdit
        Left = 9
        Top = 72
        Width = 312
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = txtNomePesquisaChange
      end
      object rgTipo: TRadioGroup
        Left = 3
        Top = 27
        Width = 414
        Height = 36
        Caption = 'Tipo'
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          'Fantasia'
          'Razao'
          'CPF'
          'CNPJ')
        TabOrder = 1
        OnClick = rgTipoClick
      end
      object btnfechar: TBitBtn
        Left = 626
        Top = 62
        Width = 105
        Height = 33
        Caption = 'Fechar'
        TabOrder = 2
        OnClick = btnfecharClick
      end
      object BitBtn1: TBitBtn
        Left = 327
        Top = 69
        Width = 90
        Height = 25
        Caption = 'Buscar'
        TabOrder = 3
        OnClick = BitBtn1Click
      end
    end
  end
  object gridFornecedores: TDBGrid
    Left = 0
    Top = 49
    Width = 759
    Height = 379
    Align = alClient
    Color = clScrollBar
    DataSource = _dm.DSourceFor
    FixedColor = clBtnHighlight
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
    OnDrawColumnCell = gridFornecedoresDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'razaosocial'
        Title.Caption = 'Raz'#227'o'
        Width = 283
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'empresa'
        Title.Caption = 'Fantasia'
        Width = 213
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoFilial'
        Title.Caption = 'Filial'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGC'
        Title.Caption = 'CNPJ'
        Visible = True
      end>
  end
end
