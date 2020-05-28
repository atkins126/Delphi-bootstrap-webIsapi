object fmobvenda: Tfmobvenda
  Left = 0
  Top = 0
  ClientHeight = 353
  ClientWidth = 240
  Caption = 'Nova venda'
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
    Width = 234
    Height = 47
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoAzul'#39');'#13#10'}')
    UI = 'action'
    IconCls = 'add'
    Caption = 'Inserir produto'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn1Click
    ExplicitLeft = -2
  end
  object UnimBitBtn3: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 56
    Width = 234
    Height = 47
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    UI = 'decline'
    IconCls = 'delete'
    Caption = 'Excluir'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn3Click
  end
  object UnimBitBtn2: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 109
    Width = 234
    Height = 47
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVerde'#39');'#13#10'}')
    UI = 'confirm'
    IconCls = 'arrow_right'
    Caption = 'Avan'#231'ar'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn2Click
    ExplicitLeft = 8
  end
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 162
    Width = 234
    Height = 25
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Total R$:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edttotalvenda: TUnimLabel
    Left = 0
    Top = 190
    Width = 240
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = ''
    Align = alTop
    ParentFont = False
    Font.Color = clRed
    Font.Style = [fsBold]
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 213
    Width = 240
    Height = 140
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dtsprodvenda
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
    OnDblClick = UnimDBGrid1DblClick
    Columns = <
      item
        Title.Caption = 'Codigo'
        FieldName = 'Codigo'
        Width = 80
      end
      item
        Title.Caption = 'Nome'
        FieldName = 'Nome'
        Width = 100
      end
      item
        Title.Caption = 'Venda'
        FieldName = 'Venda'
        Width = 114
      end
      item
        Title.Caption = 'Quantidade'
        FieldName = 'Quantidade'
        Width = 114
      end
      item
        Title.Caption = 'Total'
        FieldName = 'Total'
        Width = 114
        ReadOnly = True
      end>
  end
end
