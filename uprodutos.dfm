object fprodutos: Tfprodutos
  Left = 0
  Top = 0
  ClientHeight = 356
  ClientWidth = 688
  Caption = 'Produtos'
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  Font.Style = [fsBold]
  PixelsPerInch = 96
  TextHeight = 13
  object UniSimplePanel1: TUniSimplePanel
    Left = 0
    Top = 0
    Width = 688
    Height = 57
    Hint = ''
    ParentColor = False
    Color = clGradientActiveCaption
    Align = alTop
    TabOrder = 0
    object edtpesq: TUniEdit
      Left = 24
      Top = 29
      Width = 241
      Hint = ''
      Text = ''
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniLabel1: TUniLabel
      Left = 24
      Top = 13
      Width = 35
      Height = 13
      Hint = ''
      Caption = 'Nome:'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 2
    end
    object UniSpeedButton1: TUniSpeedButton
      Left = 496
      Top = 0
      Width = 192
      Height = 57
      Hint = ''
      Caption = 'Pesquisar'
      Align = alRight
      ParentFont = False
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 3
      OnClick = UniSpeedButton1Click
    end
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 57
    Width = 688
    Height = 299
    Hint = ''
    DataSource = UniMainModule.dtsprod
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 1
    Columns = <
      item
        FieldName = 'NOME'
        Title.Caption = 'NOME'
        Width = 300
        Font.Style = [fsBold]
        ReadOnly = True
      end
      item
        FieldName = 'CODIGO_BARRA'
        Title.Caption = 'CODIGO_BARRA'
        Width = 150
        Font.Style = [fsBold]
      end
      item
        FieldName = 'MARCA'
        Title.Caption = 'MARCA'
        Width = 100
        Font.Style = [fsBold]
        ReadOnly = True
      end
      item
        FieldName = 'UND'
        Title.Caption = 'UND'
        Width = 100
        Font.Style = [fsBold]
        ReadOnly = True
      end
      item
        FieldName = 'ESTOQUE'
        Title.Caption = 'ESTOQUE'
        Width = 100
        Font.Style = [fsBold]
        ReadOnly = True
      end>
  end
end
