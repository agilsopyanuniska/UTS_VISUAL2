object Form5: TForm5
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form5'
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
    Left = 168
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object lbl2: TLabel
    Left = 168
    Top = 80
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object lbl3: TLabel
    Left = 168
    Top = 112
    Width = 28
    Height = 13
    Caption = 'Nilai 3'
  end
  object lbl4: TLabel
    Left = 168
    Top = 152
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object lbl5: TLabel
    Left = 168
    Top = 184
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object edt1: TEdit
    Left = 216
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 216
    Top = 80
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 216
    Top = 112
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 280
    Top = 48
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 280
    Top = 80
    Width = 65
    Height = 21
    TabOrder = 4
  end
  object edt6: TEdit
    Left = 280
    Top = 112
    Width = 65
    Height = 21
    TabOrder = 5
  end
  object edt7: TEdit
    Left = 216
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edt8: TEdit
    Left = 216
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 184
    Top = 224
    Width = 75
    Height = 25
    Caption = 'PROSES'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 288
    Top = 224
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 392
    Top = 224
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 10
    OnClick = btn3Click
  end
end
