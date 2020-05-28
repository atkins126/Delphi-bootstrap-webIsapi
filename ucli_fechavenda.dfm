object fcli_fechavenda: Tfcli_fechavenda
  Left = 0
  Top = 0
  ClientHeight = 370
  ClientWidth = 736
  Caption = 'Clientes:'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniSimplePanel1: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 736
    Height = 65
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 548
    object edtnome: TUniEdit
      Left = 16
      Top = 32
      Width = 401
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 1
      OnChange = edtnomeChange
    end
    object UniLabel1: TUniLabel
      Left = 16
      Top = 13
      Width = 37
      Height = 13
      Hint = ''
      Caption = 'Cliente:'
      TabOrder = 2
    end
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 617
      Top = 3
      Width = 116
      Height = 59
      Hint = ''
      Caption = 'Avan'#231'ar'
      Align = alRight
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
      IconCls = 'action'
      OnClick = UniButton1Click
      ExplicitLeft = 620
      ExplicitTop = -6
      ExplicitHeight = 65
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 65
    Width = 736
    Height = 305
    Hint = ''
    DataSource = UniMainModule.dtscliente
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
  end
end
