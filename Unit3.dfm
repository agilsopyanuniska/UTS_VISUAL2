object Form3: TForm3
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'LATIHAN 1'
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
    Left = 184
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object lbl2: TLabel
    Left = 184
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object lbl3: TLabel
    Left = 184
    Top = 136
    Width = 22
    Height = 13
    Caption = 'Hasil'
  end
  object edt1: TEdit
    Left = 256
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 256
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 256
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 440
    Top = 48
    Width = 75
    Height = 41
    Caption = 'Tambah'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 440
    Top = 128
    Width = 75
    Height = 41
    Caption = 'Selesai'
    TabOrder = 4
    OnClick = btn2Click
  end
end
