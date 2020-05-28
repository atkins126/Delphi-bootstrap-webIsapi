object fmobitensvenda: Tfmobitensvenda
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Itens venda'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 0
    Width = 320
    Height = 480
    Hint = ''
    Align = alClient
    DataSource = UniMainModule.dtsitensvenda
  end
end
