object ffechavenda: Tffechavenda
  Left = 0
  Top = 0
  ClientHeight = 403
  ClientWidth = 379
  Caption = 'Fechamento de venda'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 373
    Height = 33
    Hint = ''
    Caption = 'Avan'#231'ar'
    Align = alTop
    TabOrder = 0
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    IconCls = 'action'
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    AlignWithMargins = True
    Left = 3
    Top = 42
    Width = 373
    Height = 32
    Hint = ''
    Caption = 'Inserir forma'
    Align = alTop
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    IconCls = 'add'
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    AlignWithMargins = True
    Left = 3
    Top = 80
    Width = 373
    Height = 36
    Hint = ''
    Caption = 'Limpar parcelas'
    Align = alTop
    TabOrder = 2
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
        '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    IconCls = 'delete'
    OnClick = UniButton3Click
  end
  object UniLabel1: TUniLabel
    Left = 0
    Top = 119
    Width = 113
    Height = 23
    Hint = ''
    Alignment = taCenter
    Caption = 'Total Venda :'
    Align = alTop
    ParentFont = False
    Font.Height = -19
    TabOrder = 3
  end
  object edtrestante: TUniEdit
    Left = 0
    Top = 142
    Width = 379
    Height = 33
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -16
    Align = alTop
    TabOrder = 4
  end
  object UniLabel2: TUniLabel
    Left = 0
    Top = 175
    Width = 86
    Height = 23
    Hint = ''
    Alignment = taCenter
    Caption = 'Restante :'
    Align = alTop
    ParentFont = False
    Font.Height = -19
    TabOrder = 5
  end
  object edttotparcs: TUniEdit
    Left = 0
    Top = 198
    Width = 379
    Height = 33
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -16
    Align = alTop
    TabOrder = 6
  end
  object UniLabel3: TUniLabel
    Left = 0
    Top = 231
    Width = 194
    Height = 23
    Hint = ''
    Alignment = taCenter
    Caption = 'Forma de pagamento :'
    Align = alTop
    ParentFont = False
    Font.Height = -19
    TabOrder = 7
  end
  object UniComboBox1: TUniComboBox
    Left = 0
    Top = 254
    Width = 379
    Height = 27
    Hint = ''
    Text = ''
    Align = alTop
    ParentFont = False
    Font.Height = -16
    TabOrder = 8
    IconItems = <>
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 281
    Width = 379
    Height = 160
    Hint = ''
    DataSource = UniMainModule.dts_parcs
    LoadMask.Message = 'Loading data...'
    Align = alTop
    TabOrder = 9
  end
end
