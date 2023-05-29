unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, DB, ADODB;

type
  TForm9 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    cbb1: TComboBox;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dtp1: TDateTimePicker;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure kumpulan;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit8;

{$R *.dfm}

procedure TForm9.kumpulan;
begin
  Form8.qry1.SQL.Clear;
  Form8.qry1.SQL.Add('select * from jadwal_praktikum');
  Form8.qry1.Open;


  dbgrd1.Columns[0].Width:=20;
  dbgrd1.Columns[1].Width:=60;
  dbgrd1.Columns[2].Width:=60;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[4].Width:=90;
  dbgrd1.Columns[5].Width:=60;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=80;

  btn3.Enabled := False;
  btn4.Enabled := False;
  btn2.Enabled := False;
  btn1.Enabled := True;

end;

procedure TForm9.btn2Click(Sender: TObject);
var
  a : Integer;
begin
    if (edt3.Text='') or (edt4.Text='')then
    begin
      ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
    if (cbb1.Text='')then
    begin
      ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
    if (edt5.Text='') or (edt2.Text='')then
    begin
      ShowMessage('RUANGAN ATAU MATA KULIAH BELUM DIISI DENGAN BENAR');
    end else
    if (edt1.Text='') or (edt6.Text='')then
    begin
      ShowMessage('KELAS ATAU KEHADIRAN BELUM DIISI DENGAN BENAR');
    end else
    begin
    a := Form8.qry1.RecordCount + 1;
   with Form8.qry1 do
   begin
   SQL.Clear;
   SQL.Add('insert into jadwal_praktikum values("'+IntToStr(a)+'","'+edt3.Text+'","'+edt4.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt5.Text+'","'+edt2.Text+'","'+edt1.Text+'","'+edt6.Text+'")');
   ExecSQL;

   SQL.Clear;
   SQL.Add('select * from jadwal_praktikum');
   Open;
   ShowMessage('Data Berhasil Disimpan');
   end;
   end;

end;

procedure TForm9.btn3Click(Sender: TObject);
var
  i : string;
begin

  i := Form8.qry1.FieldByName('no').AsString;

  with Form8.qry1 do
  begin
    SQL.Text := 'update jadwal_praktikum set jam_mulai = :jamMulai, jam_akhir = :jamAkhir, hari = :Hari, tanggal = :Tanggal, ruang = :Ruang, matkul = :Matkul, kelas = :Kelas, kehadiran_total = :kehadiranTotal WHERE no = :no';
    Parameters.ParamByName('jamMulai').Value := edt3.Text;
    Parameters.ParamByName('jamAkhir').Value := edt4.Text;
    Parameters.ParamByName('Hari').Value := cbb1.Text;
    Parameters.ParamByName('Tanggal').Value := FormatDateTime('dd/mm/yyyy',dtp1.Date);
    Parameters.ParamByName('Ruang').Value := edt5.Text;
    Parameters.ParamByName('Matkul').Value := edt2.Text;
    Parameters.ParamByName('Kelas').Value := edt1.Text;
    Parameters.ParamByName('kehadiranTotal').Value := StrToInt(edt6.Text);
    Parameters.ParamByName('no').Value := i;
    ExecSQL;

    kumpulan;
    ShowMessage('Data Berhasil di-update');
  end;
end;


procedure TForm9.FormShow(Sender: TObject);
begin
 kumpulan;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
var
  i : Integer;
begin
  try
  i := Form8.qry1.Fields[0].AsInteger;
  edt3.Text:=Form8.qry1.Fields[1].AsString;
  edt4.Text:=Form8.qry1.Fields[2].AsString;
  cbb1.Text:=Form8.qry1.Fields[3].AsString;
  dtp1.Date:=Form8.qry1.Fields[4].AsDateTime;
  edt5.Text:=Form8.qry1.Fields[5].AsString;
  edt2.Text:=Form8.qry1.Fields[6].AsString;
  edt1.Text:=Form8.qry1.Fields[7].AsString;
  edt6.Text:=Form8.qry1.Fields[8].AsString;
  except
  end;

    btn3.Enabled := True;
    btn4.Enabled := True;
    btn2.Enabled := True;
    btn1.Enabled := False;

end;

procedure TForm9.btn4Click(Sender: TObject);
var
  i : string;
begin
  if MessageDlg('APAKAH ANDA INGIN MENGHAPUS DATA INI?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    i := Form8.qry1.FieldByName('no').AsString;

    Form8.qry1.SQL.Text := 'DELETE FROM jadwal_praktikum WHERE no = :no';
    Form8.qry1.Parameters.ParamByName('no').Value := i;
    Form8.qry1.ExecSQL;
//
    kumpulan;
  end
  else
  begin
      ShowMessage('DATA BATAL DIHAPUS');
  end;
end;


procedure TForm9.btn1Click(Sender: TObject);
var
  i : string;
begin
  if MessageDlg('APAKAH ANDA INGIN MENAMBAH DATA BARU?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    with Form8.qry1 do
    begin
      SQL.Clear;
      SQL.Add('select count(*) from jadwal_praktikum');
      Open;
      i := IntToStr(Fields[0].AsInteger + 1);

      SQL.Clear;
      SQL.Add('insert into jadwal_praktikum values("'+i+'","'+edt3.Text+'","'+edt4.Text+'","'+cbb1.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+edt5.Text+'","'+edt2.Text+'","'+edt1.Text+'","'+edt6.Text+'")');
      ExecSQL;

      kumpulan;
    end;
  end
  else
  begin
    ShowMessage('DATA BARU BATAL DITAMBAH');
  end;

  edt1.Text:='';
  edt2.Text:='';
  edt3.Text:='';
  edt4.Text:='';
  edt5.Text:='';
  edt6.Text:='';
  cbb1.Text:='';
  dtp1.Date:=Now;
end;

procedure TForm9.btn5Click(Sender: TObject);
begin
  Close;
end;

end.
