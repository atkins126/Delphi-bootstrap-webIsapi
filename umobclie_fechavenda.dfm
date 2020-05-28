object fmobcli_fechavenda: Tfmobcli_fechavenda
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Selecione o cliente'
  OnShow = UnimFormShow
  TitleButtons = <>
  ShowAnimation = 'fade'
  HideAnimation = 'fadeOut'
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
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    UI = 'confirm'
    IconCls = 'action'
    Caption = 'Avancar'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn1Click
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 53
    Width = 320
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Cliente:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edtcliente: TUnimEdit
    Left = 0
    Top = 76
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    ParentFont = False
    TabOrder = 3
    OnChange = edtclienteChange
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
  end
end
