object fmobfechamento: Tfmobfechamento
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
    UI = 'confirm'
    IconCls = 'action'
    Caption = 'Fechar Venda'
    Font.Style = [fsBold]
    ExplicitLeft = -16
    ExplicitTop = -8
    ExplicitWidth = 320
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 53
    Width = 320
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Total Bruto:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
    ExplicitLeft = 16
    ExplicitTop = 56
    ExplicitWidth = 225
  end
  object edttotbruto: TUnimNumberEdit
    Left = 0
    Top = 76
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    TabOrder = 7
    ExplicitTop = 56
  end
  object UnimLabel2: TUnimLabel
    Left = 0
    Top = 123
    Width = 320
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Desconto %:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
    ExplicitLeft = 8
    ExplicitTop = 80
    ExplicitWidth = 225
  end
  object edtdescperc: TUnimNumberEdit
    Left = 0
    Top = 146
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    TabOrder = 5
    OnChange = edtdescpercChange
    ExplicitLeft = 8
    ExplicitTop = 129
  end
  object UnimLabel3: TUnimLabel
    Left = 0
    Top = 193
    Width = 320
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Desconto R$:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
    ExplicitTop = 144
    ExplicitWidth = 225
  end
  object edtdescrvlr: TUnimNumberEdit
    Left = 0
    Top = 216
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    TabOrder = 6
    OnChange = edtdescrvlrChange
  end
  object UnimLabel4: TUnimLabel
    Left = 0
    Top = 263
    Width = 320
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Total Liquido:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
    ExplicitTop = 224
    ExplicitWidth = 225
  end
  object edttotliquido: TUnimNumberEdit
    Left = 0
    Top = 286
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    TabOrder = 8
    ExplicitLeft = 8
    ExplicitTop = 296
    ExplicitWidth = 225
  end
end
