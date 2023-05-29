object Form11: TForm11
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'GRAFIK (TUGAS MANDIRI 3)'
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
  object lbl1: TLabel
    Left = 160
    Top = 32
    Width = 19
    Height = 13
    Caption = 'NIM'
  end
  object lbl2: TLabel
    Left = 160
    Top = 64
    Width = 94
    Height = 13
    Caption = 'NAMA MAHASISWA'
  end
  object lbl3: TLabel
    Left = 160
    Top = 104
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object btn1: TButton
    Left = 168
    Top = 128
    Width = 105
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 312
    Top = 128
    Width = 97
    Height = 25
    Caption = 'VIEW GRAFIK'
    TabOrder = 1
    OnClick = btn2Click
  end
  object edt1: TEdit
    Left = 264
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt2: TEdit
    Left = 264
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object cbb1: TComboBox
    Left = 264
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      '2022'
      '2021'
      '2020'
      '2018')
  end
  object StringGrid1: TStringGrid
    Left = 456
    Top = 24
    Width = 393
    Height = 120
    TabOrder = 5
  end
  object cht1: TChart
    Left = 160
    Top = 176
    Width = 689
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 6
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
end
