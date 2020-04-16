object _frmComposicao: T_frmComposicao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 398
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnMouseActivate = FormMouseActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 681
    Height = 33
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label40: TLabel
      Left = 23
      Top = 10
      Width = 242
      Height = 13
      Caption = 'Composi'#231#227'o dos produtos da pr'#233'-produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridcomposicao: TDBGrid
    Left = 0
    Top = 33
    Width = 681
    Height = 265
    Align = alTop
    DataSource = _dm2.DSourceComposicao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridcomposicaoDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unidade'
        Title.Caption = 'Unidade'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipoinsumo'
        Title.Caption = 'Insumo'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Quantidade'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'custo'
        Title.Caption = 'Custo R$'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'codigofilial'
        Title.Caption = 'Filial'
        Width = 87
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 304
    Width = 665
    Height = 85
    TabOrder = 2
    object Bevel1: TBevel
      Left = 10
      Top = 8
      Width = 634
      Height = 34
    end
    object lblcomposicaoitem: TLabel
      Left = 31
      Top = 14
      Width = 120
      Height = 13
      Caption = 'Composi'#231#227'o do item: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 9
      Top = 48
      Width = 92
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 253
      Top = 48
      Width = 105
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object btnfechar: TBitBtn
      Left = 530
      Top = 48
      Width = 113
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnfecharClick
    end
    object BitBtn6: TBitBtn
      Left = 122
      Top = 48
      Width = 103
      Height = 25
      Caption = 'Alterar'
      TabOrder = 3
      OnClick = BitBtn6Click
    end
  end
  object pnladdcomposicao: TPanel
    Left = 103
    Top = 0
    Width = 549
    Height = 346
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 24
      Top = 47
      Width = 71
      Height = 13
      Caption = 'Tipo de insumo'
    end
    object Label3: TLabel
      Left = 24
      Top = 164
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label1: TLabel
      Left = 24
      Top = 265
      Width = 44
      Height = 13
      Caption = 'Custo R$'
      Visible = False
    end
    object Label4: TLabel
      Left = 24
      Top = 126
      Width = 38
      Height = 13
      Caption = 'Produto'
    end
    object Label5: TLabel
      Left = 24
      Top = 88
      Width = 74
      Height = 13
      Caption = 'C'#243'digo Produto'
    end
    object Label8: TLabel
      Left = 24
      Top = 220
      Width = 144
      Height = 13
      Caption = 'QTD. Utilizada por Par'#226'metro.'
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 547
      Height = 41
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 0
      object Label6: TLabel
        Left = 31
        Top = 18
        Width = 123
        Height = 13
        Caption = 'Adicionar composi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cbotipo: TComboBox
      Left = 24
      Top = 64
      Width = 245
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = '01-LEITE'
      Items.Strings = (
        '01-LEITE'
        '02-CREME'
        '03-MANTEIGA'
        '04-OUTROS')
    end
    object txtquntidade: TCurrencyEdit
      Left = 24
      Top = 237
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DecimalPlaces = 6
      DisplayFormat = '0.000000;0.000000'
      TabOrder = 2
    end
    object BitBtn3: TBitBtn
      Left = 24
      Top = 310
      Width = 121
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 178
      Top = 310
      Width = 103
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object txtCusto: TCurrencyEdit
      Left = 24
      Top = 285
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DecimalPlaces = 6
      DisplayFormat = '0.000000;0.000000'
      TabOrder = 5
      Visible = False
    end
    object BitBtn4: TBitBtn
      Left = 135
      Top = 102
      Width = 49
      Height = 25
      Caption = '...'
      TabOrder = 6
      OnClick = BitBtn4Click
    end
    object txtproduto: TEdit
      Left = 24
      Top = 141
      Width = 396
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object txtcodigo: TEdit
      Left = 24
      Top = 104
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 8
    end
    object rgMedida: TRadioGroup
      Left = 24
      Top = 183
      Width = 396
      Height = 32
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'G - Grama / ML -  Mililitro'
        'KG - Quilo / L - Litro')
      TabOrder = 9
    end
    object pnlpadraoleite: TPanel
      Left = 174
      Top = 221
      Width = 262
      Height = 85
      TabOrder = 10
      Visible = False
      object Label7: TLabel
        Left = 13
        Top = 0
        Width = 148
        Height = 13
        Caption = 'Par'#226'metro de utiliza'#231#227'o(KG / L)'
      end
      object paramLeite: TCurrencyEdit
        Left = 13
        Top = 16
        Width = 123
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DisplayFormat = '0.00;0.00'
        TabOrder = 0
      end
      object rgtipopar: TRadioGroup
        Left = 7
        Top = 43
        Width = 234
        Height = 37
        Caption = 'Tipo'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Leite'
          'Creme'
          'Manteiga')
        TabOrder = 1
      end
    end
  end
end
