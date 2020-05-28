object fmobprodutos: Tfmobprodutos
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Produtos'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimLabel1: TUnimLabel
    Left = 0
    Top = 0
    Width = 320
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Nome:'
    Align = alTop
    ParentFont = False
    ExplicitLeft = 24
    ExplicitTop = 48
    ExplicitWidth = 225
  end
  object edtnome: TUnimEdit
    Left = 0
    Top = 23
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Text = ''
    CharCase = ecUpperCase
    ParentFont = False
    TabOrder = 0
    OnChange = edtnomeChange
    ExplicitLeft = 24
    ExplicitTop = 80
    ExplicitWidth = 225
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 70
    Width = 320
    Height = 410
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dtsprod
    Columns = <
      item
        Title.Caption = 'NOME'
        FieldName = 'NOME'
        Width = 300
        ReadOnly = True
      end
      item
        Title.Caption = 'CODIGO_BARRA'
        FieldName = 'CODIGO_BARRA'
        Width = 200
      end
      item
        Title.Caption = 'MARCA'
        FieldName = 'MARCA'
        Width = 100
        ReadOnly = True
      end
      item
        Title.Caption = 'UND'
        FieldName = 'UND'
        Width = 50
        ReadOnly = True
      end
      item
        Title.Caption = 'ESTOQUE'
        FieldName = 'ESTOQUE'
        Width = 100
        ReadOnly = True
      end>
  end
end
