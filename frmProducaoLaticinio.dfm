object _frmProducaoLaticinio: T_frmProducaoLaticinio
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Produ'#231#227'o di'#225'ria'
  ClientHeight = 688
  ClientWidth = 1277
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1277
    Height = 688
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados da Produ'#231#227'o'
      object Label9: TLabel
        Left = 12
        Top = 251
        Width = 4
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1269
        Height = 33
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 7
          Top = 5
          Width = 41
          Height = 13
          Caption = 'N'#250'mero:'
        end
        object txtNumero: TEdit
          Left = 54
          Top = 2
          Width = 91
          Height = 21
          Enabled = False
          TabOrder = 0
          Text = '0'
        end
        object BitBtn1: TBitBtn
          Left = 151
          Top = 0
          Width = 114
          Height = 25
          Caption = 'Criar produ'#231#227'o'
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 287
          Top = 0
          Width = 114
          Height = 25
          Caption = 'Abrir existente'
          TabOrder = 2
          OnClick = BitBtn2Click
        end
      end
      object pnlitens: TPanel
        Left = -4
        Top = 156
        Width = 893
        Height = 462
        Align = alCustom
        Caption = #39
        Enabled = False
        TabOrder = 1
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 891
          Height = 18
          Align = alTop
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object Label14: TLabel
            Left = 23
            Top = 2
            Width = 231
            Height = 13
            Caption = 'Produtos pr'#233'-produ'#231#227'o | Leite destinado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object pnlFerramentasPreproducao: TPanel
          Left = 768
          Top = 19
          Width = 124
          Height = 442
          Align = alRight
          TabOrder = 1
          object btnExcProdPre: TBitBtn
            Left = 6
            Top = 49
            Width = 75
            Height = 25
            Caption = 'Excluir [-]'
            TabOrder = 0
            OnClick = btnExcProdPreClick
          end
          object btnIncProdPre: TBitBtn
            Left = 6
            Top = 18
            Width = 75
            Height = 25
            Caption = 'Incluir [+]'
            TabOrder = 1
            OnClick = btnIncProdPreClick
          end
        end
        object gridProdPre: TDBGrid
          Left = 1
          Top = 19
          Width = 767
          Height = 442
          Align = alClient
          DataSource = _dm2.DSourceproducaoitens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = gridProdPreDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#243'digo'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'produto'
              Title.Caption = 'Produto'
              Width = 299
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unidade'
              Title.Caption = 'Unidade'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantidadeleite'
              Title.Caption = 'Leite Dest.'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantidademanteiga'
              Title.Caption = 'Manteiga Dest.'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantidadecreme'
              Title.Caption = 'Creme Dest.'
              Width = 76
              Visible = True
            end>
        end
        object pnlLancar: TPanel
          Left = 98
          Top = 99
          Width = 534
          Height = 163
          TabOrder = 3
          Visible = False
          object lblCod: TLabel
            Left = 104
            Top = 56
            Width = 12
            Height = 16
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblProd: TLabel
            Left = 103
            Top = 79
            Width = 12
            Height = 16
            Caption = '...'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label62: TLabel
            Left = 46
            Top = 152
            Width = 57
            Height = 13
            Caption = 'Qtd. Leite:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label63: TLabel
            Left = 40
            Top = 59
            Width = 41
            Height = 13
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label64: TLabel
            Left = 40
            Top = 82
            Width = 48
            Height = 13
            Caption = 'Produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 46
            Top = 175
            Width = 66
            Height = 13
            Caption = 'Qtd. Creme:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label30: TLabel
            Left = 46
            Top = 200
            Width = 82
            Height = 13
            Caption = 'Qtd. Manteiga:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label36: TLabel
            Left = 41
            Top = 226
            Width = 97
            Height = 13
            Caption = 'Quantidade Soro:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Panel20: TPanel
            Left = 1
            Top = 1
            Width = 532
            Height = 18
            Align = alTop
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 1
            object Label61: TLabel
              Left = 23
              Top = 2
              Width = 166
              Height = 13
              Caption = 'Lan'#231'ar itens da pr'#233'-produ'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object txtqtdleite: TCurrencyEdit
            Left = 145
            Top = 146
            Width = 121
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DisplayFormat = '0.00;0.00'
            TabOrder = 2
            Visible = False
            OnKeyPress = txtqtdleiteKeyPress
          end
          object btnlancprod: TBitBtn
            Left = 40
            Top = 25
            Width = 47
            Height = 25
            Caption = '...'
            TabOrder = 0
            OnClick = btnlancprodClick
          end
          object btnlanc: TBitBtn
            Left = 321
            Top = 120
            Width = 97
            Height = 25
            Caption = 'Lan'#231'ar'
            TabOrder = 3
            OnClick = btnlancClick
          end
          object BitBtn9: TBitBtn
            Left = 433
            Top = 120
            Width = 96
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 4
            OnClick = BitBtn9Click
          end
          object txtqtdcreme: TCurrencyEdit
            Left = 145
            Top = 171
            Width = 121
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DisplayFormat = '0.00;0.00'
            TabOrder = 5
            Visible = False
            OnKeyPress = txtqtdleiteKeyPress
          end
          object txtqtdmanteiga: TCurrencyEdit
            Left = 145
            Top = 196
            Width = 121
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DisplayFormat = '0.00;0.00'
            TabOrder = 6
            Visible = False
            OnKeyPress = txtqtdleiteKeyPress
          end
          object txtSoro: TCurrencyEdit
            Left = 145
            Top = 222
            Width = 121
            Height = 21
            Margins.Left = 4
            Margins.Top = 1
            DisplayFormat = '0.00;0.00'
            TabOrder = 7
            Visible = False
            OnKeyPress = txtqtdleiteKeyPress
          end
        end
        object pnlAlterarData: TPanel
          Left = 99
          Top = 272
          Width = 281
          Height = 97
          TabOrder = 4
          Visible = False
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 279
            Height = 18
            Align = alTop
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 0
            object Label40: TLabel
              Left = 23
              Top = 2
              Width = 142
              Height = 13
              Caption = 'Alterar data da produ'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object dataProdAlt: TDateEdit
            Left = 24
            Top = 36
            Width = 185
            Height = 21
            NumGlyphs = 2
            TabOrder = 1
          end
          object BitBtn17: TBitBtn
            Left = 24
            Top = 63
            Width = 75
            Height = 25
            Caption = 'Confirmar'
            TabOrder = 2
            OnClick = BitBtn17Click
          end
          object BitBtn18: TBitBtn
            Left = 136
            Top = 63
            Width = 75
            Height = 25
            Caption = 'cancelar'
            TabOrder = 3
            OnClick = BitBtn18Click
          end
        end
        object pnldescricao: TPanel
          Left = 408
          Top = 323
          Width = 467
          Height = 121
          TabOrder = 5
          Visible = False
          object Label43: TLabel
            Left = 16
            Top = 32
            Width = 99
            Height = 13
            Caption = 'M'#225'ximo 60 carcteres'
          end
          object txtaltdesc: TEdit
            Left = 16
            Top = 48
            Width = 433
            Height = 21
            CharCase = ecUpperCase
            MaxLength = 60
            TabOrder = 0
          end
          object BitBtn20: TBitBtn
            Left = 376
            Top = 75
            Width = 75
            Height = 25
            Caption = 'Cancelar'
            TabOrder = 1
            OnClick = BitBtn20Click
          end
          object Panel3: TPanel
            Left = 1
            Top = 1
            Width = 465
            Height = 18
            Align = alTop
            Color = clMenuHighlight
            ParentBackground = False
            TabOrder = 2
            object Label42: TLabel
              Left = 23
              Top = 2
              Width = 97
              Height = 13
              Caption = 'Alterar descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object BitBtn21: TBitBtn
            Left = 184
            Top = 75
            Width = 75
            Height = 25
            Caption = 'Salvar'
            TabOrder = 3
            OnClick = BitBtn21Click
          end
        end
      end
      object pnlDadosFim: TPanel
        Left = 572
        Top = 39
        Width = 316
        Height = 117
        Align = alCustom
        Enabled = False
        TabOrder = 2
        object Label7: TLabel
          Left = 15
          Top = 19
          Width = 103
          Height = 13
          Caption = 'Operador finaliza'#231#227'o:'
        end
        object Label4: TLabel
          Left = 15
          Top = 38
          Width = 61
          Height = 13
          Caption = 'Data e hora:'
        end
        object lblDatafim: TLabel
          Left = 82
          Top = 38
          Width = 138
          Height = 14
          Caption = '00/00/0000 00:00:00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 15
          Top = 0
          Width = 125
          Height = 14
          Caption = 'Dados da Finaliza'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cboOperadorFim: TComboBox
          Left = 124
          Top = 17
          Width = 140
          Height = 21
          Enabled = False
          TabOrder = 0
        end
      end
      object pnlAbertura: TPanel
        Left = 0
        Top = 39
        Width = 566
        Height = 117
        Enabled = False
        TabOrder = 3
        object Label8: TLabel
          Left = 12
          Top = 71
          Width = 87
          Height = 13
          Caption = 'Data e hora in'#237'cio:'
        end
        object lblDataini: TLabel
          Left = 115
          Top = 71
          Width = 138
          Height = 14
          Caption = '01/01/2019 10:30:00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 12
          Top = -2
          Width = 114
          Height = 14
          Caption = 'Dados da abertura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 44
          Width = 96
          Height = 13
          Caption = 'Operador Abertura:'
        end
        object Label3: TLabel
          Left = 12
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Filial:'
        end
        object Label41: TLabel
          Left = 16
          Top = 96
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object cboOperadorAbertura: TComboBox
          Left = 115
          Top = 36
          Width = 245
          Height = 21
          Enabled = False
          TabOrder = 0
        end
        object cboFilial: TComboBox
          Left = 115
          Top = 12
          Width = 245
          Height = 21
          Enabled = False
          TabOrder = 1
          Text = '00001'
        end
        object BitBtn3: TBitBtn
          Left = 259
          Top = 64
          Width = 101
          Height = 23
          Caption = 'Alterar data'
          TabOrder = 2
          OnClick = BitBtn3Click
        end
        object txtdesc: TEdit
          Left = 73
          Top = 90
          Width = 485
          Height = 21
          CharCase = ecUpperCase
          Enabled = False
          TabOrder = 3
        end
      end
      object bitLiberarDigitacao: TBitBtn
        Left = 3
        Top = 621
        Width = 150
        Height = 32
        Caption = 'Liberar digita'#231#227'o de itens'
        TabOrder = 4
        OnClick = bitLiberarDigitacaoClick
      end
      object pnlabrir: TPanel
        Left = 1012
        Top = 0
        Width = 941
        Height = 584
        TabOrder = 5
        Visible = False
        object Panel19: TPanel
          Left = 1
          Top = 1
          Width = 939
          Height = 18
          Align = alTop
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object Label60: TLabel
            Left = 23
            Top = 2
            Width = 84
            Height = 13
            Caption = 'Abrir produ'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object rgTipoPesq: TRadioGroup
          Left = 16
          Top = 25
          Width = 457
          Height = 49
          Caption = 'Por:'
          Columns = 2
          Items.Strings = (
            'N'#250'mero'
            'Data')
          TabOrder = 1
          OnClick = rgTipoPesqClick
        end
        object pnlNumero: TPanel
          Left = 16
          Top = 75
          Width = 417
          Height = 64
          TabOrder = 2
          Visible = False
          object txtnumeropesquisa: TEdit
            Left = 16
            Top = 8
            Width = 121
            Height = 21
            TabOrder = 0
            Text = '0'
            OnKeyPress = txtnumeropesquisaKeyPress
          end
        end
        object pnldata: TPanel
          Left = 16
          Top = 71
          Width = 896
          Height = 457
          TabOrder = 3
          Visible = False
          object Label44: TLabel
            Left = 155
            Top = 24
            Width = 16
            Height = 13
            Caption = 'at'#233
          end
          object datapesqini: TDateEdit
            Left = 8
            Top = 16
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 0
          end
          object DBGrid1: TDBGrid
            Left = 8
            Top = 45
            Width = 881
            Height = 404
            DataSource = _dm2.DSourceMovproducao
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'numero'
                Title.Caption = 'N'#250'mero'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'data'
                Title.Caption = 'Data'
                Width = 101
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'hora'
                Title.Caption = 'Hora'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o'
                Width = 401
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'lote'
                Title.Caption = 'Lote'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'validadelote'
                Title.Caption = 'Validade'
                Visible = True
              end>
          end
          object BitBtn16: TBitBtn
            Left = 343
            Top = 14
            Width = 75
            Height = 25
            Caption = 'Buscar'
            TabOrder = 2
            OnClick = BitBtn16Click
          end
          object datapesqfim: TDateEdit
            Left = 200
            Top = 16
            Width = 121
            Height = 21
            NumGlyphs = 2
            TabOrder = 3
          end
        end
        object btnabrir: TBitBtn
          Left = 11
          Top = 543
          Width = 97
          Height = 33
          Caption = 'Abrir'
          Enabled = False
          TabOrder = 4
          OnClick = btnabrirClick
        end
        object BitBtn6: TBitBtn
          Left = 824
          Top = 534
          Width = 89
          Height = 33
          Caption = 'Fechar'
          TabOrder = 5
          OnClick = BitBtn6Click
        end
      end
      object bitbtnConfirmar: TBitBtn
        Left = 692
        Top = 623
        Width = 197
        Height = 33
        Caption = 'Confirmar itens da produ'#231#227'o'
        Enabled = False
        TabOrder = 6
        OnClick = bitbtnConfirmarClick
      end
      object BitBtn19: TBitBtn
        Left = 163
        Top = 621
        Width = 112
        Height = 32
        Caption = 'Alterar descri'#231#227'o'
        TabOrder = 7
        OnClick = BitBtn19Click
      end
      object BitBtn4: TBitBtn
        Left = 287
        Top = 621
        Width = 169
        Height = 32
        Caption = 'Imprimir ordem de produ'#231#227'o'
        TabOrder = 8
        OnClick = BitBtn4Click
      end
      object pnlparam: TPanel
        Left = 654
        Top = 311
        Width = 237
        Height = 157
        TabOrder = 9
        Visible = False
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 235
          Height = 18
          Align = alTop
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object Label51: TLabel
            Left = 23
            Top = 2
            Width = 132
            Height = 13
            Caption = 'Par'#226'metro de consumo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object rgparam: TRadioGroup
          Left = 24
          Top = 25
          Width = 185
          Height = 88
          Items.Strings = (
            'LEITE'
            'MATEIGA'
            'CREME')
          TabOrder = 1
        end
        object BitBtn25: TBitBtn
          Left = 136
          Top = 119
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          TabOrder = 2
          OnClick = BitBtn25Click
        end
        object chktipo: TCheckBox
          Left = 24
          Top = 119
          Width = 97
          Height = 17
          Caption = 'Detalhada'
          TabOrder = 3
        end
      end
    end
    object tabDadosProducao: TTabSheet
      Caption = 'Leite / Creme / M. Derretida'
      Enabled = False
      ImageIndex = 1
      object pnlleite: TPanel
        Left = 0
        Top = 48
        Width = 1269
        Height = 91
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 6
          Top = 31
          Width = 125
          Height = 13
          Caption = 'Saldo leite na confirma'#231#227'o'
        end
        object Label15: TLabel
          Left = 229
          Top = 31
          Width = 44
          Height = 13
          Caption = 'Utilizado.'
        end
        object Label16: TLabel
          Left = 326
          Top = 31
          Width = 42
          Height = 13
          Caption = 'Vendido.'
        end
        object Label17: TLabel
          Left = 419
          Top = 31
          Width = 41
          Height = 13
          Caption = 'Sobre T.'
        end
        object Label18: TLabel
          Left = 513
          Top = 31
          Width = 32
          Height = 13
          Caption = 'Perda.'
        end
        object Label21: TLabel
          Left = 2
          Top = 75
          Width = 136
          Height = 13
          Caption = 'Resumo de leite utizada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 142
          Top = 31
          Width = 69
          Height = 13
          Caption = 'Sobra anterior'
        end
        object Label28: TLabel
          Left = 780
          Top = 32
          Width = 52
          Height = 13
          Caption = 'Destinado.'
          Visible = False
        end
        object txtLeiteEntrada: TCurrencyEdit
          Left = 52
          Top = 48
          Width = 84
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = txtLeiteEntradaExit
        end
        object txtLeiteUtilizado: TCurrencyEdit
          Left = 230
          Top = 48
          Width = 84
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object txtLeiteVendido: TCurrencyEdit
          Left = 324
          Top = 48
          Width = 84
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = txtLeiteVendidoExit
        end
        object txtLeiteSaldo: TCurrencyEdit
          Left = 419
          Top = 48
          Width = 84
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnExit = txtLeiteSaldoExit
        end
        object txtLeitePerda: TCurrencyEdit
          Left = 513
          Top = 48
          Width = 84
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 1267
          Height = 29
          Align = alTop
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 5
          object Label39: TLabel
            Left = 23
            Top = 10
            Width = 28
            Height = 13
            Caption = 'Leite'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object BitBtn10: TBitBtn
          Left = 603
          Top = 46
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 6
          Visible = False
          OnClick = BitBtn10Click
        end
        object txtLeiteSobra: TCurrencyEdit
          Left = 142
          Top = 48
          Width = 84
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnExit = txtLeiteSobraExit
        end
        object txtLeiteDestinado: TCurrencyEdit
          Left = 780
          Top = 48
          Width = 84
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Visible = False
        end
        object obtersaldoleite: TBitBtn
          Left = 2
          Top = 46
          Width = 47
          Height = 25
          Caption = '...'
          TabOrder = 9
          OnClick = obtersaldoleiteClick
        end
      end
      object pnlInformacaoleite: TPanel
        Left = 0
        Top = 139
        Width = 1269
        Height = 72
        Align = alTop
        TabOrder = 1
        object gridLeite: TStringGrid
          Left = 1
          Top = 1
          Width = 1267
          Height = 70
          Align = alClient
          Color = clInfoBk
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
          TabOrder = 0
          OnDblClick = gridLeiteDblClick
          OnDrawCell = gridLeiteDrawCell
          OnKeyPress = gridLeiteKeyPress
          OnSelectCell = gridLeiteSelectCell
          ColWidths = (
            64)
        end
      end
      object pnlcreme: TPanel
        Left = 0
        Top = 211
        Width = 1269
        Height = 90
        Align = alTop
        TabOrder = 2
        object Label10: TLabel
          Left = 732
          Top = 29
          Width = 28
          Height = 13
          Caption = 'Perda'
        end
        object Label11: TLabel
          Left = 591
          Top = 29
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object Label12: TLabel
          Left = 516
          Top = 29
          Width = 40
          Height = 13
          Caption = 'Utilizado'
        end
        object Label24: TLabel
          Left = 366
          Top = 29
          Width = 38
          Height = 13
          Caption = 'Vendido'
        end
        object Label65: TLabel
          Left = 295
          Top = 29
          Width = 58
          Height = 13
          Caption = 'Soro Coalho'
        end
        object Label66: TLabel
          Left = 242
          Top = 29
          Width = 22
          Height = 13
          Caption = 'Soro'
        end
        object Label67: TLabel
          Left = 156
          Top = 29
          Width = 59
          Height = 13
          Caption = 'Padronizado'
        end
        object Label68: TLabel
          Left = 438
          Top = 29
          Width = 52
          Height = 13
          Caption = 'Desnatado'
        end
        object Label69: TLabel
          Left = 84
          Top = 29
          Width = 49
          Height = 13
          Caption = 'Comprado'
        end
        object Label25: TLabel
          Left = 4
          Top = 72
          Width = 153
          Height = 13
          Caption = 'Resumo de creme utilizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 952
          Top = 31
          Width = 48
          Height = 13
          Caption = 'Destinado'
          Visible = False
        end
        object Label33: TLabel
          Left = 659
          Top = 30
          Width = 56
          Height = 13
          Caption = 'Em estoque'
        end
        object Label34: TLabel
          Left = 6
          Top = 29
          Width = 70
          Height = 13
          Caption = 'Sobra Anterior'
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 1267
          Height = 29
          Align = alTop
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object Label19: TLabel
            Left = 23
            Top = 8
            Width = 37
            Height = 13
            Caption = 'Creme'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object txtCremeSoro: TCurrencyEdit
          Left = 221
          Top = 45
          Width = 70
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = txtCremeSoroExit
        end
        object txtCremeComprado: TCurrencyEdit
          Left = 82
          Top = 45
          Width = 68
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = txtCremeCompradoExit
        end
        object txtCremeDesnatado: TCurrencyEdit
          Left = 437
          Top = 45
          Width = 66
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnExit = txtCremeDesnatadoExit
        end
        object txtCremePadronizado: TCurrencyEdit
          Left = 154
          Top = 45
          Width = 63
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnExit = txtCremePadronizadoExit
        end
        object txtCremeSoroCoalho: TCurrencyEdit
          Left = 295
          Top = 45
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnExit = txtCremeSoroCoalhoExit
        end
        object txtCremeVendido: TCurrencyEdit
          Left = 366
          Top = 45
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnExit = txtCremeVendidoExit
        end
        object txtCremeUtilizado: TCurrencyEdit
          Left = 513
          Top = 45
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object txtCremeSaldo: TCurrencyEdit
          Left = 586
          Top = 45
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object txtCremePerda: TCurrencyEdit
          Left = 732
          Top = 45
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object BitBtn11: TBitBtn
          Left = 803
          Top = 43
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 10
          OnClick = BitBtn11Click
        end
        object txtcremedestinado: TCurrencyEdit
          Left = 952
          Top = 46
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Visible = False
        end
        object txtCremEmEstoque: TCurrencyEdit
          Left = 659
          Top = 45
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnExit = txtCremEmEstoqueExit
        end
        object txtcremesobra: TCurrencyEdit
          Left = 4
          Top = 45
          Width = 73
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnExit = txtcremesobraExit
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 301
        Width = 1269
        Height = 75
        Align = alTop
        TabOrder = 3
        object gridCreme: TStringGrid
          Left = 1
          Top = 1
          Width = 1267
          Height = 73
          Align = alClient
          Color = 12582911
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
          TabOrder = 0
          OnDblClick = gridCremeDblClick
          OnDrawCell = gridCremeDrawCell
          OnKeyPress = gridCremeKeyPress
          OnSelectCell = gridCremeSelectCell
          ColWidths = (
            64)
        end
      end
      object pnlmanteiga: TPanel
        Left = 0
        Top = 376
        Width = 1269
        Height = 98
        Align = alTop
        TabOrder = 4
        object Label70: TLabel
          Left = 97
          Top = 38
          Width = 79
          Height = 13
          Caption = 'Creme Derretido'
        end
        object Label71: TLabel
          Left = 182
          Top = 38
          Width = 81
          Height = 13
          Caption = 'Manteiga Obitida'
        end
        object Label72: TLabel
          Left = 271
          Top = 38
          Width = 57
          Height = 13
          Caption = 'Rendimento'
        end
        object Label73: TLabel
          Left = 348
          Top = 38
          Width = 87
          Height = 13
          Caption = 'Manteiga Utilizada'
        end
        object Label74: TLabel
          Left = 520
          Top = 38
          Width = 56
          Height = 13
          Caption = 'Em estoque'
        end
        object Label75: TLabel
          Left = 599
          Top = 38
          Width = 28
          Height = 13
          Caption = 'Perda'
        end
        object Label27: TLabel
          Left = 4
          Top = 81
          Width = 171
          Height = 13
          Caption = 'Resumo de manteiga utilizada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 441
          Top = 38
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object Label31: TLabel
          Left = 780
          Top = 38
          Width = 48
          Height = 13
          Caption = 'Destinado'
          Visible = False
        end
        object Label35: TLabel
          Left = 2
          Top = 40
          Width = 70
          Height = 13
          Caption = 'Sobra Anterior'
        end
        object Panel22: TPanel
          Left = 1
          Top = 1
          Width = 1267
          Height = 34
          Align = alTop
          Color = clMenuHighlight
          ParentBackground = False
          TabOrder = 0
          object Label79: TLabel
            Left = 23
            Top = 10
            Width = 70
            Height = 13
            Caption = 'M. Derretida'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object txtManteigaCderretido: TCurrencyEdit
          Left = 97
          Top = 55
          Width = 79
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = txtManteigaCderretidoExit
        end
        object txtManteigaObitida: TCurrencyEdit
          Left = 181
          Top = 55
          Width = 82
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = txtManteigaObitidaExit
        end
        object txtManteigaRendimento: TCurrencyEdit
          Left = 269
          Top = 55
          Width = 75
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object txtManteigaUtilizada: TCurrencyEdit
          Left = 348
          Top = 55
          Width = 87
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object txtManteigaEstoque: TCurrencyEdit
          Left = 520
          Top = 55
          Width = 73
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnExit = txtManteigaEstoqueExit
        end
        object txtPerda: TCurrencyEdit
          Left = 596
          Top = 55
          Width = 67
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object BitBtn12: TBitBtn
          Left = 666
          Top = 53
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 7
          OnClick = BitBtn12Click
        end
        object txtManteigaSaldo: TCurrencyEdit
          Left = 439
          Top = 55
          Width = 77
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object txtManteigaDestinada: TCurrencyEdit
          Left = 778
          Top = 55
          Width = 73
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          Visible = False
        end
        object txtManteigaSobra: TCurrencyEdit
          Left = 1
          Top = 54
          Width = 79
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnExit = txtManteigaCderretidoExit
        end
      end
      object Panel23: TPanel
        Left = 0
        Top = 474
        Width = 1269
        Height = 80
        Align = alTop
        TabOrder = 5
        object gridManteiga: TStringGrid
          Left = 1
          Top = 1
          Width = 1267
          Height = 78
          Align = alClient
          ColCount = 1
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
          ParentFont = False
          TabOrder = 0
          OnDblClick = gridManteigaDblClick
          OnDrawCell = gridManteigaDrawCell
          OnKeyPress = gridManteigaKeyPress
          OnSelectCell = gridManteigaSelectCell
          ColWidths = (
            64)
        end
      end
      object pnlDasosProducao: TPanel
        Left = 0
        Top = 0
        Width = 1269
        Height = 48
        Align = alTop
        Enabled = False
        TabOrder = 6
        object Label26: TLabel
          Left = 23
          Top = 1
          Width = 77
          Height = 13
          Caption = 'Produ'#231#227'o do dia'
        end
        object Label20: TLabel
          Left = 214
          Top = 1
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object lblnrproducao: TLabel
          Left = 230
          Top = 18
          Width = 8
          Height = 14
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object datatxtaproducao: TDateEdit
          Left = 21
          Top = 14
          Width = 139
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
      end
      object BitBtn5: TBitBtn
        Left = 2
        Top = 559
        Width = 139
        Height = 25
        Caption = 'Gravar informa'#231#245'es'
        TabOrder = 7
        OnClick = BitBtn5Click
      end
      object BitBtn7: TBitBtn
        Left = 366
        Top = 559
        Width = 183
        Height = 25
        Caption = 'Confirmar dados pr'#233'-produ'#231#227'o'
        TabOrder = 8
        OnClick = BitBtn7Click
      end
      object pnlSobraColeta: TPanel
        Left = 803
        Top = 343
        Width = 463
        Height = 300
        TabOrder = 9
        Visible = False
        object Label37: TLabel
          Left = 24
          Top = 25
          Width = 175
          Height = 13
          Caption = 'Entradas de leite j'#225' analisadas:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 24
          Top = 244
          Width = 94
          Height = 13
          Caption = 'Saldo comprado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object datacoleta: TDateEdit
          Left = 24
          Top = 44
          Width = 177
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object gridColeta: TStringGrid
          Left = 24
          Top = 71
          Width = 417
          Height = 170
          ColCount = 2
          FixedCols = 0
          RowCount = 2
          TabOrder = 1
        end
        object BitBtn8: TBitBtn
          Left = 207
          Top = 40
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 2
          OnClick = BitBtn8Click
        end
        object txtSaldoColeta: TCurrencyEdit
          Left = 24
          Top = 261
          Width = 129
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          DisplayFormat = '0.00;-0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object BitBtn15: TBitBtn
          Left = 366
          Top = 257
          Width = 75
          Height = 25
          Caption = 'Fechar'
          TabOrder = 4
          OnClick = BitBtn15Click
        end
        object BitBtn14: TBitBtn
          Left = 159
          Top = 258
          Width = 115
          Height = 25
          Caption = 'Confirmar entradas'
          TabOrder = 5
          OnClick = BitBtn14Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Fluxograma de produ'#231#227'o'
      ImageIndex = 2
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1269
        Height = 29
        Align = alTop
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        object Label45: TLabel
          Left = 23
          Top = 8
          Width = 107
          Height = 13
          Caption = 'Itens em produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label46: TLabel
          Left = 364
          Top = 8
          Width = 195
          Height = 13
          Caption = 'Status do fluxograma de produ'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 29
        Width = 1269
        Height = 356
        Align = alTop
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 2
          Top = 4
          Width = 357
          Height = 343
          Align = alCustom
          DataSource = dsProdutos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Caption = 'C'#243'digo'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'produto'
              Title.Caption = 'Produto em produ'#231#227'o'
              Width = 264
              Visible = True
            end>
        end
        object DBGrid3: TDBGrid
          Left = 364
          Top = 4
          Width = 890
          Height = 343
          DataSource = _dm2.dsFulxogramaProducao
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid3DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'status'
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'processo'
              Title.Caption = 'Descri'#231#227'o do processo'
              Width = 275
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'horainicio'
              Title.Caption = 'In'#237'cio'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'horatermino'
              Title.Caption = 'T'#233'rmino'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'duracaoestimada'
              Title.Caption = 'Tempo estimado'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'duracao'
              Title.Caption = 'Dura'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'operadorinicio'
              Title.Caption = 'OP. In'#237'cio'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'operadortermino'
              Title.Caption = 'Op. T'#233'rmino'
              Width = 64
              Visible = True
            end>
        end
      end
      object pnlacoesinsumos: TPanel
        Left = 0
        Top = 505
        Width = 1269
        Height = 95
        Align = alTop
        TabOrder = 2
        object imgMateria: TImage
          Left = 3
          Top = 6
          Width = 86
          Height = 83
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000500000
            005008060000008E11F2AD00000A376943435073524742204945433631393636
            2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
            BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
            850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
            DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
            00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
            8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
            344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
            F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
            7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
            CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
            378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
            BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
            876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
            2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
            7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
            2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
            DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
            D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
            2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
            90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
            2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
            58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
            28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
            8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
            113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
            A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
            55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
            11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
            A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
            B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
            65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
            2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
            ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
            28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
            5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
            47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
            4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
            03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
            4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
            F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
            D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
            63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
            7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
            86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
            6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
            2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
            C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
            F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
            A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
            D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
            A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
            675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
            CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
            95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
            82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
            829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
            6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
            E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
            D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
            DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
            0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
            356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
            306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
            AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
            9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
            1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
            CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
            5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
            D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
            FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
            65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
            EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
            3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
            3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
            EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
            871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
            D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
            F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
            61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
            D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
            AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
            A78C4F9F7E03F784F3FB8F70662A000000097048597300004CE500004CE50175
            CEF095000008C44944415478DAE59D7B6C1C571587EF9DCDAEEDF5DA4E63272A
            A44A9B9A2849490B08A4524AF635BBF6364AAD565A5515424D79B88A08048884
            54549055848A2A15859008ABB194101E7F542CA204375E771F33B34DA2026AA4
            10885AA791DB14087513A7F1636DEF7AE772CED84EECCDDAFB9A993B767ED2CA
            77676667CEF93473EFB98F39A68C31C24B9148C4B17AF5DAFB04816C2302D944
            18692584AE27947C12AC5A43096984C304F864E0330EFB3F847DFF01932FC0F7
            0195E4CE5EBF2A9C09873D63BC7CA066028C46A335767BDD7622D07680F36580
            F139D85C53E5697384B0B7E06F9CA8343A3C3C743A1C0EE7CCF2C970808220D0
            D793493F65C25729258FC3A626837D1A02A0AF02CCDF0502DE93AAAA1AEAA061
            008F1D536AEFBA9B7E1DEEB4EFC1D74D463AB184CE837B87AE5D1DFA35DC9513
            465C4077805ABDD6BCF6194AE97300EF4E533015D76595B11706DF1D78B9B3B3
            33ABE78975051897A40E81DA5E22FCEEB8627A9BE5D8F745D113D5EB84BA004C
            24121B886D5537257407573C250A3CFED3F4D4C49EF6F6F6CBD59EAB6A80C9A4
            F224B4AA2F9399906339699811F519D1EBFD633527A918604F4F8FBD75D3E69F
            43F13BBC495421709EEDBF7861E0D94AEBC68A00F6F62A2D4E178D40D1C39B80
            4E92A63393E1B6B6B6E1727F5836C0A824B53AA8ED7528DECBDB6B9D35909D62
            502D7ADE2BE7476501EC97A4CD766A4B40713D6F6F0DD2A50CCBF9433EDFC552
            7F5032C03E49BABB86DA4E42F12EDE5E1AACF7B253135F2AB5852E096032996C
            66C2AA5310186FE6ED9D19022267492EEB1145F17AB1638B029C6D6DFBA1E8E3
            ED98A96224FE468A3DD2D5E5995EEAB0A20013526A3FA55A7FF6B613B03920FA
            3C4BFABE24C0D9AED9AB781C6F67784965E4A980CFFDDBC5F62F0A301A8DAE75
            D43AFF05C5B5BC9DE0ACD15C76EA33C16070B0D0CE45012665E515D8FD046FEB
            2DA298DFEB6E2BB4A320407874DBE0D1EDE76DB595048FF213F028FF217FFB2D
            00675BDD7F40710B6FA32DA6C1CC647A6B28149A9ABFF11680D0EA7642AB7B98
            B7B516D577E151FEE5FC0D0B00E2A40F341C0350DCC0DB522B0A48FDEFDFEFB3
            8DBB767926E7B62D00984C2A4F13811EE56DA89505B4F6885EF7AFE6BE2F0428
            A7B0EEBB9FB7915616D07A27E8F76E9D9BEDBB01302ECB0F0B4438C9DBC0E520
            95A88180D78BA352370126E4D411E86E7C8DB771CB428C1DF3FB3C4F63510388
            53916B5AD60D11E327BD578A4620A45987218D061002E71D1038BFC6DB2A2344
            2126C30FD459FA9E58256D7EBF3BA6014C4ACA21B8CA1EDECEEA2D87C3411A1B
            1A348063E3E3646242D7C509FB2126DC3703504E9D870D5B793BACA76A105EE3
            CD99D66C364B3EBE5E747CB46441CBF11684335FA07D7D7D38EA32C4DB613D55
            5353A3DD79F3353A3A4A26A7A62A3C63414DA7C7469A683C2E87A88DF6F1765A
            2F1582370E8F6F5ADFC757538EA85FA4F1A4F243A8225EE0EDB81E2A04CF80BA
            EFA654D649E3926258FC8795B7B3AE8E5041D09CC8E58C5BF7985FE7A10C8547
            B421FF1701A0AC4043EF36E202B5704734CCDE11184660256E04446C6D9B4C86
            A7094268BC03DF366ABA32DF312320728347901F3B4D13927215CA6B8CBA88CB
            E52275B5B537BEEB099127BC590D22C03414EA8CBC8A11101D763B696C6A5A30
            5D68323CD435048813C736A3AFA427443BC0C33B0F1BA9391915AA14D11402C4
            E8D261C6D5F480682178A81C02BC0685D5665DB11A881683874A23409C30BEC7
            CCAB5602D182F0B03F7C0501E228F4C3665FBC1C88568437ABF30050E6B602A1
            0120D61681686178180726B12FFC33B0ED595E462C05D1CAF050F008F7604FE4
            2B60DEEF791A52082242AAAFAF5F10E759091E0AFAC23FA08944E20122AC3ACB
            DB987C88F91A4FA7493A9DE66DE602B11C0BD2C3870FE35A180C65EA791BB418
            442BC203B1C9F458F3EC9C482A06CF4A80B745281CBDC1519C3959141EEA9CDF
            EB7E40039890523F867AFA27BC2D9A93D3E9D4C6F7B05FABF330BC6E9A5BFEAB
            018CC9F2833622BCC9DBA8E52446D490E8F5F66B00F1ADF27852BE4456FE3B20
            7AE9FAF095A175E17038736369C74A9D1B3646EC377EAF6717966E024CA61E22
            0239CDDBB4E5200C5F44D113C7F2C2E56D52EA1CB4C6DB781B68715D784391B6
            747575696B45F2D707EE853F07785B686501AEBDA2CF7D70EEFB02809188E2BA
            A3850E42F7A985B7A116D5D0F015D63A3FD1CF2D8BCC93B2FC1C21C24F795B6A
            4501AA7D70F7ED9FBFEDD655FA894413B5D9F17DD966DE065B4C831FBCCFEE9B
            BFC01CB5C88B36CAB7054A0F967CEADB4010383F0681F39FF3B717041889446C
            77B4ACFB2BD4859FE76DB8150484FE227ADD1D85F62DFAAE5C2CA66CB3D9E9DF
            A1584B6E6F0DABD399FB0381C07F0BED2CF2BAABB21B1EE56EDE1EF0143CBA4F
            C2A3FBCA62FB4B79E1BA9B52B29BB7239CD4EDF7BABFB5D40145013EFFBCB26A
            BB871E87E223BCBD3157EC6F99C90977FECB85F92A29E9C4F1E3C71B5C0DAB53
            D0CDFB2C6FB74CD22051A71FF2FBFD1F163BB0E4B427AF49D2FA3A6AC331C395
            3EE4F55196E5B6B7FB7CEF947270598977A065DE022D338E42ACD4C43B1FB11C
            1145D17DAED41F949DFA097A2AF7424F05533FB5F2F656677D90CBB21DC1A0E7
            9FE5FCA8A2E463274E2877D63869EFCA09B4D919753AFBE862B1DE52AA38FD9D
            962375033D0821CE3779BB5F8DC0FBA3D7AE0CEDA934C76AF5091865791721C2
            2128BA78C32853E3E0F95EE8A21DA9E624BAA400EDEF57EEB13B688F55E6964B
            D0296869BF516A4BBB94744D429B9053B8CEE64562DD50E73278FBA3A0DF7B54
            AFFCD2BAA741EEEDED753A5D8D986F6A1FB1CE98222E5D79293D36F28B9D3B77
            EABACCC1B044DCDAF44033D94D29C5BEE44613201512B6AA07C6463EEEEEE8E8
            1835E20286A7829F195B6C09612A78A8231F25C62F62C211E37E95E58E9C4A09
            278AA5AFAB56A6FE3382582C566FB339828CD276087F44D8F429A24F66B84B10
            90C4894A6299CCC48950283462964FA602CC176603AE73B10729113E0D00F05F
            616C84C0EC13801433C6E19D8A2F00A18133FF0E03BA5A331F769131FA2E187F
            4E55B3672A0980F5D2FF01B99E45F32198C52E0000000049454E44AE426082}
        end
        object lblmateria: TLabel
          Left = 104
          Top = 33
          Width = 183
          Height = 18
          Caption = 'Material n'#227'o requisitado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdMarcado: TLabel
          Left = 104
          Top = 11
          Width = 64
          Height = 18
          Caption = 'Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object bitRequisitar: TBitBtn
          Left = 104
          Top = 53
          Width = 121
          Height = 30
          Caption = 'Requisitar insumos'
          TabOrder = 0
          OnClick = bitRequisitarClick
        end
        object BitBtn22: TBitBtn
          Left = 1022
          Top = 30
          Width = 114
          Height = 38
          Caption = 'Iniciar processo'
          TabOrder = 1
          OnClick = BitBtn22Click
        end
        object BitBtn23: TBitBtn
          Left = 1151
          Top = 30
          Width = 110
          Height = 38
          Caption = 'Finalizar processo'
          TabOrder = 2
          OnClick = BitBtn23Click
        end
        object BitBtn24: TBitBtn
          Left = 887
          Top = 30
          Width = 115
          Height = 38
          Caption = 'Ver insumos'
          TabOrder = 3
          OnClick = BitBtn24Click
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 385
        Width = 1269
        Height = 120
        Align = alTop
        TabOrder = 3
        object Image1: TImage
          Left = 1130
          Top = 13
          Width = 30
          Height = 27
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000160000
            00160806000000C4B46C3B00000A376943435073524742204945433631393636
            2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
            BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
            850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
            DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
            00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
            8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
            344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
            F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
            7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
            CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
            378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
            BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
            876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
            2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
            7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
            2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
            DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
            D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
            2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
            90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
            2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
            58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
            28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
            8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
            113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
            A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
            55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
            11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
            A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
            B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
            65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
            2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
            ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
            28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
            5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
            47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
            4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
            03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
            4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
            F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
            D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
            63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
            7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
            86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
            6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
            2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
            C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
            F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
            A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
            D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
            A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
            675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
            CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
            95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
            82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
            829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
            6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
            E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
            D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
            DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
            0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
            356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
            306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
            AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
            9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
            1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
            CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
            5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
            D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
            FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
            65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
            EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
            3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
            3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
            EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
            871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
            D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
            F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
            61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
            D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
            AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
            A78C4F9F7E03F784F3FB8F70662A000000097048597300004CE500004CE50175
            CEF095000001C94944415478DA63FCFFFF3F0336C0B8CC9B8F81912F988191C1
            938191511F282406957AC5F0FFFF45A0D83686BF1FD7FD8FDAFA09AB7E748319
            1BC3D918D4998A811ACB805C0106FCE003D0924E869BFFFAFED7AFFC85D360C6
            6521320CCC6CEB814C1306D2C01986BFBF02FF47AD79826130E3A270690676E6
            2340A6020ECD7FA1343356D9FFFFEF33FCFA67FB3F6EE553B8C150EF1F017ADF
            144DF90320EE07E2AD0C3756DC078B68442802496F202E02627934F5A7186EFC
            B505050BC4E01591954043DBD014CD63F8F435F77FEAC66F582367B63F17032F
            D714A0BE44349757FD8F58DECEC8302F8097818BF3115A44CDFB1FBE2C9998C0
            053A6A1E9AE11F18BE7D976364581E9EC4C0C8341749E221C3F3BF9AFF0B567E
            27CAE009E19C0C124C378086CBC105FFFD4F021A1CB10A28188AE49542A05726
            10632892AB0B8066F42399B19A916145E44D20530D2EF8E7AFEAFFE895774832
            7879A82A0313EB2D24A15B20833F0019FC304F00639FF57FFDBF7F2419DCC8C4
            044C2DBF814C26A8D0479A1A4CA3A0A059E4D12CB9D12A83D02C4BC30B210DE6
            A30C98C5E50306D20AA133C042C81A5E08815D00298B0F3350526CFEFB6D072B
            93695FD0C305685135A1485058990200E8371F9EA46B61D10000000049454E44
            AE426082}
        end
        object Image2: TImage
          Left = 1130
          Top = 45
          Width = 30
          Height = 27
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000170000
            00170806000000E02AD4A000000A376943435073524742204945433631393636
            2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
            BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
            850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
            DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
            00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
            8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
            344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
            F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
            7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
            CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
            378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
            BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
            876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
            2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
            7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
            2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
            DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
            D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
            2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
            90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
            2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
            58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
            28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
            8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
            113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
            A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
            55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
            11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
            A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
            B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
            65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
            2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
            ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
            28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
            5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
            47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
            4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
            03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
            4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
            F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
            D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
            63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
            7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
            86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
            6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
            2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
            C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
            F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
            A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
            D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
            A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
            675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
            CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
            95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
            82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
            829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
            6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
            E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
            D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
            DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
            0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
            356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
            306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
            AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
            9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
            1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
            CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
            5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
            D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
            FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
            65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
            EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
            3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
            3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
            EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
            871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
            D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
            F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
            61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
            D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
            AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
            A78C4F9F7E03F784F3FB8F70662A000000097048597300004CE500004CE50175
            CEF095000001EF4944415478DAB5D54D4854511407F0FFB9337EA0307E124460
            D1261781B574212A4A8843042ACEF452308240442A689B28E2C24D44B9305AA9
            E3BC1E246E0CC54588B52A70D5A6405030C35589829FF34EE7CE30EA303E3F9A
            EB81C33D7766EEEF5DDE9B770F31334E0A8AB65C85F2D781D44D99164BC6C0BC
            02170BD8D9FEC40F27373CD77AE1E4583532BC90ACD5538FF59B9211C47607D8
            FAB0722A4EEFEEE52190FF5ACA47387BE8DD7771283AE68953341880AF6046CA
            CA73C047A34F2ED09B86539F52280F4F4B79E73FE16474CA05865371C77A26C3
            CB0C611DDBD8E50A6EB77FC6711A692A446EEE927C516000D73121BB6F49E0F6
            FD2750F4CA10ACC395BC96C01D6B4E26D506711DDD845ED20F52FF95F20CE311
            C258D32564E5AC1986757C268CB69621DBB77C01F857C278A37E71D62F009F4D
            3ED055995C364A33BF49E2E332B58CE22E3727F0F7A120C8376590FE83DFB12B
            095C29821D5E900F6F19C27BE40DED3F3C5BEC5025946F5E4A7F86F00FD9F56D
            7EEA6CA51EB9991F037FB1C755DC667F8F7B69CDC2B19ECB3028A9CE09AF619F
            EFF203FBDB81755C9B233B5C0FA5DE4A79FD8CF047C9C7729F57531CCF1E3A14
            CC4149C092EED90122DD99B2D26E01B3A0EE30879D2FC71AA775FFF88F220DF9
            A0A21BF053295C770FFBF40B53EE223B4EECA475FF00F84AC333FE04FEE80000
            000049454E44AE426082}
        end
        object Image3: TImage
          Left = 1130
          Top = 78
          Width = 30
          Height = 27
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000170000
            00170806000000E02AD4A000000A376943435073524742204945433631393636
            2D322E310000789C9D96775453D91687CFBD37BD5092108A94D06B685202480D
            BD48912E2A3109104AC090002236445470445191A6083228E080A34391B1228A
            850151B1EB041944D47170141B964964AD19DFBC79EFCD9BDF1FF77E6B9FBDCF
            DD67EF7DD6BA0090FC8305C24C5809800CA15814E1E7C5888D8B676007010CF0
            00036C00E070B3B34216F8460299027CD88C6C9913F817BDBA0E20F9FB2AD33F
            8CC100FF9F94B95922310050988CE7F2F8D95C1917C9383D579C25B74FC998B6
            344DCE304ACE22598232569373F22C5B7CF699650F39F332843C19CB73CEE265
            F0E4DC27E38D3912BE8C91601917E708F8B932BE26638374498640C66FE4B119
            7C4E36002892DC2EE67353646C2D63922832822DE37900E048C95FF0D22F58CC
            CF13CB0FC5CECC5A2E1224A78819265C53868D93138BE1CFCF4DE78BC5CC300E
            378D23E231D89919591CE1720066CFFC5914796D19B2223BD8383938306D2D6D
            BE28D47F5DFC9B92F776965E847FEE19441FF8C3F6577E990D00B0A665B5D9FA
            876D6915005DEB0150BBFD87CD602F008AB2BE750E7D711EBA7C5E52C4E22C67
            2BABDCDC5C4B019F6B292FE8EFFA9F0E7F435F7CCF52BEDDEFE56178F3933892
            7431435E376E667AA644C4C8CEE270F90CE69F87F81F07FE751E1611FC24BE88
            2F944544CBA64C204C96B55BC813880599428640F89F9AF80FC3FEA4D9B99689
            DAF811D0965802A5211A407E1E00282A1120097B642BD0EF7D0BC64703F9CD8B
            D199989DFBCF82FE7D57B84CFEC816247F8E63474432B81251CEEC9AFC5A0234
            2000454003EA401BE80313C004B6C011B8000FE0030241288804716031E08214
            90014420171480B5A0189482AD6027A80675A0113483367018748163E0343807
            2E81CB6004DC0152300E9E8029F00ACC40108485C810155287742043C81CB285
            58901BE403054311501C940825434248021540EBA052A81CAA86EAA166E85BE8
            28741ABA000D43B7A0516812FA157A07233009A6C15AB0116C05B3604F38088E
            8417C1C9F032381F2E82B7C09570037C10EE844FC397E011580A3F81A7118010
            113AA28B301116C24642917824091121AB9012A4026940DA901EA41FB98A4891
            A7C85B1406454531504C940BCA1F1585E2A296A156A136A3AA5107509DA83ED4
            55D4286A0AF5114D466BA2CDD1CEE800742C3A199D8B2E4657A09BD01DE8B3E8
            11F438FA150683A1638C318E187F4C1C2615B302B319B31BD38E398519C68C61
            A6B158AC3AD61CEB8A0DC572B0626C31B60A7B107B127B053B8E7D8323E27470
            B6385F5C3C4E882BC455E05A702770577013B819BC12DE10EF8C0FC5F3F0CBF1
            65F8467C0F7E083F8E9F2128138C09AE8448422A612DA192D046384BB84B7841
            2412F5884EC470A280B88658493C443C4F1C25BE255148662436298124216D21
            ED279D22DD22BD2093C946640F723C594CDE426E269F21DF27BF51A02A582A04
            28F014562BD428742A5C5178A688573454F4545CAC98AF58A178447148F1A912
            5EC94889ADC4515AA554A37454E986D2B43255D9463954394379B3728BF205E5
            47142CC588E243E1518A28FB286728635484AA4F6553B9D475D446EA59EA380D
            4333A605D05269A5B46F6883B429158A8A9D4AB44A9E4A8DCA7115291DA11BD1
            03E8E9F432FA61FA75FA3B552D554F55BEEA26D536D52BAAAFD5E6A879A8F1D5
            4AD4DAD546D4DEA933D47DD4D3D4B7A977A9DFD340699869846BE46AECD138AB
            F1740E6D8ECB1CEE9C923987E7DCD68435CD3423345768EED31CD09CD6D2D6F2
            D3CAD2AAD23AA3F5549BAEEDA19DAABD43FB84F6A40E55C74D47A0B343E7A4CE
            63860AC39391CEA864F431A6743575FD7525BAF5BA83BA337AC67A517A857AED
            7AF7F409FA2CFD24FD1DFABDFA53063A0621060506AD06B70DF1862CC314C35D
            86FD86AF8D8C8D628C361875193D3256330E30CE376E35BE6B423671375966D2
            6072CD1463CA324D33DD6D7AD90C36B3374B31AB311B3287CD1DCC05E6BBCD87
            2DD0164E16428B068B1B4C12D39399C36C658E5AD22D832D0B2DBB2C9F591958
            C55B6DB3EAB7FA686D6F9D6EDD687DC7866213685368D363F3ABAD992DD7B6C6
            F6DA5CF25CDFB9ABE776CF7D6E676EC7B7DB6377D39E6A1F62BFC1BED7FE8383
            A383C8A1CD61D2D1C031D1B1D6F1068BC60A636D669D77423B7939AD763AE6F4
            D6D9C159EC7CD8F91717A64B9A4B8BCBA379C6F3F8F31AE78DB9EAB9725CEB5D
            A56E0CB744B7BD6E52775D778E7B83FB030F7D0F9E4793C784A7A967AAE741CF
            675ED65E22AF0EAFD76C67F64AF6296FC4DBCFBBC47BD087E213E553ED73DF57
            CF37D9B7D577CACFDE6F85DF297FB47F90FF36FF1B015A01DC80E680A940C7C0
            95817D41A4A00541D5410F82CD8245C13D21704860C8F690BBF30DE70BE77785
            82D080D0EDA1F7C28CC396857D1F8E090F0BAF097F1861135110D1BF80BA60C9
            829605AF22BD22CB22EF44994449A27AA315A313A29BA35FC778C794C74863AD
            6257C65E8AD38813C475C763E3A3E39BE2A717FA2CDCB9703CC13EA138E1FA22
            E345798B2E2CD6589CBEF8F812C5259C254712D18931892D89EF39A19C06CEF4
            D280A5B54BA7B86CEE2EEE139E076F076F92EFCA2FE74F24B92695273D4A764D
            DE9E3C99E29E5291F254C016540B9EA7FAA7D6A5BE4E0B4DDB9FF6293D26BD3D
            0397919871544811A609FB32B533F33287B3CCB38AB3A4CB9C97ED5C36250A12
            356543D98BB2BBC534D9CFD480C444B25E329AE3965393F326373AF7489E729E
            306F60B9D9F24DCB27F27DF3BF5E815AC15DD15BA05BB0B66074A5E7CAFA55D0
            AAA5AB7A57EBAF2E5A3DBEC66FCD81B584B5696B7F28B42E2C2F7CB92E665D4F
            9156D19AA2B1F57EEB5B8B158A45C53736B86CA8DB88DA28D838B869EEA6AA4D
            1F4B7825174BAD4B2B4ADF6FE66EBEF895CD57955F7DDA92B465B0CCA16CCF56
            CC56E1D6EBDBDCB71D28572ECF2F1FDB1EB2BD73076347C98E973B97ECBC5061
            5751B78BB04BB24B5A195CD95D6550B5B5EA7D754AF5488D574D7BAD66EDA6DA
            D7BB79BBAFECF1D8D356A755575AF76EAF60EFCD7ABFFACE06A3868A7D987D39
            FB1E364637F67FCDFABAB949A3A9B4E9C37EE17EE98188037DCD8ECDCD2D9A2D
            65AD70ABA475F260C2C1CBDF787FD3DDC66CAB6FA7B7971E028724871E7F9BF8
            EDF5C341877B8FB08EB47D67F85D6D07B5A3A413EA5CDE39D595D225ED8EEB1E
            3E1A78B4B7C7A5A7E37BCBEFF71FD33D56735CE578D909C289A2139F4EE69F9C
            3E9575EAE9E9E4D363BD4B7AEF9C893D73AD2FBC6FF06CD0D9F3E77CCF9DE9F7
            EC3F79DEF5FCB10BCE178E5E645DECBAE470A973C07EA0E307FB1F3A061D063B
            871C87BA2F3B5DEE199E377CE28AFB95D357BDAF9EBB1670EDD2C8FC91E1EB51
            D76FDE48B821BDC9BBF9E856FAADE7B7736ECFDC5973177DB7E49ED2BD8AFB9A
            F71B7E34FDB15DEA203D3EEA3D3AF060C1833B63DCB1273F65FFF47EBCE821F9
            61C584CE44F323DB47C7267D272F3F5EF878FC49D69399A7C53F2BFF5CFBCCE4
            D977BF78FC3230153B35FE5CF4FCD3AF9B5FA8BFD8FFD2EE65EF74D8F4FD5719
            AF665E97BC517F73E02DEB6DFFBB98771333B9EFB1EF2B3F987EE8F918F4F1EE
            A78C4F9F7E03F784F3FB8F70662A000000097048597300004CE500004CE50175
            CEF0950000020F4944415478DAB595CF4B1B4114C7DF9BC4A0B61EDC046BD216
            453C6945774262AE5E54FA1748527B90F65A44F40FE8A1E75228162C8A88E045
            F05AA5507A282491CDFAEB628B486B4B6B8D098A4663CC8C2F4B539A92C4A0E3
            1716E6BD99F9F0F6BBB3F3504A09E534CF98ADA78377A19DB583448D521909F8
            237D2E0DCF5A64A7DC5E2C054F707E5782631411062974165D24614520BCFE66
            6667B858CE5C0A678C615CF73DA3A91714DE828A243784908F5D66D42C09FFC8
            98BD43F74D533A5419B440A7F426412D165E280A4FF0EE09407C7A05705E6752
            64FB9DE6F28702785CF70F902573D700E7F5EBF8FCA4EDFEEA6AD2827F6D69A9
            AEAB6FD8A2098F0238B9032F9D4678C4822774FF107DC94915E03F4AC151D26D
            C1F7BD817708D0A7104ED58B20E6447E1F527C5B251CA41CC7DF0FFC8D3607FE
            540AB62A8745827B5B6D0EFB17D570A27FBAC9CA976ED2F337F9D3B248A7A557
            2D1B42163CEE0D3C61006F15B2530707598F05FFDED45453EB72E7FE50B79AAA
            E52B672C32FCF76ED9E78110DDDDB30AD8BBA9B3E3B67BEBEB89825B91BC9F24
            EF87AE01A686211F6A46E47D2E2880C798AFAA59B7CDD070E00AE0348078A419
            D1F97CA26827DAEBF28F9145CF29ACAECC64F84CE0412D168DFE9B2ED9437739
            6FAE42C7280D83F4D497A06E50B31E4F1E25A75A3737D3FFCFE265DDDFB2AA13
            382D6D97C85CB43AC350EC640433EE98E1ED727B2F00AE22E1DAF1E1999E0000
            000049454E44AE426082}
        end
        object Label47: TLabel
          Left = 1166
          Top = 20
          Width = 80
          Height = 16
          Caption = 'Aguardando'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label48: TLabel
          Left = 1166
          Top = 53
          Width = 47
          Height = 16
          Caption = 'Inciado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label49: TLabel
          Left = 1166
          Top = 88
          Width = 62
          Height = 16
          Caption = 'Finalizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 15
          Top = 18
          Width = 167
          Height = 18
          Caption = 'Custo da produ'#231#227'o R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbltotprod: TLabel
          Left = 194
          Top = 19
          Width = 35
          Height = 18
          Caption = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object dsProdutos: TDataSource
    DataSet = _dm2.cdsproducaoitens
    OnDataChange = dsProdutosDataChange
    Left = 28
    Top = 352
  end
  object dsFluxos: TDataSource
    DataSet = _dm2.cdsFulxogramaProducao
    Left = 396
    Top = 360
  end
  object imgstatus: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 460
    Top = 353
    Bitmap = {
      494C010103000800240010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0006132500794D9300EF58A800FF58A800FF58A800FF58A800FF58A800FF4D93
      00EF132500780000000600000000000000000000000000000000000000000000
      0000000000000C170061325E00C158A800FF58A800FF58A800FF4D9300EF2444
      00A4000000000000000000000000000000000000000000000000000000000000
      000000000000121050942F2BCEEE3631EDFF3631EDFF3631EDFF3631EDFF2521
      A2D3000000070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000386B
      00CB58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF386B00CB00000000000000000000000000000000000000000000
      0000060B004458A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF2C5300B40001001A00000000000000000000000000000000000000000000
      00010B0A32763631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF2723ACD902020A3600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006386B00CB58A8
      00FF58A800FF58A800FF101E006E010300230000000201030023101E006E58A8
      00FF58A800FF58A800FF386B00CB0000000600000000000000000000000058A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF0204002C000000000000000000000000000000003631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF03031044000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001325007958A800FF58A8
      00FF58A800FF213F009D0000000000000000000000000000000000000000213F
      009E58A800FF58A800FF58A800FF1325007900000000000000000408003958A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF3F7800D800000009000000000000000007061D5B3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF2D28C4E8000001120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D4D9300EF58A800FF58A8
      00FF213F009D0000000000000000000000000000000000000000000000000000
      0000213F009E58A800FF58A800FF4D9300EF00000000070E004B58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF4D9200EE00000000080723643631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF322DDBF50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000274900AA58A800FF58A800FF111F
      0070000000000000000000000000000000000000000000000000000000000000
      000000000000111F007058A800FF58A800FF00000000254600A558A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF000000001C1A7CB93631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000407A00D958A800FF58A800FF0103
      0024000000000000000000000000000000000000000000000000000000000000
      0000000000000103002558A800FF58A800FF0000000E58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF000002183631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E9500F058A800FF58A800FF0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000258A800FF58A800FF0102001E58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF000004243631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000407A00D958A800FF58A800FF0103
      0024000000000000000000000000000000000000000000000000000000000000
      0000000000000103002558A800FF58A800FF0001001658A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF000002183631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000274900AA58A800FF58A800FF111F
      0070000000000000000000000000000000000000000000000000000000000000
      000000000000111F007058A800FF58A800FF00000000325E00C058A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF000000001C197AB83631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D4D9300EF58A800FF58A8
      00FF213F009D0000000000000000000000000000000000000000000000000000
      0000213F009E58A800FF58A800FF4D9300EF00000000101F006F58A800FF58A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF58A800FF56A600FD00000000070622623631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF3631EDFF322DDBF50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001325007958A800FF58A8
      00FF58A800FF213F009D0000000000000000000000000000000000000000213F
      009E58A800FF58A800FF58A800FF1325007900000000000000001120007158A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF529E00F701030026000000000000000006051B583631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF2D28C2E7000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006376800CA58A8
      00FF58A800FF58A800FF101E006E010300230000000201030023101E006E58A8
      00FF58A800FF58A800FF366800C90000000600000000000000000000000258A8
      00FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF58A800FF0E1C0068000000000000000000000000000000003631
      EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF3631EDFF3631EDFF03030F41000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000386B
      00CB58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF58A800FF386B00CB00000000000000000000000000000000000000000000
      000A203E009C58A800FF58A800FF58A800FF58A800FF58A800FF58A800FF58A8
      00FF4F9700F20B16005D00000000000000000000000000000000000000000000
      00010A092C6F3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631EDFF3631
      EDFF2521A2D30101083100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0006132500794D9300EF58A800FF58A800FF58A800FF58A800FF58A800FF4D93
      00EF132500780000000600000000000000000000000000000000000000000000
      000000000000305C00BD58A600FE58A800FF58A800FF58A800FF58A800FF5098
      00F30001001C0000000000000000000000000000000000000000000000000000
      000000000000110F4A8F2F2ACAEC3631EDFF3631EDFF3631EDFF3631EDFF2420
      9CCF000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000E274900AA407A00D94D9300EF407A00D9274900AA0000
      000E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000102001F1B34008E234100A0213F009D080F004F0000
      000D000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000307061F5E0A092D700908296B0000021D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object RvPordem: TRvProject
    Engine = RvSordem
    ProjectFile = 'C:\iqsistemas\SICElaticinios\relatorios\impRelOrdemProducao.rav'
    Left = 940
    Top = 360
    RaveBlobNew = {
      18470000C011CAC8F66FE5405241561AB0AD01000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      00000000000080FF3FBFED84B000000006BFED84B01244006100740061005600
      690065007700310009446174615669657731BFED84B01A540052006100760065
      00440061007400610056006900650077000D5452617665446174615669657700
      250B000000BFED84B01A54005200610076006500440061007400610056006900
      650077000D54526176654461746156696577BFED84B012440061007400610056
      0069006500770031000944617461566965773108BFED84B01A43006F006D0070
      0069006C0065004E00650065006400650064000D436F6D70696C654E65656465
      6400BFED84B00A460061006C00730065000546616C7365BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B0124400610074
      0061005600690065007700310009446174615669657731BFED84B01C43006F00
      6E006E0065006300740069006F006E004E0061006D0065000E436F6E6E656374
      696F6E4E616D6506BFED84B014520076004400640073004F007200640065006D
      000A52764464734F7264656DBFED84B000000900BFED84B02054005200610076
      00650053007400720069006E0067004600690065006C00640010545261766553
      7472696E674669656C64BFED84B01E4400610074006100560069006500770031
      0063006F006400690067006F000F446174615669657731636F6469676F08BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C63006F006400690067006F0006636F6469676FBFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C63006F00
      6400690067006F0006636F6469676FBFED84B008530069007A0065000453697A
      650112BFED84B000000000BFED84B02054005200610076006500530074007200
      69006E0067004600690065006C006400105452617665537472696E674669656C
      64BFED84B020440061007400610056006900650077003100700072006F006400
      750074006F001044617461566965773170726F6475746F08BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B00E70
      0072006F006400750074006F000770726F6475746FBFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00E700072006F0064
      00750074006F000770726F6475746FBFED84B008530069007A0065000453697A
      650166BFED84B000000000BFED84B01A54005200610076006500420043004400
      4600690065006C0064000D54526176654243444669656C64BFED84B026440061
      0074006100560069006500770031007100750061006E00740069006400610064
      006500134461746156696577317175616E74696461646508BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B01471
      00750061006E007400690064006100640065000A7175616E746964616465BFED
      84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84
      B0147100750061006E007400690064006100640065000A7175616E7469646164
      65BFED84B008530069007A0065000453697A650122BFED84B000000000BFED84
      B01A540052006100760065004200430044004600690065006C0064000D545261
      76654243444669656C64BFED84B02E4400610074006100560069006500770031
      0070006100720061006D006500740072006F006C006500690074006500174461
      74615669657731706172616D6574726F6C6569746508BFED84B0124600690065
      006C0064004E0061006D006500094669656C644E616D6506BFED84B01C700061
      00720061006D006500740072006F006C0065006900740065000E706172616D65
      74726F6C65697465BFED84B010460075006C006C004E0061006D006500084675
      6C6C4E616D6506BFED84B01C70006100720061006D006500740072006F006C00
      65006900740065000E706172616D6574726F6C65697465BFED84B00853006900
      7A0065000453697A650122BFED84B000000000BFED84B01A5400520061007600
      65004200430044004600690065006C0064000D54526176654243444669656C64
      BFED84B0364400610074006100560069006500770031007100750061006E0074
      006900640061006400650061006A007500730074006100640061001B44617461
      56696577317175616E746964616465616A75737461646108BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B02471
      00750061006E0074006900640061006400650061006A00750073007400610064
      006100127175616E746964616465616A757374616461BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B024710075006100
      6E0074006900640061006400650061006A007500730074006100640061001271
      75616E746964616465616A757374616461BFED84B008530069007A0065000453
      697A650122BFED84B000000000BFED84B01A5400520061007600650042004300
      44004600690065006C0064000D54526176654243444669656C64BFED84B02444
      00610074006100560069006500770031007500740069006C0069007A00610064
      006F00124461746156696577317574696C697A61646F08BFED84B01246006900
      65006C0064004E0061006D006500094669656C644E616D6506BFED84B0127500
      740069006C0069007A00610064006F00097574696C697A61646FBFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B0127500
      740069006C0069007A00610064006F00097574696C697A61646FBFED84B00853
      0069007A0065000453697A650122BFED84B000000000BFED84B0205400520061
      007600650053007400720069006E0067004600690065006C0064001054526176
      65537472696E674669656C64BFED84B01E440061007400610056006900650077
      00310063006F0064005000720065000F446174615669657731636F6450726508
      BFED84B0124600690065006C0064004E0061006D006500094669656C644E616D
      6506BFED84B00C63006F00640050007200650006636F64507265BFED84B01046
      0075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C6300
      6F00640050007200650006636F64507265BFED84B008530069007A0065000453
      697A650120BFED84B000000000BFED84B0205400520061007600650053007400
      720069006E0067004600690065006C006400105452617665537472696E674669
      656C64BFED84B020440061007400610056006900650077003100700072006F00
      64005000720065001044617461566965773170726F6450726508BFED84B01246
      00690065006C0064004E0061006D006500094669656C644E616D6506BFED84B0
      0E700072006F0064005000720065000770726F64507265BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B00E700072006F
      0064005000720065000770726F64507265BFED84B008530069007A0065000453
      697A650166BFED84B000000000BFED84B0225400520061007600650049006E00
      740065006700650072004600690065006C006400115452617665496E74656765
      724669656C64BFED84B03444006100740061005600690065007700310069006E
      0063005F00700072006F0064005F00700072006F0064007500630061006F001A
      446174615669657731696E635F70726F645F70726F647563616F08BFED84B012
      4600690065006C0064004E0061006D006500094669656C644E616D6506BFED84
      B02269006E0063005F00700072006F0064005F00700072006F00640075006300
      61006F0011696E635F70726F645F70726F647563616FBFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B02269006E006300
      5F00700072006F0064005F00700072006F0064007500630061006F0011696E63
      5F70726F645F70726F647563616FBFED84B008530069007A0065000453697A65
      0104BFED84B000000004BFED84B00E5200650070006F00720074003100075265
      706F72743100BA390000BFED84B00A5000610067006500310005506167653101
      00BFED84B00A5000610067006500310005506167653101BFED84B00A50006100
      67006500310005506167653100BFED84B0165400520061007600650052006500
      70006F00720074000B54526176655265706F7274BFED84B00E5200650070006F
      00720074003100075265706F72743108BFED84B01A43006F006D00700069006C
      0065004E00650065006400650064000D436F6D70696C654E656564656400BFED
      84B00A460061006C00730065000546616C7365BFED84B010460075006C006C00
      4E0061006D0065000846756C6C4E616D6506BFED84B00E5200650070006F0072
      0074003100075265706F727431BFED84B0124600690072007300740050006100
      670065000946697273745061676500BFED84B01A5200650070006F0072007400
      31002E00500061006700650031000D5265706F7274312E5061676531BFED84B0
      1450006100720061006D00650074006500720073000A506172616D6574657273
      08BFED84B00000BFED84B00C5000490056006100720073000650495661727308
      BFED84B00000BFED84B0000000001238000000BFED84B0125400520061007600
      6500500061006700650009545261766550616765BFED84B00A50006100670065
      00310005506167653108BFED84B01A43006F006D00700069006C0065004E0065
      0065006400650064000D436F6D70696C654E656564656400BFED84B00A460061
      006C00730065000546616C7365BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B00A500061006700650031000550616765
      31BFED84B006420069006E000342696E0201BFED84B01247007200690064004C
      0069006E006500730009477269644C696E65730105BFED84B016470072006900
      6400530070006100630069006E0067000B4772696453706163696E670500D0CC
      CCCCCCCCCCFB3FBFED84B0164F007200690065006E0074006100740069006F00
      6E000B4F7269656E746174696F6E00BFED84B01270006F004400650066006100
      75006C00740009706F44656661756C74BFED84B0145000610067006500480065
      0069006700680074000A506167654865696768740500000000000000B00240BF
      ED84B01250006100670065005700690064007400680009506167655769647468
      0500000000000000880240BFED84B01250006100700065007200530069007A00
      650009506170657253697A650201BFED84B01450006100720061006D00650074
      006500720073000A506172616D657465727308BFED84B00000BFED84B00C5000
      490056006100720073000650495661727308BFED84B00000BFED84B000000100
      BFED84B0165400520061007600650052006500670069006F006E000B54526176
      65526567696F6EBFED84B00E52006500670069006F006E00310007526567696F
      6E3108BFED84B00C480065006900670068007400064865696768740500D0CCCC
      CCCCCCAC0240BFED84B0084C00650066007400044C6566740500D0CCCCCCCCCC
      CCFB3FBFED84B00654006F00700003546F700500D0CCCCCCCCCCCCFB3FBFED84
      B00A570069006400740068000557696474680500D0CCCCCCCCCC840240BFED84
      B01A43006F006C0075006D006E00530070006100630069006E0067000D436F6C
      756D6E53706163696E670500000000000000000000BFED84B000000300BFED84
      B01254005200610076006500420061006E00640009545261766542616E64BFED
      84B00A420061006E00640031000542616E643108BFED84B00C41006E00630068
      006F00720006416E63686F720103BFED84B012420061006E0064005300740079
      006C0065000942616E645374796C6508BFED84B0105000720069006E0074004F
      0063006300085072696E744F636307BFED84B00E70006F004600690072007300
      740007706F4669727374BFED84B01270006F004E006500770050006100670065
      0009706F4E657750616765BFED84B00000BFED84B00000BFED84B00C48006500
      690067006800740006486569676874050078EB51B81E85ABFF3FBFED84B01A4D
      0069006E004800650069006700680074004C006500660074000D4D696E486569
      6768744C6566740500000000000000000000BFED84B01A50006F007300690074
      0069006F006E00560061006C00750065000D506F736974696F6E56616C756505
      00000000000000000000BFED84B000000B00BFED84B01C540052006100760065
      00520065006300740061006E0067006C0065000E545261766552656374616E67
      6C65BFED84B014520065006300740061006E0067006C00650031000A52656374
      616E676C653108BFED84B01642006F0072006400650072005700690064007400
      68000B426F726465725769647468050000000000000080FF3FBFED84B0124600
      69006C006C005300740079006C0065000946696C6C5374796C6500BFED84B00E
      6600730053006F006C0069006400076673536F6C6964BFED84B00C4800650069
      0067006800740006486569676874050010AE47E17A14EEFE3FBFED84B00E4800
      52006100640069007500730007485261646975730500000000000000000000BF
      ED84B0084C00650066007400044C6566740500D0CCCCCCCCCCCCFB3FBFED84B0
      0654006F00700003546F700500D0CCCCCCCCCCCCFB3FBFED84B00E5600520061
      00640069007500730007565261646975730500000000000000000000BFED84B0
      0A570069006400740068000557696474680500D047E17A14AEFF0140BFED84B0
      00000000BFED84B01A5400520061007600650044006100740061005400650078
      0074000D54526176654461746154657874BFED84B01244006100740061005400
      65007800740032000944617461546578743208BFED84B00846006F006E007400
      04466F6E7408BFED84B00E430068006100720073006500740007436861727365
      740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E
      0061006D006500044E616D6506BFED84B00A41007200690061006C0005417269
      616CBFED84B008530069007A0065000453697A650108BFED84B00A5300740079
      006C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F
      006E0074004A007500730074006900660079000B466F6E744A75737469667900
      BFED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065
      0066007400044C6566740500D8CCCCCCCCCCCCFC3FBFED84B008540065007800
      7400045465787406BFED84B01450006100720061006D002E0064006100740061
      000A506172616D2E64617461BFED84B00654006F00700003546F70050010AE47
      E17A14AEFD3FBFED84B00A570069006400740068000557696474680500000000
      000000A00140BFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B01450006100720061006D002E0064006100740061
      000A506172616D2E64617461BFED84B000000000BFED84B01A54005200610076
      006500440061007400610054006500780074000D545261766544617461546578
      74BFED84B0124400610074006100540065007800740033000944617461546578
      743308BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061
      00720073006500740007436861727365740101BFED84B00A43006F006C006F00
      720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84
      B00A41007200690061006C0005417269616CBFED84B008530069007A00650004
      53697A650108BFED84B00A5300740079006C006500055374796C6507BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C6566740500D0CCCCCC
      CCCCCCFC3FBFED84B0085400650078007400045465787406BFED84B01C500061
      00720061006D002E006F00700065007200610064006F0072000E506172616D2E
      6F70657261646F72BFED84B00654006F00700003546F70050000000000000080
      FE3FBFED84B00A570069006400740068000557696474680500000000000000A0
      0140BFED84B01244006100740061004600690065006C00640009446174614669
      656C6406BFED84B01C50006100720061006D002E006F00700065007200610064
      006F0072000E506172616D2E6F70657261646F72BFED84B000000000BFED84B0
      1A54005200610076006500440061007400610054006500780074000D54526176
      654461746154657874BFED84B012440061007400610054006500780074003400
      0944617461546578743408BFED84B00846006F006E00740004466F6E7408BFED
      84B00E430068006100720073006500740007436861727365740101BFED84B00A
      43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00650004
      4E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B00853
      0069007A0065000453697A650108BFED84B00A5300740079006C006500055374
      796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075
      00730074006900660079000B466F6E744A75737469667900BFED84B00C70006A
      004C0065006600740006706A4C656674BFED84B0084C00650066007400044C65
      66740500D8CCCCCCCCCCCCFC3FBFED84B0085400650078007400045465787406
      BFED84B01E50006100720061006D002E00640065007300630072006900630061
      006F000F506172616D2E64657363726963616FBFED84B00654006F0070000354
      6F70050080EB51B81E85ABFE3FBFED84B00A5700690064007400680005576964
      74680500000000000000B00140BFED84B0124400610074006100460069006500
      6C00640009446174614669656C6406BFED84B01E50006100720061006D002E00
      640065007300630072006900630061006F000F506172616D2E64657363726963
      616FBFED84B000000000BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01244006100
      74006100540065007800740035000944617461546578743508BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A65010ABFED84B0
      0A5300740079006C006500055374796C6507BFED84B00C6600730042006F006C
      006400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00650066
      007400044C6566740500080000000000C00140BFED84B0085400650078007400
      045465787406BFED84B01850006100720061006D002E006E0075006D00650072
      006F000C506172616D2E6E756D65726FBFED84B00654006F00700003546F7005
      002885EB51B81EC5FE3FBFED84B00A5700690064007400680005576964746805
      00805C8FC2F528DCFF3FBFED84B01244006100740061004600690065006C0064
      0009446174614669656C6406BFED84B01850006100720061006D002E006E0075
      006D00650072006F000C506172616D2E6E756D65726FBFED84B000000000BFED
      84B01C54005200610076006500520065006300740061006E0067006C0065000E
      545261766552656374616E676C65BFED84B014520065006300740061006E0067
      006C00650032000A52656374616E676C653208BFED84B01642006F0072006400
      65007200570069006400740068000B426F726465725769647468050000000000
      000080FF3FBFED84B012460069006C006C005300740079006C0065000946696C
      6C5374796C6500BFED84B00E6600730053006F006C0069006400076673536F6C
      6964BFED84B00C48006500690067006800740006486569676874050000E17A14
      AE47E1FC3FBFED84B00E48005200610064006900750073000748526164697573
      0500000000000000000000BFED84B0084C00650066007400044C6566740500D0
      CCCCCCCCCCCCFB3FBFED84B00654006F00700003546F700500F8285C8FC2F588
      FF3FBFED84B00E56005200610064006900750073000756526164697573050000
      0000000000000000BFED84B00A570069006400740068000557696474680500D0
      47E17A14AEFF0140BFED84B000000000BFED84B0125400520061007600650054
      0065007800740009545261766554657874BFED84B00A54006500780074003100
      05546578743108BFED84B00846006F006E00740004466F6E7408BFED84B00E43
      0068006100720073006500740007436861727365740101BFED84B00A43006F00
      6C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D65
      06BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A
      0065000453697A65010ABFED84B00A5300740079006C006500055374796C6507
      BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000BFED
      84B00000BFED84B01646006F006E0074004A007500730074006900660079000B
      466F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A
      4C656674BFED84B0084C00650066007400044C6566740500686666666666C600
      40BFED84B0085400650078007400045465787406BFED84B0224F005200440045
      004D002000440045002000500052004F0044005500C700C3004F00114F524445
      4D2044452050524F4455C7C34FBFED84B00654006F00700003546F70050010AE
      47E17A148EFF3FBFED84B00A5700690064007400680005576964746805003833
      33333333930040BFED84B000000000BFED84B012540052006100760065005400
      65007800740009545261766554657874BFED84B00A5400650078007400320005
      546578743208BFED84B00846006F006E00740004466F6E7408BFED84B00E4300
      68006100720073006500740007436861727365740101BFED84B00A43006F006C
      006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506
      BFED84B00A41007200690061006C0005417269616CBFED84B008530069007A00
      65000453697A650108BFED84B00A5300740079006C006500055374796C6507BF
      ED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073007400
      6900660079000B466F6E744A75737469667900BFED84B00C70006A004C006500
      6600740006706A4C656674BFED84B0084C00650066007400044C656674050088
      3333333333CB0140BFED84B0085400650078007400045465787406BFED84B008
      5000E10067003A000450E1673ABFED84B00654006F00700003546F7005009099
      9999999999FC3FBFED84B00A57006900640074006800055769647468050040AE
      47E17A14AEFD3FBFED84B000000000BFED84B01A540052006100760065004400
      61007400610054006500780074000D54526176654461746154657874BFED84B0
      124400610074006100540065007800740036000944617461546578743608BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      08BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED84
      B00000BFED84B01646006F006E0074004A007500730074006900660079000B46
      6F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A4C
      656674BFED84B0084C00650066007400044C6566740500B86666666666D60140
      BFED84B0085400650078007400045465787406BFED84B0245200650070006F00
      720074002E00430075007200720065006E007400500061006700650012526570
      6F72742E43757272656E7450616765BFED84B00654006F00700003546F700500
      A0999999999999FC3FBFED84B00A570069006400740068000557696474680500
      C0F5285C8FC2F5FE3FBFED84B01244006100740061004600690065006C006400
      09446174614669656C6406BFED84B0245200650070006F00720074002E004300
      75007200720065006E0074005000610067006500125265706F72742E43757272
      656E7450616765BFED84B000000000BFED84B01A540052006100760065004400
      61007400610054006500780074000D54526176654461746154657874BFED84B0
      124400610074006100540065007800740031000944617461546578743108BFED
      84B00846006F006E00740004466F6E7408BFED84B00E43006800610072007300
      6500740007436861727365740101BFED84B00A43006F006C006F00720005436F
      6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072
      00690061006C0005417269616CBFED84B008530069007A0065000453697A6501
      0CBFED84B00A5300740079006C006500055374796C6507BFED84B00C66007300
      42006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84B016
      46006F006E0074004A007500730074006900660079000B466F6E744A75737469
      667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84B008
      4C00650066007400044C6566740500D8CCCCCCCCCCCCFC3FBFED84B008540065
      0078007400045465787406BFED84B01A50006100720061006D002E0065006D00
      700072006500730061000D506172616D2E656D7072657361BFED84B00654006F
      00700003546F70050098999999999999FC3FBFED84B00A570069006400740068
      000557696474680500A09999999999B90140BFED84B012440061007400610046
      00690065006C00640009446174614669656C6406BFED84B01A50006100720061
      006D002E0065006D00700072006500730061000D506172616D2E656D70726573
      61BFED84B000000000BFED84B01A540052006100760065004400610074006100
      54006500780074000D54526176654461746154657874BFED84B0144400610074
      0061005400650078007400310033000A4461746154657874313308BFED84B008
      46006F006E00740004466F6E7408BFED84B00E43006800610072007300650074
      0007436861727365740101BFED84B00A43006F006C006F00720005436F6C6F72
      0100BFED84B0084E0061006D006500044E616D6506BFED84B00A410072006900
      61006C0005417269616CBFED84B008530069007A0065000453697A650108BFED
      84B00A5300740079006C006500055374796C6507BFED84B00000BFED84B00000
      BFED84B01646006F006E0074004A007500730074006900660079000B466F6E74
      4A75737469667900BFED84B00C70006A004C0065006600740006706A4C656674
      BFED84B0084C00650066007400044C656674050000C9F5285C8FC2FC3FBFED84
      B0085400650078007400045465787406BFED84B01E50006100720061006D002E
      0070006100720061006D006500740072006F000F506172616D2E706172616D65
      74726FBFED84B00654006F00700003546F7005008014AE47E17AD4FE3FBFED84
      B00A570069006400740068000557696474680500000000000000E00040BFED84
      B01244006100740061004600690065006C00640009446174614669656C6406BF
      ED84B01E50006100720061006D002E0070006100720061006D00650074007200
      6F000F506172616D2E706172616D6574726FBFED84B000000000BFED84B01254
      005200610076006500420061006E00640009545261766542616E64BFED84B00A
      420061006E00640032000542616E643208BFED84B00C41006E00630068006F00
      720006416E63686F720103BFED84B012420061006E0064005300740079006C00
      65000942616E645374796C6508BFED84B0105000720069006E0074004C006F00
      6300085072696E744C6F6307BFED84B01A70006C00470072006F007500700048
      00650061006400650072000D706C47726F7570486561646572BFED84B00000BF
      ED84B00000BFED84B01C43006F006E00740072006F006C006C00650072004200
      61006E0064000E436F6E74726F6C6C657242616E6400BFED84B0124400610074
      006100420061006E0064003100094461746142616E6431BFED84B01A47007200
      6F0075007000440061007400610056006900650077000D47726F757044617461
      5669657700BFED84B01244006100740061005600690065007700310009446174
      615669657731BFED84B010470072006F00750070004B00650079000847726F75
      704B657906BFED84B02269006E0063005F00700072006F0064005F0070007200
      6F0064007500630061006F0011696E635F70726F645F70726F647563616FBFED
      84B00C48006500690067006800740006486569676874050050B81E85EB51B8FE
      3FBFED84B01A4D0069006E004800650069006700680074004C00650066007400
      0D4D696E4865696768744C6566740500000000000000000000BFED84B01A5000
      6F0073006900740069006F006E00560061006C00750065000D506F736974696F
      6E56616C75650500000000000000000000BFED84B000000600BFED84B01A5400
      5200610076006500440061007400610054006500780074000D54526176654461
      746154657874BFED84B012440061007400610054006500780074003700094461
      7461546578743708BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A65010BBFED84B00A5300740079006C006500055374796C65
      07BFED84B00C6600730042006F006C006400066673426F6C64BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C6566740500D0CCCCCCCCCCCC
      FB3FBFED84B0085400650078007400045465787406BFED84B00C63006F006400
      50007200650006636F64507265BFED84B00654006F00700003546F700500E0F5
      285C8FC2F5F93FBFED84B00A5700690064007400680005576964746805004833
      33333333B3FE3FBFED84B01244006100740061004600690065006C0064000944
      6174614669656C6406BFED84B00C63006F00640050007200650006636F645072
      65BFED84B0104400610074006100560069006500770008446174615669657700
      BFED84B012440061007400610056006900650077003100094461746156696577
      31BFED84B000000000BFED84B01A540052006100760065004400610074006100
      54006500780074000D54526176654461746154657874BFED84B0124400610074
      006100540065007800740038000944617461546578743808BFED84B00846006F
      006E00740004466F6E7408BFED84B00E43006800610072007300650074000743
      6861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100BF
      ED84B0084E0061006D006500044E616D6506BFED84B00A41007200690061006C
      0005417269616CBFED84B008530069007A0065000453697A65010BBFED84B00A
      5300740079006C006500055374796C6507BFED84B00C6600730042006F006C00
      6400066673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E00
      74004A007500730074006900660079000B466F6E744A75737469667900BFED84
      B00C70006A004C0065006600740006706A4C656674BFED84B0084C0065006600
      7400044C6566740500706666666666E6FE3FBFED84B008540065007800740004
      5465787406BFED84B00E700072006F0064005000720065000770726F64507265
      BFED84B00654006F00700003546F700500E0F5285C8FC2F5F93FBFED84B00A57
      0069006400740068000557696474680500203333333333F30040BFED84B01244
      006100740061004600690065006C00640009446174614669656C6406BFED84B0
      0E700072006F0064005000720065000770726F64507265BFED84B01044006100
      74006100560069006500770008446174615669657700BFED84B0124400610074
      0061005600690065007700310009446174615669657731BFED84B000000000BF
      ED84B01A54005200610076006500440061007400610054006500780074000D54
      526176654461746154657874BFED84B012440061007400610054006500780074
      0039000944617461546578743908BFED84B00846006F006E00740004466F6E74
      08BFED84B00E430068006100720073006500740007436861727365740101BFED
      84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00
      6500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84
      B008530069007A0065000453697A65010ABFED84B00A5300740079006C006500
      055374796C6507BFED84B00C6600730042006F006C006400066673426F6C64BF
      ED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073007400
      6900660079000B466F6E744A75737469667900BFED84B00C70006A004C006500
      6600740006706A4C656674BFED84B0084C00650066007400044C656674050018
      295C8FC2F5C80140BFED84B0085400650078007400045465787406BFED84B024
      7100750061006E0074006900640061006400650061006A007500730074006100
      64006100127175616E746964616465616A757374616461BFED84B00654006F00
      700003546F700500E8A3703D0AD7A3FA3FBFED84B00A57006900640074006800
      0557696474680500203333333333B3FF3FBFED84B01244006100740061004600
      690065006C00640009446174614669656C6406BFED84B0247100750061006E00
      74006900640061006400650061006A0075007300740061006400610012717561
      6E746964616465616A757374616461BFED84B010440061007400610056006900
      6500770008446174615669657700BFED84B01244006100740061005600690065
      007700310009446174615669657731BFED84B000000000BFED84B01254005200
      610076006500540065007800740009545261766554657874BFED84B00A540065
      0078007400340005546578743408BFED84B00846006F006E00740004466F6E74
      08BFED84B00E430068006100720073006500740007436861727365740101BFED
      84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D00
      6500044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84
      B008530069007A0065000453697A650109BFED84B00A5300740079006C006500
      055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E007400
      4A007500730074006900660079000B466F6E744A75737469667900BFED84B00C
      70006A004C0065006600740006706A4C656674BFED84B0084C00650066007400
      044C656674050010E17A14AE47E1FD3FBFED84B0085400650078007400045465
      787406BFED84B042500072006500760069007300E3006F002000640065002000
      2000750073006F0020006400650020006D0061007400E9007200690061002D00
      7000720069006D00610021507265766973E36F206465202075736F206465206D
      6174E97269612D7072696D61BFED84B00654006F00700003546F700500A09999
      99999999FD3FBFED84B00A570069006400740068000557696474680500686666
      666666860040BFED84B000000000BFED84B01254005200610076006500540065
      007800740009545261766554657874BFED84B00A540065007800740035000554
      6578743508BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650109BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00C70006A004C00650066
      00740006706A4C656674BFED84B0084C00650066007400044C656674050010E1
      7A14AE47E1FD3FBFED84B0085400650078007400045465787406BFED84B080E2
      5B004300F3006400690067006F005D00200020005B002000500072006F006400
      750074006F0020002D0020006D0061007400E900720069006100200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      2000200020002000200020002000200020002000200020002000200020002000
      20005D005B00200020005100750061006E007400690064006100640065002000
      7000720065007600690073007400610020002000200020002000200020002000
      5D00715B43F36469676F5D20205B2050726F6475746F202D206D6174E9726961
      2020202020202020202020202020202020202020202020202020202020202020
      20202020202020202020202020202020202020205D5B20205175616E74696461
      646520707265766973746120202020202020205DBFED84B00654006F00700003
      546F70050000000000000080FE3FBFED84B00A57006900640074006800055769
      6474680500706666666666E60140BFED84B000000000BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B01444006100740061005400650078007400310034000A446174
      6154657874313408BFED84B00846006F006E00740004466F6E7408BFED84B00E
      430068006100720073006500740007436861727365740101BFED84B00A43006F
      006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D
      6506BFED84B00A41007200690061006C0005417269616CBFED84B00853006900
      7A0065000453697A65010ABFED84B00A5300740079006C006500055374796C65
      07BFED84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300
      74006900660079000B466F6E744A75737469667900BFED84B00C70006A004C00
      65006600740006706A4C656674BFED84B0084C00650066007400044C65667405
      00B01E85EB51B89E0140BFED84B0085400650078007400045465787406BFED84
      B01E50006100720061006D002E00640065007300740069006E00610064006F00
      0F506172616D2E64657374696E61646FBFED84B00654006F00700003546F7005
      00D8F5285C8FC2F5FA3FBFED84B00A5700690064007400680005576964746805
      00A0C2F5285C8FA2FF3FBFED84B01244006100740061004600690065006C0064
      0009446174614669656C6406BFED84B01E50006100720061006D002E00640065
      007300740069006E00610064006F000F506172616D2E64657374696E61646FBF
      ED84B000000000BFED84B01A5400520061007600650044006100740061004200
      61006E0064000D54526176654461746142616E64BFED84B01244006100740061
      00420061006E0064003100094461746142616E643108BFED84B00C41006E0063
      0068006F00720006416E63686F720103BFED84B012420061006E006400530074
      0079006C0065000942616E645374796C6508BFED84B00000BFED84B01A470072
      006F0075007000440061007400610056006900650077000D47726F7570446174
      615669657700BFED84B012440061007400610056006900650077003100094461
      74615669657731BFED84B010470072006F00750070004B00650079000847726F
      75704B657906BFED84B02269006E0063005F00700072006F0064005F00700072
      006F0064007500630061006F0011696E635F70726F645F70726F647563616FBF
      ED84B00C480065006900670068007400064865696768740500E01E85EB51B89E
      FD3FBFED84B01A4D0069006E004800650069006700680074004C006500660074
      000D4D696E4865696768744C6566740500000000000000000000BFED84B01A50
      006F0073006900740069006F006E00560061006C00750065000D506F73697469
      6F6E56616C75650500000000000000000000BFED84B01A43006F006C0075006D
      006E00530070006100630069006E0067000D436F6C756D6E53706163696E6705
      00000000000000000000BFED84B0104400610074006100560069006500770008
      446174615669657700BFED84B012440061007400610056006900650077003100
      09446174615669657731BFED84B000000400BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01444006100740061005400650078007400310030000A44617461546578
      74313008BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800
      6100720073006500740007436861727365740101BFED84B00A43006F006C006F
      00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED
      84B00A41007200690061006C0005417269616CBFED84B008530069007A006500
      0453697A650109BFED84B00A5300740079006C006500055374796C6507BFED84
      B00000BFED84B00000BFED84B01646006F006E0074004A007500730074006900
      660079000B466F6E744A75737469667900BFED84B00C70006A004C0065006600
      740006706A4C656674BFED84B0084C00650066007400044C656674050020E17A
      14AE47E1FD3FBFED84B0085400650078007400045465787406BFED84B00C6300
      6F006400690067006F0006636F6469676FBFED84B00654006F00700003546F70
      0500000000000000000000BFED84B00A57006900640074006800055769647468
      0500B047E17A14AE87FE3FBFED84B01244006100740061004600690065006C00
      640009446174614669656C6406BFED84B00C63006F006400690067006F000663
      6F6469676FBFED84B01044006100740061005600690065007700084461746156
      69657700BFED84B0124400610074006100560069006500770031000944617461
      5669657731BFED84B000000000BFED84B01A5400520061007600650044006100
      7400610054006500780074000D54526176654461746154657874BFED84B01444
      006100740061005400650078007400310031000A4461746154657874313108BF
      ED84B00846006F006E00740004466F6E7408BFED84B00E430068006100720073
      006500740007436861727365740101BFED84B00A43006F006C006F0072000543
      6F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A4100
      7200690061006C0005417269616CBFED84B008530069007A0065000453697A65
      0109BFED84B00A5300740079006C006500055374796C6507BFED84B00000BFED
      84B00000BFED84B01646006F006E0074004A007500730074006900660079000B
      466F6E744A75737469667900BFED84B00C70006A004C0065006600740006706A
      4C656674BFED84B0084C00650066007400044C65667405001885EB51B81E85FF
      3FBFED84B0085400650078007400045465787406BFED84B00E700072006F0064
      00750074006F000770726F6475746FBFED84B00654006F00700003546F700500
      000000000000000000BFED84B00A570069006400740068000557696474680500
      C0CCCCCCCCCCCC0040BFED84B01244006100740061004600690065006C006400
      09446174614669656C6406BFED84B00E700072006F006400750074006F000770
      726F6475746FBFED84B010440061007400610056006900650077000844617461
      5669657700BFED84B01244006100740061005600690065007700310009446174
      615669657731BFED84B000000000BFED84B01A54005200610076006500440061
      007400610054006500780074000D54526176654461746154657874BFED84B014
      44006100740061005400650078007400310032000A4461746154657874313208
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      650109BFED84B00A5300740079006C006500055374796C6507BFED84B00000BF
      ED84B00000BFED84B01646006F006E0074004A00750073007400690066007900
      0B466F6E744A75737469667900BFED84B00C70006A004C006500660074000670
      6A4C656674BFED84B0084C00650066007400044C6566740500407B14AE47E18A
      0140BFED84B0085400650078007400045465787406BFED84B012750074006900
      6C0069007A00610064006F00097574696C697A61646FBFED84B00654006F0070
      0003546F700500000000000000000000BFED84B00A5700690064007400680005
      5769647468050000000000000080FF3FBFED84B0124400610074006100460069
      0065006C00640009446174614669656C6406BFED84B0127500740069006C0069
      007A00610064006F00097574696C697A61646FBFED84B0104400610074006100
      560069006500770008446174615669657700BFED84B012440061007400610056
      00690065007700310009446174615669657731BFED84B000000000BFED84B012
      54005200610076006500540065007800740009545261766554657874BFED84B0
      0A5400650078007400360005546578743608BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A650109BFED84B00A530074007900
      6C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F00
      6E0074004A007500730074006900660079000B466F6E744A75737469667900BF
      ED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C006500
      66007400044C656674050010E17A14AE47E1FD3FBFED84B00854006500780074
      00045465787406BFED84B081782E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E002E
      002E002E0080BC2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E
      2E2E2EBFED84B00654006F00700003546F700500C0A3703D0AD7A3FC3FBFED84
      B00A570069006400740068000557696474680500706666666666F60140BFED84
      B0000000}
  end
  object RvSordem: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 940
    Top = 416
  end
  object RvDdsOrdem: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = _dm.cdsOrdem
    Left = 940
    Top = 480
  end
  object rvpOerdemSimples: TRvProject
    Engine = RvSordem
    ProjectFile = 
      'C:\iqsistemas\SICElaticinios\relatorios\impOrdemProducaoSimples.' +
      'rav'
    Left = 1020
    Top = 360
    RaveBlobNew = {
      513300001A05C273D46FE5405241561AB0AD01000000BFED84B00E5200650070
      006F00720074003100075265706F72743100BFED84B026540052006100760065
      00500072006F006A006500630074004D0061006E006100670065007200135452
      61766550726F6A6563744D616E61676572BFED84B01652006100760065005000
      72006F006A006500630074000B5261766550726F6A65637408BFED84B01A4300
      6F006D00700069006C0065004E00650065006400650064000D436F6D70696C65
      4E656564656400BFED84B00A460061006C00730065000546616C7365BFED84B0
      10460075006C006C004E0061006D0065000846756C6C4E616D6506BFED84B016
      5200610076006500500072006F006A006500630074000B5261766550726F6A65
      6374BFED84B014430061007400650067006F0072006900650073000A43617465
      676F7269657308BFED84B00000BFED84B01450006100720061006D0065007400
      6500720073000A506172616D657465727308BFED84B00000BFED84B00C500049
      0056006100720073000650495661727308BFED84B00000BFED84B01655006E00
      69007400730046006100630074006F0072000B556E697473466163746F720500
      00000000000080FF3FBFED84B000000006BFED84B01244006100740061005600
      690065007700310009446174615669657731BFED84B01A540052006100760065
      00440061007400610056006900650077000D5452617665446174615669657700
      C809000000BFED84B01A54005200610076006500440061007400610056006900
      650077000D54526176654461746156696577BFED84B012440061007400610056
      0069006500770031000944617461566965773108BFED84B01A43006F006D0070
      0069006C0065004E00650065006400650064000D436F6D70696C654E65656465
      6400BFED84B00A460061006C00730065000546616C7365BFED84B01046007500
      6C006C004E0061006D0065000846756C6C4E616D6506BFED84B0124400610074
      0061005600690065007700310009446174615669657731BFED84B01C43006F00
      6E006E0065006300740069006F006E004E0061006D0065000E436F6E6E656374
      696F6E4E616D6506BFED84B014520076004400640073004F007200640065006D
      000A52764464734F7264656DBFED84B000000800BFED84B02054005200610076
      00650053007400720069006E0067004600690065006C00640010545261766553
      7472696E674669656C64BFED84B01E4400610074006100560069006500770031
      0063006F0064005000720065000F446174615669657731636F6450726508BFED
      84B0124600690065006C0064004E0061006D006500094669656C644E616D6506
      BFED84B00C63006F00640050007200650006636F64507265BFED84B010460075
      006C006C004E0061006D0065000846756C6C4E616D6506BFED84B00C63006F00
      640050007200650006636F64507265BFED84B008530069007A0065000453697A
      650120BFED84B000000000BFED84B02054005200610076006500530074007200
      69006E0067004600690065006C006400105452617665537472696E674669656C
      64BFED84B020440061007400610056006900650077003100700072006F006400
      5000720065001044617461566965773170726F6450726508BFED84B012460069
      0065006C0064004E0061006D006500094669656C644E616D6506BFED84B00E70
      0072006F0064005000720065000770726F64507265BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B00E700072006F0064
      005000720065000770726F64507265BFED84B008530069007A0065000453697A
      650166BFED84B000000000BFED84B02054005200610076006500530074007200
      69006E0067004600690065006C006400105452617665537472696E674669656C
      64BFED84B01E44006100740061005600690065007700310063006F0064006900
      67006F000F446174615669657731636F6469676F08BFED84B012460069006500
      6C0064004E0061006D006500094669656C644E616D6506BFED84B00C63006F00
      6400690067006F0006636F6469676FBFED84B010460075006C006C004E006100
      6D0065000846756C6C4E616D6506BFED84B00C63006F006400690067006F0006
      636F6469676FBFED84B008530069007A0065000453697A650112BFED84B00000
      0000BFED84B0205400520061007600650053007400720069006E006700460069
      0065006C006400105452617665537472696E674669656C64BFED84B020440061
      007400610056006900650077003100700072006F006400750074006F00104461
      7461566965773170726F6475746F08BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B00E700072006F0064007500
      74006F000770726F6475746FBFED84B010460075006C006C004E0061006D0065
      000846756C6C4E616D6506BFED84B00E700072006F006400750074006F000770
      726F6475746FBFED84B008530069007A0065000453697A650166BFED84B00000
      0000BFED84B01A540052006100760065004200430044004600690065006C0064
      000D54526176654243444669656C64BFED84B026440061007400610056006900
      6500770031007100750061006E00740069006400610064006500134461746156
      696577317175616E74696461646508BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B0147100750061006E007400
      690064006100640065000A7175616E746964616465BFED84B010460075006C00
      6C004E0061006D0065000846756C6C4E616D6506BFED84B0147100750061006E
      007400690064006100640065000A7175616E746964616465BFED84B008530069
      007A0065000453697A650122BFED84B000000000BFED84B01A54005200610076
      0065004200430044004600690065006C0064000D54526176654243444669656C
      64BFED84B02E4400610074006100560069006500770031007000610072006100
      6D006500740072006F006C006500690074006500174461746156696577317061
      72616D6574726F6C6569746508BFED84B0124600690065006C0064004E006100
      6D006500094669656C644E616D6506BFED84B01C70006100720061006D006500
      740072006F006C0065006900740065000E706172616D6574726F6C65697465BF
      ED84B010460075006C006C004E0061006D0065000846756C6C4E616D6506BFED
      84B01C70006100720061006D006500740072006F006C0065006900740065000E
      706172616D6574726F6C65697465BFED84B008530069007A0065000453697A65
      0122BFED84B000000000BFED84B01A5400520061007600650042004300440046
      00690065006C0064000D54526176654243444669656C64BFED84B03644006100
      74006100560069006500770031007100750061006E0074006900640061006400
      650061006A007500730074006100640061001B4461746156696577317175616E
      746964616465616A75737461646108BFED84B0124600690065006C0064004E00
      61006D006500094669656C644E616D6506BFED84B0247100750061006E007400
      6900640061006400650061006A00750073007400610064006100127175616E74
      6964616465616A757374616461BFED84B010460075006C006C004E0061006D00
      65000846756C6C4E616D6506BFED84B0247100750061006E0074006900640061
      006400650061006A00750073007400610064006100127175616E746964616465
      616A757374616461BFED84B008530069007A0065000453697A650122BFED84B0
      00000000BFED84B01A540052006100760065004200430044004600690065006C
      0064000D54526176654243444669656C64BFED84B02444006100740061005600
      69006500770031007500740069006C0069007A00610064006F00124461746156
      696577317574696C697A61646F08BFED84B0124600690065006C0064004E0061
      006D006500094669656C644E616D6506BFED84B0127500740069006C0069007A
      00610064006F00097574696C697A61646FBFED84B010460075006C006C004E00
      61006D0065000846756C6C4E616D6506BFED84B0127500740069006C0069007A
      00610064006F00097574696C697A61646FBFED84B008530069007A0065000453
      697A650122BFED84B000000004BFED84B00E5200650070006F00720074003100
      075265706F7274310050270000BFED84B00A5000610067006500310005506167
      65310100BFED84B00A5000610067006500310005506167653101BFED84B00A50
      00610067006500310005506167653100BFED84B0165400520061007600650052
      00650070006F00720074000B54526176655265706F7274BFED84B00E52006500
      70006F00720074003100075265706F72743108BFED84B01A43006F006D007000
      69006C0065004E00650065006400650064000D436F6D70696C654E6565646564
      00BFED84B00A460061006C00730065000546616C7365BFED84B010460075006C
      006C004E0061006D0065000846756C6C4E616D6506BFED84B00E520065007000
      6F00720074003100075265706F727431BFED84B0124600690072007300740050
      006100670065000946697273745061676500BFED84B01A5200650070006F0072
      00740031002E00500061006700650031000D5265706F7274312E5061676531BF
      ED84B01450006100720061006D00650074006500720073000A506172616D6574
      65727308BFED84B00000BFED84B00C5000490056006100720073000650495661
      727308BFED84B00000BFED84B000000000A825000000BFED84B0125400520061
      0076006500500061006700650009545261766550616765BFED84B00A50006100
      67006500310005506167653108BFED84B01A43006F006D00700069006C006500
      4E00650065006400650064000D436F6D70696C654E656564656400BFED84B00A
      460061006C00730065000546616C7365BFED84B010460075006C006C004E0061
      006D0065000846756C6C4E616D6506BFED84B00A500061006700650031000550
      61676531BFED84B006420069006E000342696E0201BFED84B012470072006900
      64004C0069006E006500730009477269644C696E65730105BFED84B016470072
      0069006400530070006100630069006E0067000B4772696453706163696E6705
      00D0CCCCCCCCCCCCFB3FBFED84B0164F007200690065006E0074006100740069
      006F006E000B4F7269656E746174696F6E00BFED84B01270006F004400650066
      00610075006C00740009706F44656661756C74BFED84B0145000610067006500
      4800650069006700680074000A506167654865696768740500000000000000B0
      0240BFED84B01250006100670065005700690064007400680009506167655769
      6474680500000000000000880240BFED84B01250006100700065007200530069
      007A00650009506170657253697A650201BFED84B01450006100720061006D00
      650074006500720073000A506172616D657465727308BFED84B00000BFED84B0
      0C5000490056006100720073000650495661727308BFED84B00000BFED84B000
      000100BFED84B0165400520061007600650052006500670069006F006E000B54
      52617665526567696F6EBFED84B00E52006500670069006F006E003100075265
      67696F6E3108BFED84B00C480065006900670068007400064865696768740500
      303333333333AB0240BFED84B0084C00650066007400044C656674050000CDCC
      CCCCCCCCFB3FBFED84B00654006F00700003546F70050080CCCCCCCCCCCCFB3F
      BFED84B00A570069006400740068000557696474680500D0CCCCCCCCCC840240
      BFED84B01A43006F006C0075006D006E00530070006100630069006E0067000D
      436F6C756D6E53706163696E670500000000000000000000BFED84B000000200
      BFED84B01254005200610076006500420061006E00640009545261766542616E
      64BFED84B00A420061006E00640031000542616E643108BFED84B00C41006E00
      630068006F00720006416E63686F720103BFED84B012420061006E0064005300
      740079006C0065000942616E645374796C6508BFED84B00000BFED84B00C4800
      65006900670068007400064865696768740500285C8FC2F528DCFF3FBFED84B0
      1A4D0069006E004800650069006700680074004C006500660074000D4D696E48
      65696768744C6566740500000000000000000000BFED84B01A50006F00730069
      00740069006F006E00560061006C00750065000D506F736974696F6E56616C75
      650500000000000000000000BFED84B000000C00BFED84B01C54005200610076
      006500520065006300740061006E0067006C0065000E54526176655265637461
      6E676C65BFED84B014520065006300740061006E0067006C00650031000A5265
      6374616E676C653108BFED84B01642006F007200640065007200570069006400
      740068000B426F726465725769647468050000000000000080FF3FBFED84B012
      460069006C006C005300740079006C0065000946696C6C5374796C6500BFED84
      B00E6600730053006F006C0069006400076673536F6C6964BFED84B00C480065
      00690067006800740006486569676874050010AE47E17A14EEFE3FBFED84B00E
      4800520061006400690075007300074852616469757305000000000000000000
      00BFED84B0084C00650066007400044C6566740500D0CCCCCCCCCCCCFB3FBFED
      84B00654006F00700003546F700500D0CCCCCCCCCCCCFB3FBFED84B00E560052
      006100640069007500730007565261646975730500000000000000000000BFED
      84B00A570069006400740068000557696474680500D047E17A14AEFF0140BFED
      84B000000000BFED84B01A540052006100760065004400610074006100540065
      00780074000D54526176654461746154657874BFED84B0124400610074006100
      540065007800740035000944617461546578743508BFED84B00846006F006E00
      740004466F6E7408BFED84B00E43006800610072007300650074000743686172
      7365740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0
      084E0061006D006500044E616D6506BFED84B00A41007200690061006C000541
      7269616CBFED84B008530069007A0065000453697A65010ABFED84B00A530074
      0079006C006500055374796C6507BFED84B00C6600730042006F006C00640006
      6673426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C6566740500080000000000C00140BFED84B008540065007800740004546578
      7406BFED84B01850006100720061006D002E006E0075006D00650072006F000C
      506172616D2E6E756D65726FBFED84B00654006F00700003546F7005002885EB
      51B81EC5FE3FBFED84B00A570069006400740068000557696474680500805C8F
      C2F528DCFF3FBFED84B01244006100740061004600690065006C006400094461
      74614669656C6406BFED84B01850006100720061006D002E006E0075006D0065
      0072006F000C506172616D2E6E756D65726FBFED84B000000000BFED84B01A54
      005200610076006500440061007400610054006500780074000D545261766544
      61746154657874BFED84B0124400610074006100540065007800740036000944
      617461546578743608BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A650108BFED84B00A5300740079006C006500055374796C
      6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      0500B86666666666D60140BFED84B0085400650078007400045465787406BFED
      84B0245200650070006F00720074002E00430075007200720065006E00740050
      00610067006500125265706F72742E43757272656E7450616765BFED84B00654
      006F00700003546F700500A0999999999999FC3FBFED84B00A57006900640074
      0068000557696474680500C0F5285C8FC2F5FE3FBFED84B01244006100740061
      004600690065006C00640009446174614669656C6406BFED84B0245200650070
      006F00720074002E00430075007200720065006E007400500061006700650012
      5265706F72742E43757272656E7450616765BFED84B000000000BFED84B01254
      005200610076006500540065007800740009545261766554657874BFED84B00A
      5400650078007400320005546578743208BFED84B00846006F006E0074000446
      6F6E7408BFED84B00E4300680061007200730065007400074368617273657401
      01BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061
      006D006500044E616D6506BFED84B00A41007200690061006C0005417269616C
      BFED84B008530069007A0065000453697A650108BFED84B00A5300740079006C
      006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E
      0074004A007500730074006900660079000B466F6E744A75737469667900BFED
      84B00C70006A004C0065006600740006706A4C656674BFED84B0084C00650066
      007400044C6566740500883333333333CB0140BFED84B0085400650078007400
      045465787406BFED84B0085000E10067003A000450E1673ABFED84B00654006F
      00700003546F70050090999999999999FC3FBFED84B00A570069006400740068
      00055769647468050040AE47E17A14AEFD3FBFED84B000000000BFED84B01A54
      005200610076006500440061007400610054006500780074000D545261766544
      61746154657874BFED84B0124400610074006100540065007800740032000944
      617461546578743208BFED84B00846006F006E00740004466F6E7408BFED84B0
      0E430068006100720073006500740007436861727365740101BFED84B00A4300
      6F006C006F00720005436F6C6F720100BFED84B0084E0061006D006500044E61
      6D6506BFED84B00A41007200690061006C0005417269616CBFED84B008530069
      007A0065000453697A650108BFED84B00A5300740079006C006500055374796C
      6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00750073
      0074006900660079000B466F6E744A75737469667900BFED84B00C70006A004C
      0065006600740006706A4C656674BFED84B0084C00650066007400044C656674
      0500D8CCCCCCCCCCCCFC3FBFED84B0085400650078007400045465787406BFED
      84B01450006100720061006D002E0064006100740061000A506172616D2E6461
      7461BFED84B00654006F00700003546F70050010AE47E17A14AEFD3FBFED84B0
      0A570069006400740068000557696474680500000000000000A00140BFED84B0
      1244006100740061004600690065006C00640009446174614669656C6406BFED
      84B01450006100720061006D002E0064006100740061000A506172616D2E6461
      7461BFED84B000000000BFED84B01A5400520061007600650044006100740061
      0054006500780074000D54526176654461746154657874BFED84B01244006100
      74006100540065007800740033000944617461546578743308BFED84B0084600
      6F006E00740004466F6E7408BFED84B00E430068006100720073006500740007
      436861727365740101BFED84B00A43006F006C006F00720005436F6C6F720100
      BFED84B0084E0061006D006500044E616D6506BFED84B00A4100720069006100
      6C0005417269616CBFED84B008530069007A0065000453697A650108BFED84B0
      0A5300740079006C006500055374796C6507BFED84B00000BFED84B00000BFED
      84B01646006F006E0074004A007500730074006900660079000B466F6E744A75
      737469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED
      84B0084C00650066007400044C6566740500D0CCCCCCCCCCCCFC3FBFED84B008
      5400650078007400045465787406BFED84B01C50006100720061006D002E006F
      00700065007200610064006F0072000E506172616D2E6F70657261646F72BFED
      84B00654006F00700003546F70050000000000000080FE3FBFED84B00A570069
      006400740068000557696474680500000000000000A00140BFED84B012440061
      00740061004600690065006C00640009446174614669656C6406BFED84B01C50
      006100720061006D002E006F00700065007200610064006F0072000E50617261
      6D2E6F70657261646F72BFED84B000000000BFED84B01A540052006100760065
      00440061007400610054006500780074000D54526176654461746154657874BF
      ED84B01244006100740061005400650078007400340009446174615465787434
      08BFED84B00846006F006E00740004466F6E7408BFED84B00E43006800610072
      0073006500740007436861727365740101BFED84B00A43006F006C006F007200
      05436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A
      41007200690061006C0005417269616CBFED84B008530069007A006500045369
      7A650108BFED84B00A5300740079006C006500055374796C6507BFED84B00000
      BFED84B00000BFED84B01646006F006E0074004A007500730074006900660079
      000B466F6E744A75737469667900BFED84B00C70006A004C0065006600740006
      706A4C656674BFED84B0084C00650066007400044C6566740500D8CCCCCCCCCC
      CCFC3FBFED84B0085400650078007400045465787406BFED84B01E5000610072
      0061006D002E00640065007300630072006900630061006F000F506172616D2E
      64657363726963616FBFED84B00654006F00700003546F70050080EB51B81E85
      ABFE3FBFED84B00A570069006400740068000557696474680500000000000000
      B00140BFED84B01244006100740061004600690065006C006400094461746146
      69656C6406BFED84B01E50006100720061006D002E0064006500730063007200
      6900630061006F000F506172616D2E64657363726963616FBFED84B000000000
      BFED84B01A54005200610076006500440061007400610054006500780074000D
      54526176654461746154657874BFED84B0144400610074006100540065007800
      7400310033000A4461746154657874313308BFED84B00846006F006E00740004
      466F6E7408BFED84B00E43006800610072007300650074000743686172736574
      0101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B0084E00
      61006D006500044E616D6506BFED84B00A41007200690061006C000541726961
      6CBFED84B008530069007A0065000453697A650108BFED84B00A530074007900
      6C006500055374796C6507BFED84B00000BFED84B00000BFED84B01646006F00
      6E0074004A007500730074006900660079000B466F6E744A75737469667900BF
      ED84B00C70006A004C0065006600740006706A4C656674BFED84B0084C006500
      66007400044C656674050000C9F5285C8FC2FC3FBFED84B00854006500780074
      00045465787406BFED84B01E50006100720061006D002E007000610072006100
      6D006500740072006F000F506172616D2E706172616D6574726FBFED84B00654
      006F00700003546F7005008014AE47E17AD4FE3FBFED84B00A57006900640074
      0068000557696474680500000000000000E00040BFED84B01244006100740061
      004600690065006C00640009446174614669656C6406BFED84B01E5000610072
      0061006D002E0070006100720061006D006500740072006F000F506172616D2E
      706172616D6574726FBFED84B000000000BFED84B01A54005200610076006500
      440061007400610054006500780074000D54526176654461746154657874BFED
      84B0124400610074006100540065007800740031000944617461546578743108
      BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061007200
      73006500740007436861727365740101BFED84B00A43006F006C006F00720005
      436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84B00A41
      007200690061006C0005417269616CBFED84B008530069007A0065000453697A
      65010CBFED84B00A5300740079006C006500055374796C6507BFED84B00C6600
      730042006F006C006400066673426F6C64BFED84B00000BFED84B00000BFED84
      B01646006F006E0074004A007500730074006900660079000B466F6E744A7573
      7469667900BFED84B00C70006A004C0065006600740006706A4C656674BFED84
      B0084C00650066007400044C6566740500D8CCCCCCCCCCCCFC3FBFED84B00854
      00650078007400045465787406BFED84B01A50006100720061006D002E006500
      6D00700072006500730061000D506172616D2E656D7072657361BFED84B00654
      006F00700003546F70050098999999999999FC3FBFED84B00A57006900640074
      0068000557696474680500A09999999999B90140BFED84B01244006100740061
      004600690065006C00640009446174614669656C6406BFED84B01A5000610072
      0061006D002E0065006D00700072006500730061000D506172616D2E656D7072
      657361BFED84B000000000BFED84B01C54005200610076006500520065006300
      740061006E0067006C0065000E545261766552656374616E676C65BFED84B014
      520065006300740061006E0067006C00650032000A52656374616E676C653208
      BFED84B01642006F007200640065007200570069006400740068000B426F7264
      65725769647468050000000000000080FF3FBFED84B012460069006C006C0053
      00740079006C0065000946696C6C5374796C6500BFED84B00E6600730053006F
      006C0069006400076673536F6C6964BFED84B00C480065006900670068007400
      06486569676874050040EB51B81E85EBFC3FBFED84B00E480052006100640069
      007500730007485261646975730500000000000000000000BFED84B0084C0065
      0066007400044C6566740500D0CCCCCCCCCCCCFB3FBFED84B00654006F007000
      03546F700500D0CCCCCCCCCC8CFF3FBFED84B00E560052006100640069007500
      730007565261646975730500000000000000000000BFED84B00A570069006400
      740068000557696474680500D047E17A14AEFF0140BFED84B000000000BFED84
      B01254005200610076006500540065007800740009545261766554657874BFED
      84B00A5400650078007400310005546578743108BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650109BFED84B00A53007400
      79006C006500055374796C6507BFED84B00C6600730042006F006C0064000666
      73426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00
      7500730074006900660079000B466F6E744A75737469667900BFED84B00C7000
      6A004C0065006600740006706A4C656674BFED84B0084C00650066007400044C
      6566740500A09999999999B90040BFED84B00854006500780074000454657874
      06BFED84B0384F0052004500440045004D002000440045002000500052004F00
      44005500C700C3004F0020002800530049004D0050004C004500530029001C4F
      524544454D2044452050524F4455C7C34F202853494D504C455329BFED84B006
      54006F00700003546F700500E851B81E85EB91FF3FBFED84B00A570069006400
      740068000557696474680500606666666666C60040BFED84B000000000BFED84
      B01254005200610076006500540065007800740009545261766554657874BFED
      84B00A5400650078007400330005546578743308BFED84B00846006F006E0074
      0004466F6E7408BFED84B00E4300680061007200730065007400074368617273
      65740101BFED84B00A43006F006C006F00720005436F6C6F720100BFED84B008
      4E0061006D006500044E616D6506BFED84B00A41007200690061006C00054172
      69616CBFED84B008530069007A0065000453697A650109BFED84B00A53007400
      79006C006500055374796C6507BFED84B00C6600730042006F006C0064000666
      73426F6C64BFED84B00000BFED84B00000BFED84B01646006F006E0074004A00
      7500730074006900660079000B466F6E744A75737469667900BFED84B00C7000
      6A004C0065006600740006706A4C656674BFED84B0084C00650066007400044C
      6566740500E0CCCCCCCCCCCCFB3FBFED84B00854006500780074000454657874
      06BFED84B080E05B0020002000200020004300D300440020002000200020005D
      005B002000200049004E00530055004D004F0020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      0020002000200020002000200020002000200020002000200020002000200020
      002000200020002000200020002000200020002000200020002000200020005D
      005B0020002000200020005500540049004C0049005A00410044004F00200020
      00200020005D00705B2020202043D344202020205D5B2020494E53554D4F2020
      2020202020202020202020202020202020202020202020202020202020202020
      2020202020202020202020202020202020202020202020202020202020202020
      202020205D5B202020205554494C495A41444F202020205DBFED84B00654006F
      00700003546F700500080000000000C0FF3FBFED84B00A570069006400740068
      000557696474680500000000000000800240BFED84B000000000BFED84B01A54
      0052006100760065004400610074006100420061006E0064000D545261766544
      61746142616E64BFED84B0124400610074006100420061006E00640031000944
      61746142616E643108BFED84B00C41006E00630068006F00720006416E63686F
      720103BFED84B012420061006E0064005300740079006C0065000942616E6453
      74796C6508BFED84B00000BFED84B00C48006500690067006800740006486569
      676874050000CDCCCCCCCCCCFC3FBFED84B01A4D0069006E0048006500690067
      00680074004C006500660074000D4D696E4865696768744C6566740500000000
      000000000000BFED84B01A50006F0073006900740069006F006E00560061006C
      00750065000D506F736974696F6E56616C75650500000000000000000000BFED
      84B01A43006F006C0075006D006E00530070006100630069006E0067000D436F
      6C756D6E53706163696E670500000000000000000000BFED84B0104400610074
      006100560069006500770008446174615669657700BFED84B012440061007400
      61005600690065007700310009446174615669657731BFED84B000000300BFED
      84B01A54005200610076006500440061007400610054006500780074000D5452
      6176654461746154657874BFED84B01244006100740061005400650078007400
      37000944617461546578743708BFED84B00846006F006E00740004466F6E7408
      BFED84B00E430068006100720073006500740007436861727365740101BFED84
      B00A43006F006C006F00720005436F6C6F720100BFED84B0084E0061006D0065
      00044E616D6506BFED84B00A41007200690061006C0005417269616CBFED84B0
      08530069007A0065000453697A650109BFED84B00A5300740079006C00650005
      5374796C6507BFED84B00000BFED84B00000BFED84B01646006F006E0074004A
      007500730074006900660079000B466F6E744A75737469667900BFED84B00C70
      006A004C0065006600740006706A4C656674BFED84B0084C0065006600740004
      4C6566740500C0CCCCCCCCCCCCFC3FBFED84B008540065007800740004546578
      7406BFED84B00C63006F006400690067006F0006636F6469676FBFED84B00654
      006F00700003546F700500000000000000000000BFED84B00A57006900640074
      006800055769647468050080999999999999FE3FBFED84B01244006100740061
      004600690065006C00640009446174614669656C6406BFED84B00C63006F0064
      00690067006F0006636F6469676FBFED84B01044006100740061005600690065
      00770008446174615669657700BFED84B0124400610074006100560069006500
      7700310009446174615669657731BFED84B000000000BFED84B01A5400520061
      0076006500440061007400610054006500780074000D54526176654461746154
      657874BFED84B012440061007400610054006500780074003800094461746154
      6578743808BFED84B00846006F006E00740004466F6E7408BFED84B00E430068
      006100720073006500740007436861727365740101BFED84B00A43006F006C00
      6F00720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BF
      ED84B00A41007200690061006C0005417269616CBFED84B008530069007A0065
      000453697A650109BFED84B00A5300740079006C006500055374796C6507BFED
      84B00000BFED84B00000BFED84B01646006F006E0074004A0075007300740069
      00660079000B466F6E744A75737469667900BFED84B00C70006A004C00650066
      00740006706A4C656674BFED84B0084C00650066007400044C65667405004066
      66666666E6FE3FBFED84B0085400650078007400045465787406BFED84B00E70
      0072006F006400750074006F000770726F6475746FBFED84B00654006F007000
      03546F700500000000000000000000BFED84B00A570069006400740068000557
      696474680500E0FFFFFFFFFFBF0040BFED84B012440061007400610046006900
      65006C00640009446174614669656C6406BFED84B00E700072006F0064007500
      74006F000770726F6475746FBFED84B010440061007400610056006900650077
      0008446174615669657700BFED84B01244006100740061005600690065007700
      310009446174615669657731BFED84B000000000BFED84B01A54005200610076
      006500440061007400610054006500780074000D545261766544617461546578
      74BFED84B0124400610074006100540065007800740039000944617461546578
      743908BFED84B00846006F006E00740004466F6E7408BFED84B00E4300680061
      00720073006500740007436861727365740101BFED84B00A43006F006C006F00
      720005436F6C6F720100BFED84B0084E0061006D006500044E616D6506BFED84
      B00A41007200690061006C0005417269616CBFED84B008530069007A00650004
      53697A650109BFED84B00A5300740079006C006500055374796C6507BFED84B0
      0000BFED84B00000BFED84B01646006F006E0074004A00750073007400690066
      0079000B466F6E744A75737469667900BFED84B00C70006A004C006500660074
      0006706A4C656674BFED84B0084C00650066007400044C656674050030333333
      3333830140BFED84B0085400650078007400045465787406BFED84B012750074
      0069006C0069007A00610064006F00097574696C697A61646FBFED84B0065400
      6F00700003546F700500000000000000000000BFED84B00A5700690064007400
      68000557696474680500806666666666E6FE3FBFED84B0124400610074006100
      4600690065006C00640009446174614669656C6406BFED84B012750074006900
      6C0069007A00610064006F00097574696C697A61646FBFED84B0104400610074
      006100560069006500770008446174615669657700BFED84B012440061007400
      61005600690065007700310009446174615669657731BFED84B0000000}
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 1020
    Top = 416
  end
end
