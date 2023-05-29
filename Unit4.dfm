object Form4: TForm4
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'LATIHAN MANDIRI OPERATOR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 144
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object lbl2: TLabel
    Left = 144
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object lbl3: TLabel
    Left = 144
    Top = 184
    Width = 38
    Height = 13
    Caption = 'Tambah'
  end
  object lbl4: TLabel
    Left = 144
    Top = 216
    Width = 34
    Height = 13
    Caption = 'Kurang'
  end
  object lbl5: TLabel
    Left = 144
    Top = 248
    Width = 43
    Height = 13
    Caption = 'Perkalian'
  end
  object lbl6: TLabel
    Left = 144
    Top = 288
    Width = 52
    Height = 13
    Caption = 'Pembagian'
  end
  object btn1: TButton
    Left = 392
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Proses All'
    TabOrder = 0
    OnClick = btn1Click
  end
  object edt1: TEdit
    Left = 200
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 200
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 200
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 200
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 200
    Top = 248
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edt6: TEdit
    Left = 200
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object btn2: TButton
    Left = 400
    Top = 184
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 400
    Top = 216
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 400
    Top = 248
    Width = 75
    Height = 25
    Caption = 'x'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 400
    Top = 288
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 10
    OnClick = btn5Click
  end
end
