object ffechamento_venda: Tffechamento_venda
  Left = 0
  Top = 0
  ClientHeight = 382
  ClientWidth = 299
  Caption = 'Fechamento de venda'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 293
    Height = 41
    Hint = ''
    Caption = 'Transmitir Venda'
    Align = alTop
    TabOrder = 0
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    IconCls = 'refresh'
    OnClick = UniButton1Click
  end
  object edttotbruto: TUniNumberEdit
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 293
    Height = 48
    Hint = ''
    ParentFont = False
    Font.Height = -21
    Align = alTop
    TabOrder = 1
    ReadOnly = True
    DecimalSeparator = ','
  end
  object edtdescrvlr: TUnimNumberEdit
    Left = 0
    Top = 159
    Width = 299
    Height = 47
    Hint = ''
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -21
    ExplicitTop = 216
    ExplicitWidth = 320
  end
  object UnimLabel3: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 293
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Total bruto:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
    ExplicitLeft = 8
    ExplicitTop = 38
  end
  object UnimLabel4: TUnimLabel
    Left = 0
    Top = 206
    Width = 299
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Total Liquido:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
    ExplicitLeft = -21
    ExplicitTop = 263
    ExplicitWidth = 320
  end
  object edttotliquido: TUnimNumberEdit
    Left = 0
    Top = 229
    Width = 299
    Height = 47
    Hint = ''
    Align = alTop
    ReadOnly = True
    TabOrder = 5
    ExplicitLeft = -21
    ExplicitTop = 286
    ExplicitWidth = 320
  end
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 133
    Width = 293
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Desconto R$:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
    ExplicitLeft = -21
    ExplicitTop = 193
    ExplicitWidth = 320
  end
end
