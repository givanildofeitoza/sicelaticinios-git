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
        object BitBtn4: TBitBtn
          Left = 788
          Top = 0
          Width = 101
          Height = 26
          Caption = 'Imprimir'
          TabOrder = 3
          Visible = False
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
        Left = 782
        Top = 147
        Width = 650
        Height = 326
        TabOrder = 5
        Visible = False
        object Panel19: TPanel
          Left = 1
          Top = 1
          Width = 648
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
          Left = 24
          Top = 80
          Width = 609
          Height = 193
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
            Top = 44
            Width = 593
            Height = 135
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
          Left = 16
          Top = 279
          Width = 97
          Height = 33
          Caption = 'Abrir'
          Enabled = False
          TabOrder = 4
          OnClick = btnabrirClick
        end
        object BitBtn6: TBitBtn
          Left = 384
          Top = 279
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
          Left = 39
          Top = 31
          Width = 95
          Height = 13
          Caption = 'Entrada/Saldo atual'
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
        object BitBtn13: TBitBtn
          Left = 2
          Top = 46
          Width = 47
          Height = 25
          Caption = '...'
          TabOrder = 9
          OnClick = BitBtn13Click
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
        Left = 882
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
  end
end
