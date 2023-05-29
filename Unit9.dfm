object Form9: TForm9
  Left = 217
  Top = 152
  Width = 997
  Height = 573
  Caption = 'Tambah Data Jadwal'
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
    Left = 288
    Top = 8
    Width = 355
    Height = 18
    Caption = 'TAMBAH DATA JADWAL PELAJARAN PRAKTKUM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 40
    Width = 139
    Height = 14
    Caption = ' KELAS                        :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 80
    Width = 144
    Height = 16
    Caption = 'MATA KULIAH               :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 120
    Width = 141
    Height = 14
    Caption = 'JAM MULAI                   :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 40
    Top = 160
    Width = 140
    Height = 14
    Caption = 'JAM AKHIR                   :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 40
    Top = 192
    Width = 147
    Height = 14
    Caption = 'HARI                             :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 40
    Top = 232
    Width = 146
    Height = 14
    Caption = 'TANGGAL                      :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl8: TLabel
    Left = 40
    Top = 272
    Width = 143
    Height = 14
    Caption = 'RUANGAN                     :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl9: TLabel
    Left = 40
    Top = 304
    Width = 141
    Height = 14
    Caption = 'KEHADIRAN                  :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cbb1: TComboBox
    Left = 248
    Top = 192
    Width = 449
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'SENIN'
      'SELASA'
      'RABU'
      'KAMIS'
      'JUMAT'
      'SABTU'
      'MINGGU')
  end
  object edt1: TEdit
    Left = 248
    Top = 40
    Width = 449
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 248
    Top = 72
    Width = 449
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 248
    Top = 112
    Width = 449
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 248
    Top = 152
    Width = 449
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 248
    Top = 272
    Width = 449
    Height = 21
    TabOrder = 5
  end
  object edt6: TEdit
    Left = 248
    Top = 304
    Width = 449
    Height = 21
    TabOrder = 6
  end
  object btn1: TButton
    Left = 72
    Top = 336
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 216
    Top = 336
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 336
    Top = 336
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 9
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 480
    Top = 336
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 10
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 624
    Top = 336
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 11
    OnClick = btn5Click
  end
  object dtp1: TDateTimePicker
    Left = 248
    Top = 232
    Width = 186
    Height = 21
    Date = 45074.881083738420000000
    Time = 45074.881083738420000000
    TabOrder = 12
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 384
    Width = 913
    Height = 120
    DataSource = ds1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object ds1: TDataSource
    DataSet = Form8.qry1
    Left = 840
    Top = 176
  end
end
