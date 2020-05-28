object fmobdetprod: Tfmobdetprod
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Detalhes do produto'
  OnShow = UnimFormShow
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimImage1: TUnimImage
    Left = 0
    Top = 0
    Width = 320
    Height = 227
    Hint = ''
    Align = alTop
    Stretch = True
  end
  object edtnome: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 230
    Width = 314
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = ''
    Align = alTop
    ParentFont = False
    Font.Color = clBlue
    Font.Height = -16
  end
  object edtvalor: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 259
    Width = 314
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = ''
    Align = alTop
    ParentFont = False
    Font.Color = clGreen
    Font.Style = [fsBold]
  end
end
