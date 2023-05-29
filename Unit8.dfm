object Form8: TForm8
  Left = 201
  Top = 143
  Width = 1169
  Height = 525
  Caption = 'DATABASE LATIHAN 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cht1: TChart
    Left = 32
    Top = 256
    Width = 1065
    Height = 218
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    TabOrder = 0
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      BarBrush.Color = clWhite
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object btn1: TButton
    Left = 552
    Top = 16
    Width = 105
    Height = 25
    Caption = 'TAMBAH JADWAL'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 672
    Top = 16
    Width = 113
    Height = 25
    Caption = 'LOAD DATA'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 800
    Top = 16
    Width = 113
    Height = 25
    Caption = 'VIEW REPORT'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 928
    Top = 16
    Width = 169
    Height = 25
    Caption = 'TAMPILKAN DATA GRAFIK'
    TabOrder = 4
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 40
    Top = 56
    Width = 1065
    Height = 185
    DataSource = ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Acer Pc\Do' +
      'cuments\latihan.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 8
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_praktikum')
    Left = 80
    Top = 8
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 120
    Top = 8
  end
end
