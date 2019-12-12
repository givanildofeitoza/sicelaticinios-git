object _frmPreencherPadrao: T_frmPreencherPadrao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 469
  ClientWidth = 783
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 44
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 10
      Width = 254
      Height = 23
      Caption = 'Padr'#245'es de preenchimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 44
    Width = 783
    Height = 425
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Padr'#245'es'
      object DBGridpadroes: TDBGrid
        Left = 3
        Top = 0
        Width = 769
        Height = 337
        DataSource = _dm.dSourcePadraoAnalise
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridpadroesDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'frequencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'procedimento'
            Width = 515
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'acaocorretiva'
            Width = 553
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'responsavel'
            Width = 579
            Visible = True
          end>
      end
      object BitBtn3: TBitBtn
        Left = 3
        Top = 351
        Width = 115
        Height = 34
        Caption = 'Incluir'
        TabOrder = 1
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 267
        Top = 351
        Width = 115
        Height = 34
        Caption = 'Excluir'
        TabOrder = 2
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 134
        Top = 351
        Width = 115
        Height = 34
        Caption = 'Alterar'
        TabOrder = 3
        OnClick = BitBtn5Click
      end
      object pnlPadroes: TPanel
        Left = 102
        Top = 24
        Width = 731
        Height = 281
        TabOrder = 4
        Visible = False
        object Label10: TLabel
          Left = 26
          Top = 8
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Label12: TLabel
          Left = 26
          Top = 54
          Width = 57
          Height = 13
          Caption = 'Frequ'#234'ncia:'
        end
        object Label20: TLabel
          Left = 26
          Top = 100
          Width = 65
          Height = 13
          Caption = 'Respons'#225'vel:'
        end
        object Label21: TLabel
          Left = 29
          Top = 146
          Width = 69
          Height = 13
          Caption = 'Procedimento:'
        end
        object Label19: TLabel
          Left = 26
          Top = 192
          Width = 76
          Height = 13
          Caption = 'Ac'#227'o Corretiva:'
        end
        object txtDescricao: TEdit
          Left = 7
          Top = 27
          Width = 700
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object txtFrequencia: TEdit
          Left = 7
          Top = 73
          Width = 700
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object txtRespAnalise: TEdit
          Left = 7
          Top = 119
          Width = 700
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object txtProcedimento: TEdit
          Left = 7
          Top = 165
          Width = 700
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object txtAcaoCorretiva: TEdit
          Left = 7
          Top = 211
          Width = 700
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object BitBtn1: TBitBtn
          Left = 424
          Top = 238
          Width = 105
          Height = 33
          Caption = 'Salvar'
          TabOrder = 5
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 602
          Top = 238
          Width = 105
          Height = 33
          Caption = 'Fechar'
          TabOrder = 6
          OnClick = BitBtn2Click
        end
      end
      object BitBtn6: TBitBtn
        Left = 632
        Top = 352
        Width = 129
        Height = 33
        Caption = 'Selecionar'
        TabOrder = 5
        OnClick = BitBtn6Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Novo padr'#227'o'
      ImageIndex = 1
    end
  end
end
