object fconsprodvenda: Tfconsprodvenda
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'Produtos'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 0
    Width = 360
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Nome:'
    Align = alTop
    ParentFont = False
  end
  object edtnome: TUnimEdit
    Left = 0
    Top = 23
    Width = 360
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    ParentFont = False
    TabOrder = 1
    OnChange = edtnomeChange
  end
  object UnimLabel2: TUnimLabel
    Left = 0
    Top = 70
    Width = 360
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Quantidade:'
    Align = alTop
    ParentFont = False
  end
  object edtqtd: TUnimEdit
    Left = 0
    Top = 93
    Width = 360
    Height = 47
    Hint = ''
    Align = alTop
    Text = '1'
    ParentFont = False
    TabOrder = 3
  end
  object btnconfirmar: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 143
    Width = 354
    Height = 47
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    UI = 'action'
    IconCls = 'action'
    Caption = 'Inserir'
    Font.Style = [fsBold]
    OnClick = btnconfirmarClick
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 193
    Width = 360
    Height = 400
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dtsprod
    WebOptions.Paged = False
    Striped = False
    OnClickHold = UnimDBGrid1ClickHold
    Columns = <
      item
        Title.Caption = 'CODIGO'
        FieldName = 'CODIGO'
        Width = 100
      end
      item
        Title.Caption = 'NOME'
        FieldName = 'NOME'
        Width = 200
        ReadOnly = True
      end
      item
        Title.Caption = 'VENDA'
        FieldName = 'VENDA'
        Width = 100
      end
      item
        Title.Caption = 'CODIGO_BARRA'
        FieldName = 'CODIGO_BARRA'
        Width = 100
      end
      item
        Title.Caption = 'MARCA'
        FieldName = 'MARCA'
        Width = 50
        ReadOnly = True
      end
      item
        Title.Caption = 'UND'
        FieldName = 'UND'
        Width = 50
        ReadOnly = True
      end
      item
        Title.Caption = 'ESTOQUE'
        FieldName = 'ESTOQUE'
        Width = 213
        ReadOnly = True
      end>
  end
  object UnimImage1: TUnimImage
    Left = 24
    Top = 280
    Width = 128
    Height = 128
    Hint = ''
    Visible = False
    Url = 'http://advsysautomacao.net/imgblends/2951870000015417274.jpg'
  end
end
