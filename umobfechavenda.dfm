object fmobfechavenda: Tfmobfechavenda
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 303
  Caption = 'Fechamento de venda'
  OnShow = UnimFormShow
  AutoHeight = False
  Scrollable = True
  TitleButtons = <>
  OnCreate = UnimFormCreate
  OnBeforeShow = UnimFormBeforeShow
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 747
  PlatformData = {}
  object UnimBitBtn1: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 297
    Height = 41
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
  object UnimBitBtn2: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 297
    Height = 47
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    UI = 'action'
    IconCls = 'add'
    Caption = 'Inserir forma'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn2Click
  end
  object UnimBitBtn3: TUnimBitBtn
    AlignWithMargins = True
    Left = 3
    Top = 103
    Width = 297
    Height = 40
    Hint = ''
    Align = alTop
    ClientEvents.Enabled = False
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
        'er.addCls('#39'BotaoVermelho'#39');'#13#10'}')
    UI = 'decline'
    IconCls = 'delete'
    Caption = 'Limpar parcelas'
    Font.Style = [fsBold]
    OnClick = UnimBitBtn3Click
  end
  object UnimLabel2: TUnimLabel
    Left = 0
    Top = 146
    Width = 303
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Total venda R$:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edtrestante: TUnimEdit
    AlignWithMargins = True
    Left = 3
    Top = 172
    Width = 297
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    ParentFont = False
    Font.Style = [fsBold]
    ReadOnly = True
    TabOrder = 5
  end
  object UnimLabel4: TUnimLabel
    Left = 0
    Top = 222
    Width = 303
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Desconto R$:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edtdesconto: TUnimEdit
    AlignWithMargins = True
    Left = 3
    Top = 248
    Width = 297
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    EmptyText = '0'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 11
    InputType = 'number'
    OnExit = edtdescontoExit
  end
  object UnimLabel3: TUnimLabel
    Left = 0
    Top = 298
    Width = 303
    Height = 23
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Restante:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object edttotparcs: TUnimEdit
    AlignWithMargins = True
    Left = 3
    Top = 324
    Width = 297
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    ParentFont = False
    Font.Style = [fsBold]
    ReadOnly = True
    TabOrder = 7
  end
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 374
    Width = 303
    Height = 32
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'Forma de pgto:'
    Align = alTop
    ParentFont = False
    Font.Style = [fsBold]
  end
  object UnimSelect1: TUnimSelect
    AlignWithMargins = True
    Left = 3
    Top = 409
    Width = 297
    Height = 47
    Hint = ''
    Align = alTop
    TabOrder = 2
  end
  object UnimDBGrid1: TUnimDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 462
    Width = 297
    Height = 235
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dts_parcs
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    Font.Name = 'unimdbgrid'
    Font.Style = [fsBold]
    OnClickHold = UnimDBGrid1ClickHold
    Columns = <
      item
        Font.Name = 'unimdbgrid'
        Font.Style = [fsBold]
        Title.Caption = 'Data'
        FieldName = 'Data'
        Width = 98
      end
      item
        Font.Name = 'unimdbgrid'
        Font.Style = [fsBold]
        Title.Caption = 'Vencimento'
        FieldName = 'Vencimento'
        Width = 118
      end
      item
        Font.Name = 'unimdbgrid'
        Font.Style = [fsBold]
        Title.Caption = 'Valor'
        FieldName = 'Valor'
        Width = 120
      end
      item
        Font.Name = 'unimdbgrid'
        Font.Style = [fsBold]
        Title.Caption = 'Parcela'
        FieldName = 'Parcela'
        Width = 124
      end
      item
        Font.Name = 'unimdbgrid'
        Font.Style = [fsBold]
        Title.Caption = 'codformapgto'
        FieldName = 'codformapgto'
        Width = 134
      end
      item
        Font.Name = 'unimdbgrid'
        Font.Style = [fsBold]
        Title.Caption = 'Tipo'
        FieldName = 'Tipo'
        Width = 100
      end>
  end
end
