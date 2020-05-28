object fmobcadcliente: Tfmobcadcliente
  Left = 0
  Top = 0
  ClientHeight = 433
  ClientWidth = 320
  Caption = 'Cadastro de cliente'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimBitBtn1: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 47
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    UI = 'confirm'
    IconCls = 'action'
    Caption = 'Salvar'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn1Click
  end
  object UnimTabPanel1: TUnimTabPanel
    Left = 0
    Top = 53
    Width = 320
    Height = 380
    Hint = ''
    ActivePage = UnimTabSheet1
    Align = alClient
    object UnimTabSheet1: TUnimTabSheet
      Left = 4
      Top = 51
      Width = 312
      Height = 325
      Hint = ''
      Caption = 'Dados pessoais'
      object UnimLabel1: TUnimLabel
        Left = 0
        Top = 0
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'Nome:'
        Align = alTop
        ParentFont = False
        Font.Height = -13
      end
      object edtnome: TUnimEdit
        Left = 0
        Top = 34
        Width = 312
        Height = 47
        Hint = ''
        Align = alTop
        Text = ''
        CharCase = ecUpperCase
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object UnimLabel2: TUnimLabel
        Left = 0
        Top = 81
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'CPF:'
        Align = alTop
        ParentFont = False
        Font.Height = -13
      end
      object UnimLabel3: TUnimLabel
        Left = 0
        Top = 162
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'RG:'
        Align = alTop
        ParentFont = False
        Font.Height = -13
      end
      object edtrg: TUnimNumberEdit
        Left = 0
        Top = 196
        Width = 312
        Height = 47
        Hint = 'Somente numeros'
        ShowHint = True
        ParentShowHint = False
        Align = alTop
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 4
      end
      object edtcpf: TUnimEdit
        Left = 0
        Top = 115
        Width = 312
        Height = 47
        Hint = 'Somente numeros'
        ShowHint = True
        ParentShowHint = False
        Align = alTop
        Text = ''
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 5
      end
    end
    object UnimTabSheet2: TUnimTabSheet
      Left = 4
      Top = 51
      Width = 312
      Height = 325
      Hint = ''
      Caption = 'Complemento'
      object UnimLabel4: TUnimLabel
        Left = 0
        Top = 0
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'Endereco:'
        Align = alTop
        ParentFont = False
        Font.Height = -15
      end
      object edtendereco: TUnimEdit
        Left = 0
        Top = 34
        Width = 312
        Height = 47
        Hint = ''
        Align = alTop
        Text = ''
        CharCase = ecUpperCase
        ParentFont = False
        Font.Height = -15
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object UnimLabel5: TUnimLabel
        Left = 0
        Top = 162
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'Cidade:'
        Align = alTop
        ParentFont = False
        Font.Height = -15
      end
      object edtbairro: TUnimEdit
        Left = 0
        Top = 115
        Width = 312
        Height = 47
        Hint = ''
        Align = alTop
        Text = ''
        CharCase = ecUpperCase
        ParentFont = False
        Font.Height = -15
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object UnimLabel6: TUnimLabel
        Left = 0
        Top = 81
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'Bairro:'
        Align = alTop
        ParentFont = False
        Font.Height = -15
      end
      object UnimDBGrid1: TUnimDBGrid
        Left = 0
        Top = 243
        Width = 312
        Height = 82
        Hint = ''
        Align = alClient
        DataSource = UniMainModule.dtscidades
        WebOptions.Paged = False
        Columns = <
          item
            Title.Caption = 'CODIGO'
            FieldName = 'CODIGO'
            Visible = False
            Width = 114
          end
          item
            Title.Caption = 'NOME'
            FieldName = 'NOME'
            Width = 200
          end
          item
            Title.Caption = 'UF'
            FieldName = 'UF'
            Width = 69
          end
          item
            Title.Caption = 'CODMUN_IBGE'
            FieldName = 'CODMUN_IBGE'
            Visible = False
            Width = 148
          end
          item
            Title.Caption = 'COD_PAIS'
            FieldName = 'COD_PAIS'
            Visible = False
            Width = 114
          end>
      end
      object edtcidade: TUnimEdit
        Left = 0
        Top = 196
        Width = 312
        Height = 47
        Hint = ''
        Align = alTop
        Text = ''
        CharCase = ecUpperCase
        ParentFont = False
        Font.Height = -15
        Font.Style = [fsBold]
        TabOrder = 6
        OnChange = edtcidadeChange
      end
    end
    object UnimTabSheet3: TUnimTabSheet
      Left = 4
      Top = 51
      Width = 312
      Height = 325
      Hint = ''
      Caption = 'Dados adic'
      object UnimLabel7: TUnimLabel
        Left = 0
        Top = 0
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'Cep:'
        Align = alTop
        ParentFont = False
        Font.Height = -13
      end
      object edtcep: TUnimEdit
        Left = 0
        Top = 34
        Width = 312
        Height = 47
        Hint = ''
        Align = alTop
        Text = ''
        ParentFont = False
        Font.Height = -15
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object UnimLabel8: TUnimLabel
        Left = 0
        Top = 81
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'Tel:'
        Align = alTop
        ParentFont = False
        Font.Height = -13
      end
      object edttelefone: TUnimEdit
        Left = 0
        Top = 115
        Width = 312
        Height = 47
        Hint = ''
        Align = alTop
        Text = ''
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 3
      end
      object UnimLabel9: TUnimLabel
        Left = 0
        Top = 162
        Width = 312
        Height = 34
        Hint = ''
        AutoSize = False
        Caption = 'Nascimento'
        Align = alTop
        ParentFont = False
        Font.Height = -13
      end
      object edtdatanascimento: TUnimDatePicker
        Left = 0
        Top = 196
        Width = 312
        Height = 47
        Hint = ''
        Align = alTop
        DateFormat = 'dd/MM/yyyy'
        Date = 290.000000000000000000
        MinYear = 1900
        Font.Height = -11
        Font.Style = [fsBold]
      end
    end
  end
end
