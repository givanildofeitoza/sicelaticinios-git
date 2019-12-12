object _frmTipoLeite: T_frmTipoLeite
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 456
  ClientWidth = 766
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
    Width = 766
    Height = 49
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 9
      Width = 159
      Height = 29
      Caption = 'Tipos de leite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object dbgridtipoleite: TDBGrid
    Left = 0
    Top = 49
    Width = 766
    Height = 352
    Align = alTop
    DataSource = _dm.DSourceTiposLeite
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgridtipoleiteDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 3
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'Tipo de leite'
        Width = 329
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
        Title.Caption = 'C'#243'digo Filial'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 9
    Top = 415
    Width = 97
    Height = 33
    Caption = 'Incluir'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 112
    Top = 415
    Width = 97
    Height = 33
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 215
    Top = 415
    Width = 97
    Height = 33
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BitBtn3Click
  end
  object pnlDados: TPanel
    Left = 128
    Top = 80
    Width = 473
    Height = 281
    TabOrder = 5
    Visible = False
    object Label2: TLabel
      Left = 41
      Top = 59
      Width = 164
      Height = 13
      Caption = 'Descri'#231#227'o da mat'#233'ria-prima (Leite)'
    end
    object Bevel1: TBevel
      Left = 40
      Top = 128
      Width = 361
      Height = 2
    end
    object Label6: TLabel
      Left = 40
      Top = 16
      Width = 20
      Height = 13
      Caption = 'Filial'
    end
    object Label7: TLabel
      Left = 42
      Top = 108
      Width = 48
      Height = 13
      Caption = 'Custo R$:'
    end
    object txtDescricao: TEdit
      Left = 41
      Top = 78
      Width = 341
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object btnCadastrar: TBitBtn
      Left = 152
      Top = 244
      Width = 90
      Height = 34
      Caption = 'Confirmar'
      TabOrder = 1
      OnClick = btnCadastrarClick
    end
    object BitBtn6: TBitBtn
      Left = 296
      Top = 243
      Width = 86
      Height = 34
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BitBtn6Click
    end
    object cbofilial: TComboBox
      Left = 40
      Top = 32
      Width = 202
      Height = 21
      TabOrder = 3
      Text = '00001'
    end
    object Panel2: TPanel
      Left = 42
      Top = 136
      Width = 359
      Height = 105
      TabOrder = 4
      object Label5: TLabel
        Left = 11
        Top = 16
        Width = 117
        Height = 16
        Caption = 'Associar produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 48
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        Left = 11
        Top = 83
        Width = 38
        Height = 13
        Caption = 'Produto'
      end
      object lblpadraoalerta: TLabel
        Left = 11
        Top = 1
        Width = 177
        Height = 13
        Caption = 'Padr'#227'o j'#225' definido nas configura'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object txtcodigo: TEdit
        Left = 55
        Top = 38
        Width = 121
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object BitBtn4: TBitBtn
        Left = 182
        Top = 35
        Width = 49
        Height = 25
        Caption = '...'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object txtproduto: TEdit
        Left = 53
        Top = 78
        Width = 292
        Height = 21
        ReadOnly = True
        TabOrder = 2
      end
    end
    object txtCusto: TCurrencyEdit
      Left = 121
      Top = 103
      Width = 97
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      TabOrder = 5
    end
  end
  object btnFechar: TBitBtn
    Left = 645
    Top = 415
    Width = 113
    Height = 33
    Caption = 'Selecionar'
    TabOrder = 6
    OnClick = btnFecharClick
  end
end
