object fconscliente: Tfconscliente
  Left = 0
  Top = 0
  ClientHeight = 431
  ClientWidth = 683
  Caption = 'Consulta Cliente'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Font.Style = [fsBold]
  PixelsPerInch = 96
  TextHeight = 13
  object UniSimplePanel1: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 683
    Height = 73
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 422
      Top = 3
      Width = 129
      Height = 67
      Hint = ''
      Caption = 'Pesquisar'
      Align = alRight
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
      OnClick = UniButton1Click
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 73
    end
    object edt_cliente: TUniEdit
      Left = 16
      Top = 32
      Width = 369
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 2
    end
    object UniLabel1: TUniLabel
      Left = 16
      Top = 13
      Width = 35
      Height = 13
      Hint = ''
      Caption = 'Nome:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 3
    end
    object UniButton2: TUniButton
      AlignWithMargins = True
      Left = 557
      Top = 3
      Width = 123
      Height = 67
      Hint = ''
      Caption = 'Confirmar'
      Align = alRight
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 4
      OnClick = UniButton2Click
      ExplicitLeft = 560
      ExplicitTop = 0
      ExplicitHeight = 73
    end
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 73
    Width = 683
    Height = 358
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dtscliente
  end
end
