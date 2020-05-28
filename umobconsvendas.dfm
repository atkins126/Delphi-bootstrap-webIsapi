object fmobconsvendas: Tfmobconsvendas
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Consulta de Vendas'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Data inicial:'
    Align = alTop
    ParentFont = False
    Font.Height = -11
    Font.Style = [fsBold]
  end
  object UnimDatePicker1: TUnimDatePicker
    AlignWithMargins = True
    Left = 3
    Top = 32
    Width = 314
    Height = 37
    Hint = ''
    Align = alTop
    DateFormat = 'dd/MM/yyyy'
    Date = 43717.000000000000000000
    Font.Height = -11
    Font.Style = [fsBold]
  end
  object UnimLabel2: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 75
    Width = 314
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Data final:'
    Align = alTop
    ParentFont = False
    Font.Height = -11
    Font.Style = [fsBold]
  end
  object UnimDatePicker2: TUnimDatePicker
    AlignWithMargins = True
    Left = 3
    Top = 104
    Width = 314
    Height = 35
    Hint = ''
    Align = alTop
    DateFormat = 'dd/MM/yyyy'
    Date = 43717.000000000000000000
    Font.Height = -11
    Font.Style = [fsBold]
  end
  object UnimRadio1: TUnimRadio
    AlignWithMargins = True
    Left = 3
    Top = 145
    Width = 314
    Height = 30
    Hint = ''
    FieldLabel = 'Pendentes'
    Align = alTop
    Checked = True
    OnAjaxEvent = UnimRadio1AjaxEvent
  end
  object UnimRadio2: TUnimRadio
    AlignWithMargins = True
    Left = 3
    Top = 181
    Width = 314
    Height = 29
    Hint = ''
    FieldLabel = 'Aceitas'
    Align = alTop
    OnAjaxEvent = UnimRadio2AjaxEvent
  end
  object UnimBitBtn1: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 216
    Width = 314
    Height = 34
    Hint = ''
    Align = alTop
    UI = 'action'
    IconCls = 'search'
    Caption = 'Consultar'
    Font.Height = -16
    Font.Style = [fsBold]
    OnClick = UnimBitBtn1Click
  end
  object UnimBitBtn2: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 256
    Width = 314
    Height = 34
    Hint = ''
    Align = alTop
    UI = 'confirm'
    IconCls = 'favorites'
    Caption = 'Ver itens'
    Font.Height = -16
    Font.Style = [fsBold]
    OnClick = UnimBitBtn2Click
  end
  object UnimDBGrid2: TUnimDBGrid
    Left = 0
    Top = 293
    Width = 320
    Height = 187
    Hint = ''
    Visible = False
    Align = alClient
    DataSource = UniMainModule.dtsitensvenda
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 293
    Width = 320
    Height = 187
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dtsconsvenda
  end
end
