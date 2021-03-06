object _frmProdPreProducao: T_frmProdPreProducao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 550
  ClientWidth = 893
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
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 893
    Height = 44
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label40: TLabel
      Left = 23
      Top = 10
      Width = 186
      Height = 18
      Caption = 'Forma'#231#227'o da composi'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridProdPre: TDBGrid
    Left = 0
    Top = 44
    Width = 893
    Height = 280
    Align = alTop
    DataSource = _dm.DSourceprd2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridProdPreDrawColumnCell
    OnKeyDown = gridProdPreKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'marcado'
        Title.Caption = 'Marcado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Descricao'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unidade'
        Title.Caption = 'Unidade'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CodigoFilial'
        Title.Caption = 'Filial'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parametrorendimento'
        Title.Caption = 'Rendimento estimado'
        Width = 131
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 328
    Width = 417
    Height = 214
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 37
      Width = 75
      Height = 13
      Caption = 'Pesquisa r'#225'pida'
    end
    object Label5: TLabel
      Left = 24
      Top = 176
      Width = 116
      Height = 13
      Caption = 'F2 - Marcar / Desmarcar'
    end
    object Label6: TLabel
      Left = 205
      Top = 176
      Width = 156
      Height = 13
      Caption = 'F8 - Marcar / Desmarcar (Todos)'
    end
    object txtNomePesquisa: TEdit
      Left = 24
      Top = 56
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = txtNomePesquisaChange
    end
    object rgTipoPesq: TRadioGroup
      Left = 24
      Top = 83
      Width = 361
      Height = 46
      Columns = 4
      ItemIndex = 0
      Items.Strings = (
        'Descri'#231#227'o'
        'C'#243'digo'
        'Marcados'
        'Todos')
      TabOrder = 1
      OnClick = rgTipoPesqClick
    end
    object BitBtn8: TBitBtn
      Left = 327
      Top = 55
      Width = 58
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = BitBtn8Click
    end
  end
  object Panel2: TPanel
    Left = 431
    Top = 328
    Width = 442
    Height = 214
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 40
      Top = 16
      Width = 138
      Height = 33
      Caption = 'Novo'
      Enabled = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 40
      Top = 57
      Width = 138
      Height = 34
      Caption = 'Alterar'
      Enabled = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object btnfechar: TBitBtn
      Left = 209
      Top = 169
      Width = 152
      Height = 38
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = btnfecharClick
    end
    object BitBtn4: TBitBtn
      Left = 209
      Top = 5
      Width = 152
      Height = 33
      Caption = 'Composi'#231#227'o'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object btnExcluir: TBitBtn
      Left = 41
      Top = 97
      Width = 136
      Height = 37
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 4
      OnClick = btnExcluirClick
    end
    object BitBtn3: TBitBtn
      Left = 209
      Top = 44
      Width = 152
      Height = 35
      Caption = 'Produtos derivados'
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object BitBtn7: TBitBtn
      Left = 209
      Top = 86
      Width = 152
      Height = 37
      Caption = 'Ordem de produ'#231#227'o'
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn10: TBitBtn
      Left = 209
      Top = 126
      Width = 152
      Height = 37
      Caption = 'Par'#226'metro de Rendimento'
      TabOrder = 7
      OnClick = BitBtn10Click
    end
    object BitBtn11: TBitBtn
      Left = 40
      Top = 140
      Width = 137
      Height = 41
      Caption = 'Exportar ficha t'#233'cnica'#13' para Excel'
      TabOrder = 8
      OnClick = BitBtn11Click
    end
  end
  object pnlProdPreProducao: TPanel
    Left = 160
    Top = 63
    Width = 544
    Height = 200
    TabOrder = 4
    Visible = False
    object Label3: TLabel
      Left = 27
      Top = 80
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 27
      Top = 107
      Width = 39
      Height = 13
      Caption = 'Unidade'
    end
    object txtDescricao: TEdit
      Left = 76
      Top = 77
      Width = 305
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 542
      Height = 33
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      object lbloperacao: TLabel
        Left = 23
        Top = 10
        Width = 51
        Height = 13
        Caption = 'Cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cbounidade: TComboBox
      Left = 76
      Top = 104
      Width = 141
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'KG-Quilo'
      Items.Strings = (
        'KG-Quilo'
        'LT-Litro'
        'UN-Unidade'
        'FR-Fra'#231#227'o')
    end
    object BitBtn5: TBitBtn
      Left = 76
      Top = 159
      Width = 91
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 376
      Top = 159
      Width = 91
      Height = 25
      Caption = 'Fechar'
      TabOrder = 4
      OnClick = BitBtn6Click
    end
  end
  object pnlRendimento: TPanel
    Left = 96
    Top = 140
    Width = 329
    Height = 122
    TabOrder = 5
    Visible = False
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 327
      Height = 33
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 23
        Top = 10
        Width = 147
        Height = 13
        Caption = 'Par'#226'metro de rendimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object txtParaRend: TCurrencyEdit
      Left = 24
      Top = 53
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-0.00'
      TabOrder = 1
      OnKeyPress = txtParaRendKeyPress
    end
    object BitBtn9: TBitBtn
      Left = 168
      Top = 50
      Width = 110
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 2
      OnClick = BitBtn9Click
    end
  end
end
