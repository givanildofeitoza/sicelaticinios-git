object _frmRelColeta: T_frmRelColeta
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 612
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 29
    Top = 498
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object Label3: TLabel
    Left = 189
    Top = 497
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object Bevel1: TBevel
    Left = 24
    Top = 440
    Width = 935
    Height = 3
  end
  object Label4: TLabel
    Left = 333
    Top = 500
    Width = 20
    Height = 13
    Caption = 'Filial'
  end
  object Label5: TLabel
    Left = 24
    Top = 541
    Width = 59
    Height = 13
    Caption = 'Fornecedor:'
  end
  object Label6: TLabel
    Left = 683
    Top = 449
    Width = 98
    Height = 16
    Caption = 'Total Coletado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 49
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 13
      Width = 164
      Height = 19
      Caption = 'Relat'#243'rio de coletas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object rgtipodata: TRadioGroup
    Left = 24
    Top = 449
    Width = 486
    Height = 42
    Caption = 'Data'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Data Confirma'#231#227'o'
      'Data Coleta')
    TabOrder = 1
  end
  object data1: TDateEdit
    Left = 24
    Top = 517
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 2
  end
  object data2: TDateEdit
    Left = 189
    Top = 517
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 715
    Top = 558
    Width = 113
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 854
    Top = 558
    Width = 107
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object cboFilial: TComboBox
    Left = 329
    Top = 517
    Width = 219
    Height = 21
    TabOrder = 6
    Text = '00001'
  end
  object txtFornecedor: TEdit
    Left = 89
    Top = 560
    Width = 256
    Height = 21
    ReadOnly = True
    TabOrder = 7
  end
  object BitBtn3: TBitBtn
    Left = 351
    Top = 558
    Width = 50
    Height = 25
    Caption = '...'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object txtCodFor: TEdit
    Left = 24
    Top = 560
    Width = 59
    Height = 21
    ReadOnly = True
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 55
    Width = 971
    Height = 379
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'numero'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fornecedor'
        Title.Caption = 'Fornecedor'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Caption = 'Total'
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'totalcusto'
        Title.Caption = 'Custo Total'
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datacoleta'
        Title.Caption = 'Data da Coleta'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataconfirmacao'
        Title.Caption = 'Data de Confirma'#231#227'o'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'confirmada'
        Title.Caption = 'Confirmada'
        Visible = True
      end>
  end
  object BitBtn4: TBitBtn
    Left = 448
    Top = 558
    Width = 100
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 11
    OnClick = BitBtn4Click
  end
  object txtcoletado: TCurrencyEdit
    Left = 800
    Top = 447
    Width = 161
    Height = 24
    Margins.Left = 1
    Margins.Top = 1
    DisplayFormat = '0.00;-0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
  end
  object impRelColeta: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    OpcoesPreview.BotaoPDF = Ativo
    OpcoesPreview.BotaoEMAIL = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'IQ SISTEMAS'
    RegistroUsuario.SerieProduto = 'SINGLE-1113/00856'
    RegistroUsuario.AutorizacaoKey = '44HB-2122-EV53-WWDA-RG43'
    About = 'RDprint 5.0 - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERIC=EPSON'
      'TEXT=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnBeforeNewPage = impRelColetaBeforeNewPage
    Left = 408
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 672
    Top = 320
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 568
    Top = 328
    object ClientDataSet1fornecedor: TWideStringField
      FieldName = 'fornecedor'
      Size = 60
    end
    object ClientDataSet1total: TFMTBCDField
      FieldName = 'total'
      Precision = 32
      Size = 2
    end
    object ClientDataSet1totalcusto: TFMTBCDField
      FieldName = 'totalcusto'
      Precision = 32
      Size = 4
    end
    object ClientDataSet1datacoleta: TDateField
      FieldName = 'datacoleta'
    end
    object ClientDataSet1dataconfirmacao: TDateField
      FieldName = 'dataconfirmacao'
    end
    object ClientDataSet1confirmada: TWideStringField
      FieldName = 'confirmada'
      Size = 1
    end
    object ClientDataSet1numero: TWideStringField
      FieldName = 'numero'
      Size = 10
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'SELECT c.numero,c.fornecedor, SUM(c.totalcoletado) AS total,SUM(' +
      'c.totalcoletado * c.custo) AS totalcusto, mc.datacoleta, mc.data' +
      'confirmacao,mc.confirmada FROM coleta AS c, movcoleta AS mc'#13#10'lim' +
      'it 1;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = _dm.ConnecDm
    Left = 240
    Top = 328
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 376
    Top = 320
  end
end
