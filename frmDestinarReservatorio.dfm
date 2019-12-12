object _frmDestinarReservatorio: T_frmDestinarReservatorio
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 509
  ClientWidth = 460
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 276
    Top = 480
    Width = 79
    Height = 13
    Caption = 'Total informado:'
  end
  object Panel13: TPanel
    Left = 0
    Top = 0
    Width = 460
    Height = 49
    Align = alTop
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object Label28: TLabel
      Left = 8
      Top = 1
      Width = 230
      Height = 19
      Caption = 'Destinar para reservat'#243'rios:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVeiculo: TLabel
      Left = 9
      Top = 18
      Width = 43
      Height = 13
      Caption = 'Ve'#237'culo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblPlaca: TLabel
      Left = 11
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Placa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridSilo: TStringGrid
    Left = 0
    Top = 49
    Width = 460
    Height = 138
    Align = alTop
    BiDiMode = bdLeftToRight
    ColCount = 2
    RowCount = 2
    ParentBiDiMode = False
    TabOrder = 1
    OnClick = gridSiloClick
    OnSelectCell = gridSiloSelectCell
    RowHeights = (
      24
      24)
  end
  object Panel1: TPanel
    Left = 0
    Top = 187
    Width = 460
    Height = 25
    Align = alTop
    Color = clMedGray
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 176
      Top = 4
      Width = 110
      Height = 16
      Caption = 'Saldo a destinar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txtSaldoTotal: TCurrencyEdit
      Left = 300
      Top = 1
      Width = 159
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      Align = alRight
      DisplayFormat = '0.00;0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ExplicitHeight = 27
    end
  end
  object gridDest: TDBGrid
    Left = 0
    Top = 212
    Width = 460
    Height = 159
    Align = alTop
    DataSource = _dm.DSourceMovDepositos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridDestDrawColumnCell
    OnKeyDown = gridDestKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'reservatorioveiculo'
        Title.Caption = 'Reservat'#243'rio'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantidade'
        Title.Caption = 'Qtd. Litros'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'deposito'
        Title.Caption = 'Dep'#243'sito (SILO)'
        Width = 233
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 371
    Width = 460
    Height = 98
    Align = alTop
    TabOrder = 4
    object Label2: TLabel
      Left = 28
      Top = 21
      Width = 51
      Height = 13
      Caption = 'Qtd Litros:'
    end
    object Label3: TLabel
      Left = 39
      Top = 75
      Width = 40
      Height = 13
      Caption = 'Destino:'
    end
    object Label4: TLabel
      Left = 13
      Top = 48
      Width = 66
      Height = 13
      Caption = 'Reservat'#243'rio:'
    end
    object txtQtdSilo: TCurrencyEdit
      Left = 92
      Top = 10
      Width = 100
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      Align = alCustom
      DisplayFormat = '0.00;0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cboDestino: TComboBox
      Left = 92
      Top = 67
      Width = 220
      Height = 21
      Style = csDropDownList
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 332
      Top = 40
      Width = 77
      Height = 49
      Caption = 'Destinar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object cboReservatorio2: TComboBox
      Left = 92
      Top = 40
      Width = 220
      Height = 21
      Style = csDropDownList
      TabOrder = 3
      Visible = False
    end
    object cboReservatorio: TEdit
      Left = 92
      Top = 40
      Width = 220
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
  end
  object BitBtn2: TBitBtn
    Left = 130
    Top = 471
    Width = 107
    Height = 35
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 471
    Width = 116
    Height = 35
    Caption = 'Confirmar'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object txtTotalInformado: TCurrencyEdit
    Left = 360
    Top = 469
    Width = 100
    Height = 40
    Margins.Left = 1
    Margins.Top = 1
    Align = alRight
    DisplayFormat = '0.00;0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    ExplicitHeight = 24
  end
end
