object _frmProcProducao: T_frmProcProducao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 433
  ClientWidth = 691
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
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 44
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -212
    ExplicitWidth = 893
    object Label40: TLabel
      Left = 23
      Top = 10
      Width = 163
      Height = 18
      Caption = 'Processo de produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 50
    Width = 665
    Height = 319
    DataSource = _dm2.dsProcProducao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'processo'
        Title.Caption = 'Descri'#231#227'o do Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ordem'
        Title.Caption = 'Ordem de Produ'#231#227'o'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'duracaoestimada'
        Title.Caption = 'Dura'#231#227'o do processo'
        Width = 144
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 375
    Width = 97
    Height = 34
    Caption = 'Nova etapa'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 375
    Width = 97
    Height = 33
    Caption = 'Alterar etapa'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 280
    Top = 375
    Width = 97
    Height = 33
    Caption = 'Excluir etapa'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object pnlCadastro: TPanel
    Left = 80
    Top = 88
    Width = 553
    Height = 209
    TabOrder = 5
    Visible = False
    object Label1: TLabel
      Left = 17
      Top = 48
      Width = 107
      Height = 13
      Caption = 'Descri'#231#227'o do processo'
    end
    object Label3: TLabel
      Left = 18
      Top = 94
      Width = 97
      Height = 13
      Caption = 'Dura'#231#227'o em minutos'
    end
    object txtProcesso: TEdit
      Left = 18
      Top = 67
      Width = 511
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 551
      Height = 44
      Align = alTop
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = -212
      ExplicitTop = 0
      ExplicitWidth = 893
      object Label2: TLabel
        Left = 23
        Top = 10
        Width = 71
        Height = 18
        Caption = 'Cadastro '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object txtDuracao: TMaskEdit
      Left = 18
      Top = 113
      Width = 114
      Height = 21
      EditMask = '!90:00:00;1;_'
      MaxLength = 8
      TabOrder = 2
      Text = '  :  :  '
    end
    object BitBtn4: TBitBtn
      Left = 20
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 172
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = BitBtn5Click
    end
  end
end
