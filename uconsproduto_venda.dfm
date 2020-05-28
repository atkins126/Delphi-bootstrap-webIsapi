object fconsproduto_venda: Tfconsproduto_venda
  Left = 0
  Top = 0
  ClientHeight = 351
  ClientWidth = 738
  Caption = 'Produtos'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniSimplePanel1: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 738
    Height = 49
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    object edtqtd: TUniNumberEdit
      Left = 399
      Top = 0
      Width = 121
      Height = 49
      Hint = ''
      ParentFont = False
      Font.Height = -21
      Align = alRight
      TabOrder = 1
      Value = 1.000000000000000000
      DecimalSeparator = ','
    end
    object UniLabel1: TUniLabel
      Left = 339
      Top = 0
      Width = 60
      Height = 13
      Hint = ''
      Caption = 'Quantidade:'
      Align = alRight
      TabOrder = 2
    end
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 523
      Top = 3
      Width = 103
      Height = 43
      Hint = ''
      Caption = 'Inserir produto'
      Align = alRight
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
      OnClick = UniButton1Click
    end
    object edtnome: TUniEdit
      Left = 3
      Top = 21
      Width = 254
      Hint = ''
      CharCase = ecUpperCase
      Text = ''
      TabOrder = 4
      OnChange = edtnomeChange
    end
    object UniLabel2: TUniLabel
      Left = 4
      Top = 4
      Width = 42
      Height = 13
      Hint = ''
      Caption = 'Produto:'
      TabOrder = 5
    end
    object UniButton2: TUniButton
      AlignWithMargins = True
      Left = 632
      Top = 3
      Width = 103
      Height = 43
      Hint = ''
      Caption = 'Confirmar'
      Align = alRight
      TabOrder = 6
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
          '.addCls('#39'BotaoVermelho'#39');'#13#10'}')
      OnClick = UniButton2Click
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 49
    Width = 738
    Height = 302
    Hint = ''
    DataSource = UniMainModule.dtsprod
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    OnDblClick = UniDBGrid1DblClick
    Columns = <
      item
        FieldName = 'CODIGO'
        Title.Caption = 'CODIGO'
        Width = 64
      end
      item
        FieldName = 'NOME'
        Title.Caption = 'NOME'
        Width = 400
        ReadOnly = True
      end
      item
        FieldName = 'CODIGO_BARRA'
        Title.Caption = 'CODIGO_BARRA'
        Width = 154
      end
      item
        FieldName = 'MARCA'
        Title.Caption = 'MARCA'
        Width = 304
        ReadOnly = True
      end
      item
        FieldName = 'UND'
        Title.Caption = 'UND'
        Width = 304
        ReadOnly = True
      end
      item
        FieldName = 'VENDA'
        Title.Caption = 'VENDA'
        Width = 118
      end
      item
        FieldName = 'ESTOQUE'
        Title.Caption = 'ESTOQUE'
        Width = 118
        ReadOnly = True
      end>
  end
end
