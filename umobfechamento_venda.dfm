object fmobfechamento_venda: Tfmobfechamento_venda
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Fechamento de venda'
  OnShow = UnimFormShow
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
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    UI = 'confirm'
    IconCls = 'action'
    Caption = 'Transmitir Venda'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn1Click
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 53
    Width = 320
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Total Bruto:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edttotbruto: TUnimNumberEdit
    Left = 0
    Top = 76
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    ReadOnly = True
    TabOrder = 2
  end
  object UnimLabel2: TUnimLabel
    Left = 0
    Top = 123
    Width = 320
    Height = 23
    Hint = ''
    Visible = False
    Alignment = taCenter
    AutoSize = False
    Caption = 'Desconto %:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edtdescperc: TUnimNumberEdit
    Left = 0
    Top = 146
    Width = 320
    Height = 47
    Hint = ''
    Visible = False
    Align = alTop
    ReadOnly = True
    TabOrder = 4
    OnExit = edtdescpercExit
  end
  object UnimLabel3: TUnimLabel
    Left = 0
    Top = 193
    Width = 320
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Desconto R$:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edtdescrvlr: TUnimNumberEdit
    Left = 0
    Top = 216
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    ReadOnly = True
    TabOrder = 6
    OnChange = edtdescrvlrChange
  end
  object UnimLabel4: TUnimLabel
    Left = 0
    Top = 263
    Width = 320
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Total Liquido:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edttotliquido: TUnimNumberEdit
    Left = 0
    Top = 286
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    ReadOnly = True
    TabOrder = 8
  end
end
