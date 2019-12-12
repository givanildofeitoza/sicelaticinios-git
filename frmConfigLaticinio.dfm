object _frmConfigLaticinio: T_frmConfigLaticinio
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 685
  ClientWidth = 853
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
  object Label9: TLabel
    Left = 35
    Top = 150
    Width = 31
    Height = 13
    Caption = 'Label7'
  end
  object Label10: TLabel
    Left = 35
    Top = 131
    Width = 31
    Height = 13
    Caption = 'Label7'
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 48
    Width = 837
    Height = 591
    ActivePage = Principal
    TabOrder = 0
    object Principal: TTabSheet
      Caption = 'Principal'
      object Label16: TLabel
        Left = 481
        Top = 400
        Width = 100
        Height = 13
        Caption = 'Caminho Background'
      end
      object Label17: TLabel
        Left = 478
        Top = 458
        Width = 134
        Height = 13
        Caption = 'Caminho logomarca (*.BMP)'
      end
      object lblBackground: TLabel
        Left = 481
        Top = 440
        Width = 4
        Height = 13
        Caption = '.'
      end
      object lblLog: TLabel
        Left = 481
        Top = 504
        Width = 4
        Height = 13
        Caption = '.'
      end
      object Label18: TLabel
        Left = 40
        Top = 100
        Width = 160
        Height = 13
        Caption = 'Quantidade de produ'#231#245'es por dia'
      end
      object pnlProdPadrao: TPanel
        Left = 478
        Top = 16
        Width = 337
        Height = 377
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 32
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label2: TLabel
          Left = 16
          Top = 59
          Width = 42
          Height = 13
          Caption = 'produto:'
        end
        object Label4: TLabel
          Left = 16
          Top = 0
          Width = 28
          Height = 13
          Caption = 'Leite'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 89
          Width = 37
          Height = 13
          Caption = 'Creme'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 16
          Top = 178
          Width = 53
          Height = 13
          Caption = 'Manteiga'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 21
          Top = 120
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label8: TLabel
          Left = 16
          Top = 144
          Width = 42
          Height = 13
          Caption = 'Produto:'
        end
        object Label11: TLabel
          Left = 24
          Top = 208
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label12: TLabel
          Left = 20
          Top = 240
          Width = 42
          Height = 13
          Caption = 'Produto:'
        end
        object Label13: TLabel
          Left = 16
          Top = 277
          Width = 214
          Height = 13
          Caption = 'Fornecedor para entrada de produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 21
          Top = 305
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object Label15: TLabel
          Left = 3
          Top = 341
          Width = 59
          Height = 13
          Caption = 'Fornecedor:'
        end
        object txtCodPadraoLeite: TEdit
          Left = 64
          Top = 24
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object txtprodPadraoLeite: TEdit
          Left = 64
          Top = 51
          Width = 257
          Height = 21
          Enabled = False
          TabOrder = 1
        end
        object BitBtn1: TBitBtn
          Left = 175
          Top = 21
          Width = 42
          Height = 25
          Caption = '...'
          TabOrder = 2
          OnClick = BitBtn1Click
        end
        object txtcodcreme: TEdit
          Left = 64
          Top = 111
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object txtcreme: TEdit
          Left = 64
          Top = 139
          Width = 257
          Height = 21
          Enabled = False
          TabOrder = 4
        end
        object txtcodmanteiga: TEdit
          Left = 64
          Top = 208
          Width = 102
          Height = 21
          Enabled = False
          TabOrder = 5
        end
        object txtManteiga: TEdit
          Left = 64
          Top = 235
          Width = 257
          Height = 21
          Enabled = False
          TabOrder = 6
        end
        object BitBtn2: TBitBtn
          Left = 175
          Top = 108
          Width = 42
          Height = 25
          Caption = '...'
          TabOrder = 7
          OnClick = BitBtn2Click
        end
        object BitBtn4: TBitBtn
          Left = 172
          Top = 204
          Width = 45
          Height = 25
          Caption = '...'
          TabOrder = 8
          OnClick = BitBtn4Click
        end
        object txtcodfor: TEdit
          Left = 64
          Top = 300
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 9
        end
        object txtNomeFor: TEdit
          Left = 64
          Top = 336
          Width = 257
          Height = 21
          Enabled = False
          TabOrder = 10
        end
        object BitBtn5: TBitBtn
          Left = 172
          Top = 296
          Width = 45
          Height = 25
          Caption = '...'
          TabOrder = 11
          OnClick = BitBtn5Click
        end
      end
      object checkpadraoleite: TCheckBoxIQ
        Left = 40
        Top = 40
        Width = 258
        Height = 17
        Caption = 'Definir produtos padr'#227'o (Leite,creme,manteiga)'
        TabOrder = 1
        OnClick = checkpadraoleiteClick
        Text = 'N'
      end
      object CheckDestinardeposito: TCheckBoxIQ
        Left = 40
        Top = 72
        Width = 249
        Height = 17
        Caption = 'Destinar Leite para dep'#243'sito na entrada'
        TabOrder = 2
        Text = 'N'
      end
      object chkalterarcusto: TCheckBoxIQ
        Left = 40
        Top = 157
        Width = 249
        Height = 17
        Caption = 'Alterar custo na entrada de produ'#231#227'o'
        TabOrder = 3
        Text = 'N'
      end
      object Chklote: TCheckBoxIQ
        Left = 40
        Top = 190
        Width = 97
        Height = 17
        Caption = 'Lote individual'
        TabOrder = 4
        Text = 'N'
      end
      object txtbackground: TEdit
        Left = 481
        Top = 419
        Width = 288
        Height = 21
        Enabled = False
        TabOrder = 5
      end
      object BitBtn6: TBitBtn
        Left = 775
        Top = 417
        Width = 46
        Height = 25
        Caption = '...'
        TabOrder = 6
        OnClick = BitBtn6Click
      end
      object BitBtn7: TBitBtn
        Left = 775
        Top = 474
        Width = 46
        Height = 25
        Caption = '...'
        TabOrder = 7
        OnClick = BitBtn7Click
      end
      object txtqtdproducao: TEdit
        Left = 40
        Top = 119
        Width = 73
        Height = 21
        TabOrder = 8
        Text = '1'
        OnKeyPress = txtqtdproducaoKeyPress
      end
      object chkparanleite: TCheckBoxIQ
        Left = 40
        Top = 223
        Width = 297
        Height = 17
        Caption = 'Usar consumo de leite como par'#226'metro de produ'#231#227'o'
        TabOrder = 9
        Text = 'N'
      end
      object chkaddderivados: TCheckBoxIQ
        Left = 40
        Top = 258
        Width = 273
        Height = 17
        Caption = 'Lan'#231'ar produ'#231#227'o nos produtos derivados'
        TabOrder = 10
        Text = 'N'
      end
      object chkderivadoscadastro: TCheckBoxIQ
        Left = 40
        Top = 292
        Width = 305
        Height = 17
        Caption = 'Buscar derivados do cadastro de produtos do SICE.net'
        TabOrder = 11
        Text = 'N'
      end
      object BitBtn8: TBitBtn
        Left = 688
        Top = 524
        Width = 138
        Height = 25
        Caption = 'Criar Id para imagens'
        TabOrder = 12
        OnClick = BitBtn8Click
      end
    end
  end
  object BitBtn3: TBitBtn
    Left = 684
    Top = 645
    Width = 143
    Height = 25
    Caption = 'Fechar / Salvar'
    TabOrder = 1
    OnClick = BitBtn3Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 853
    Height = 44
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    object Label3: TLabel
      Left = 18
      Top = 10
      Width = 496
      Height = 23
      Caption = 'Configura'#231#245'es de par'#226'metros do sistema (Latic'#237'nio)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object txtcaminologomarca: TEdit
    Left = 490
    Top = 550
    Width = 291
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 308
    Top = 480
  end
end
