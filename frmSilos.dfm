object _frmSilos: T_frmSilos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 365
  ClientWidth = 604
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
    Width = 604
    Height = 44
    Align = alTop
    Color = clMedGray
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 10
      Width = 242
      Height = 23
      Caption = 'Dep'#243'sitos de leite (Silos)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object gridSilos: TDBGrid
    Left = 0
    Top = 44
    Width = 604
    Height = 269
    Align = alTop
    DataSource = _dm.DSourceDepositos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridSilosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'identificacao'
        Title.Caption = 'Identifica'#231#227'o'
        Width = 268
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Title.Caption = 'Qtd. Estoque'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ultimaentrada'
        Title.Caption = 'Data '#218'lt. Entrada'
        Width = 139
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 325
    Width = 79
    Height = 33
    Caption = 'Incluir'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 105
    Top = 325
    Width = 77
    Height = 33
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object pnlDados: TPanel
    Left = 32
    Top = 90
    Width = 529
    Height = 167
    TabOrder = 4
    Visible = False
    object Label2: TLabel
      Left = 32
      Top = 53
      Width = 62
      Height = 13
      Caption = 'Identifica'#231#227'o'
    end
    object Label3: TLabel
      Left = 32
      Top = 95
      Width = 20
      Height = 13
      Caption = 'Filial'
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 527
      Height = 44
      Align = alTop
      Color = clMedGray
      ParentBackground = False
      TabOrder = 0
      object lblacao: TLabel
        Left = 18
        Top = 10
        Width = 12
        Height = 23
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object txtIdentificacao: TEdit
      Left = 32
      Top = 72
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object cboFilial: TComboBox
      Left = 32
      Top = 114
      Width = 188
      Height = 21
      TabOrder = 2
      Text = '00001'
    end
    object BitBtn5: TBitBtn
      Left = 424
      Top = 70
      Width = 93
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 424
      Top = 112
      Width = 93
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = BitBtn6Click
    end
  end
  object BitBtn4: TBitBtn
    Left = 204
    Top = 325
    Width = 78
    Height = 33
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = BitBtn4Click
  end
  object BitBtn3: TBitBtn
    Left = 504
    Top = 325
    Width = 90
    Height = 33
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BitBtn3Click
  end
  object BitBtn7: TBitBtn
    Left = 312
    Top = 325
    Width = 161
    Height = 33
    Caption = 'Destinar para outro dep'#243'sito'
    TabOrder = 7
  end
end
