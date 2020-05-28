object fdetprod: Tfdetprod
  Left = 0
  Top = 0
  ClientHeight = 369
  ClientWidth = 722
  Caption = 'Detalhes do produto'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniImage1: TUniImage
    Left = 425
    Top = 0
    Width = 296
    Height = 369
    Hint = ''
    Align = alLeft
  end
  object UniSimplePanel1: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 425
    Height = 369
    Hint = ''
    ParentColor = False
    Align = alLeft
    TabOrder = 1
    object labelnome: TUniLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 48
      Height = 13
      Hint = ''
      Caption = 'labelnome'
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 8
      ExplicitTop = 40
      ExplicitWidth = 46
    end
    object UniEdit1: TUniEdit
      AlignWithMargins = True
      Left = 3
      Top = 22
      Width = 419
      Hint = ''
      Alignment = taCenter
      Text = 'UniEdit1'
      Align = alTop
      TabOrder = 2
      ReadOnly = True
      ExplicitLeft = 16
      ExplicitTop = 56
      ExplicitWidth = 121
    end
  end
end
