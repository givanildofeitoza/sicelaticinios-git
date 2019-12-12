object _frmBuscProdLote: T_frmBuscProdLote
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 477
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 357
    Width = 73
    Height = 13
    Caption = 'N'#250'mero do lote'
  end
  object Label2: TLabel
    Left = 154
    Top = 357
    Width = 40
    Height = 13
    Caption = 'Validade'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 405
    Width = 713
    Height = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 739
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label6: TLabel
      Left = 31
      Top = 12
      Width = 158
      Height = 16
      Caption = 'Busca produ'#231#227'o por lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridProdLote: TDBGrid
    Left = 8
    Top = 47
    Width = 713
    Height = 290
    DataSource = _dm2.DSourceproducaoitens
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridProdLoteDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'produto'
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lote'
        Title.Caption = 'Nr. Lote'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'validade'
        Title.Caption = 'Validade'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numeroproducao'
        Title.Caption = 'N'#250'mero Produ'#231#227'o'
        Width = 127
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 290
    Top = 374
    Width = 113
    Height = 25
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object txtlote: TEdit
    Left = 8
    Top = 376
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object txtvalidade: TDateEdit
    Left = 154
    Top = 376
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 430
    Width = 137
    Height = 25
    Caption = 'Abrir Produ'#231#227'o'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 616
    Top = 430
    Width = 105
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
end
