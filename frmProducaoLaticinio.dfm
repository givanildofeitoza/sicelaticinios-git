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
    object TabSheet2: TTabSheet
      Caption = 'Fluxograma de produ'#231#227'o'
      ImageIndex = 2
      ExplicitLeft = 8
      ExplicitTop = 48
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1269
        Height = 29
        Align = alTop
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = 8
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
          Left = 379
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
        Height = 452
        Align = alTop
        TabOrder = 1
        object DBGrid2: TDBGrid
          Left = 3
          Top = 10
          Width = 357
          Height = 442
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
          Left = 379
          Top = 10
          Width = 890
          Height = 442
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
              Visible = True
            end>
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 481
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
          Caption = 'Requisitar Insumo'
          TabOrder = 0
          OnClick = bitRequisitarClick
        end
      end
    end
  end
  object dsProdutos: TDataSource
    DataSet = _dm2.cdsproducaoitens
    OnDataChange = dsProdutosDataChange
    Left = 28
    Top = 448
  end
  object dsFluxos: TDataSource
    DataSet = _dm2.cdsFulxogramaProducao
    Left = 380
    Top = 440
  end
end
