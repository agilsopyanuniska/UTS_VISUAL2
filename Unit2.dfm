object Form2: TForm2
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'GRAFIK REVISI'
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
    Left = 144
    Top = 32
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object lbl2: TLabel
    Left = 144
    Top = 64
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object lbl3: TLabel
    Left = 144
    Top = 104
    Width = 50
    Height = 13
    Caption = 'FAKULTAS'
  end
  object cbb1: TComboBox
    Left = 264
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      '2021'
      '2020'
      '2019')
  end
  object cbb2: TComboBox
    Left = 264
    Top = 104
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'TI'
      'Hukum')
  end
  object edt1: TEdit
    Left = 264
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 152
    Top = 136
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 264
    Top = 136
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 344
    Top = 136
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 5
    OnClick = btn3Click
  end
  object StringGrid1: TStringGrid
    Left = 456
    Top = 32
    Width = 320
    Height = 120
    TabOrder = 6
  end
  object cht1: TChart
    Left = 160
    Top = 176
    Width = 633
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
    TabOrder = 7
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
