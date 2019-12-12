object _frmDesnate: T_frmDesnate
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 407
  ClientWidth = 668
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
    Width = 668
    Height = 49
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 659
    object Label40: TLabel
      Left = 23
      Top = 10
      Width = 154
      Height = 23
      Caption = 'Desnate de leite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 119
    Width = 643
    Height = 234
    TabOrder = 1
    object Label1: TLabel
      Left = 15
      Top = 88
      Width = 140
      Height = 13
      Caption = 'Leite destinado para desnate'
    end
    object Label2: TLabel
      Left = 15
      Top = 147
      Width = 81
      Height = 13
      Caption = 'Creme produzido'
    end
    object Label3: TLabel
      Left = 15
      Top = 16
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label4: TLabel
      Left = 192
      Top = 147
      Width = 80
      Height = 13
      Caption = 'Saldo desnatado'
    end
    object Label5: TLabel
      Left = 192
      Top = 18
      Width = 82
      Height = 13
      Caption = 'Leite em estoque'
    end
    object Label7: TLabel
      Left = 192
      Top = 88
      Width = 39
      Height = 13
      Caption = 'Gordura'
    end
    object txtleitedestinado: TCurrencyEdit
      Left = 15
      Top = 110
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-,0.00'
      TabOrder = 0
    end
    object txtcremeproduzido: TCurrencyEdit
      Left = 15
      Top = 169
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-,0.00'
      TabOrder = 1
    end
    object txtdata: TDateEdit
      Left = 15
      Top = 35
      Width = 121
      Height = 21
      Enabled = False
      NumGlyphs = 2
      TabOrder = 2
    end
    object txtleitedesnatado: TCurrencyEdit
      Left = 192
      Top = 169
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-,0.00'
      TabOrder = 3
    end
    object txtsaldoanterior: TCurrencyEdit
      Left = 192
      Top = 35
      Width = 121
      Height = 24
      Margins.Left = 1
      Margins.Top = 1
      DisplayFormat = '0.00;-,0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object txtgordura: TCurrencyEdit
      Left = 192
      Top = 114
      Width = 121
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DisplayFormat = '0.00;-,0.00'
      TabOrder = 5
    end
    object pnlabrir: TPanel
      Left = 569
      Top = -18
      Width = 434
      Height = 273
      TabOrder = 6
      Visible = False
      object Label8: TLabel
        Left = 147
        Top = 61
        Width = 16
        Height = 13
        Caption = 'Fim'
      end
      object Label9: TLabel
        Left = 16
        Top = 63
        Width = 25
        Height = 13
        Caption = 'Inicio'
      end
      object Label10: TLabel
        Left = 16
        Top = 37
        Width = 99
        Height = 13
        Caption = 'DATA DE ABERTURA'
      end
      object data1: TDateEdit
        Left = 16
        Top = 80
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object data2: TDateEdit
        Left = 147
        Top = 80
        Width = 121
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
      object DBGrid1: TDBGrid
        Left = 16
        Top = 107
        Width = 401
        Height = 120
        DataSource = _dm2.dSourceDesnate
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataabertura'
            Title.Caption = 'Abertura'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'encerrada'
            Title.Caption = 'Encerrada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'saldoleiteanterior'
            Title.Caption = 'Saldo anterior de leite'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'leitedestinado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'saldodesnatado'
            Title.Caption = 'Destinado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cremeobtido'
            Title.Caption = 'Creme Obtido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gordura'
            Title.Caption = 'Teor de gordura'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigofilial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataencerramento'
            Title.Caption = 'Encerramento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'operador'
            Visible = True
          end>
      end
      object BitBtn4: TBitBtn
        Left = 274
        Top = 76
        Width = 63
        Height = 25
        Caption = 'Buscar'
        TabOrder = 3
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 16
        Top = 233
        Width = 75
        Height = 25
        Caption = 'Abrir'
        TabOrder = 4
        OnClick = BitBtn5Click
      end
      object BitBtn1: TBitBtn
        Left = 344
        Top = 233
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 5
        OnClick = BitBtn1Click
      end
    end
  end
  object btnencerrar: TBitBtn
    Left = 8
    Top = 359
    Width = 96
    Height = 31
    Caption = 'Encerrar'
    TabOrder = 2
    OnClick = btnencerrarClick
  end
  object Panel2: TPanel
    Left = 8
    Top = 55
    Width = 643
    Height = 58
    TabOrder = 3
    object Label6: TLabel
      Left = 216
      Top = 24
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object lblstatus: TLabel
      Left = 384
      Top = 24
      Width = 37
      Height = 14
      Caption = 'Aberta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object BitBtn2: TBitBtn
      Left = 15
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Criar'
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object txtnumero: TEdit
      Left = 263
      Top = 19
      Width = 106
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '0'
    end
    object BitBtn3: TBitBtn
      Left = 111
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Abrir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
end
