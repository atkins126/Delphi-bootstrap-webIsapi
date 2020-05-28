object fmobclientes: Tfmobclientes
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Clientes'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 0
    Width = 320
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Nome:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edtnome: TUnimEdit
    Left = 0
    Top = 23
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    ParentFont = False
    TabOrder = 1
    OnChange = edtnomeChange
  end
  object UnimBitBtn1: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 73
    Width = 314
    Height = 47
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    UI = 'confirm'
    IconCls = 'add'
    Caption = 'Cadastrar'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn1Click
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 123
    Width = 320
    Height = 357
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dtscliente
    WebOptions.Paged = False
    Columns = <
      item
        Title.Caption = 'CODIGO'
        FieldName = 'CODIGO'
        Width = 114
      end
      item
        Title.Caption = 'NOME'
        FieldName = 'NOME'
        Width = 200
      end
      item
        Title.Caption = 'CPF'
        FieldName = 'CPF'
        Width = 100
      end
      item
        Title.Caption = 'RG'
        FieldName = 'RG'
        Width = 100
      end
      item
        Title.Caption = 'CIDADE'
        FieldName = 'CIDADE'
        Width = 200
        ReadOnly = True
      end>
  end
end
