unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Grids, DBGrids, ADODB;

type
  TForm8 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    cht1: TChart;
    Series1: TBarSeries;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit9, Unit10;

{$R *.dfm}

procedure TForm8.FormShow(Sender: TObject);
begin
cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
dbgrd1.Columns[0].Width := 30;
dbgrd1.Columns[3].Width := 90;
dbgrd1.Columns[5].Width := 50;
dbgrd1.Columns[6].Width := 110;
dbgrd1.Columns[7].Width := 90;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
    Form8.qry1.SQL.Clear;
    Form8.qry1.SQL.Add('select * from jadwal_praktikum');
    Form8.qry1.Open;
    dbgrd1.Columns[0].Width := 30;
    dbgrd1.Columns[1].Width := 50;
    dbgrd1.Columns[2].Width := 50;
    dbgrd1.Columns[3].Width := 90;
    dbgrd1.Columns[5].Width := 50;
    dbgrd1.Columns[6].Width := 150;
    dbgrd1.Columns[7].Width := 90;

    cht1.Series[0].Clear;

end;

procedure TForm8.btn4Click(Sender: TObject);
var
  i:integer;
begin
  Form8.qry1.SQL.Clear;
  Form8.qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_praktikum group by kelas');
  Form8.qry1.Open;

  cht1.Series[0].Clear;

  for i:= 1 to Form8.qry1.RecordCount do
  begin
    cht1.Series[0].Add(StrToInt(Form8.qry1.fieldbyname('total_siswa').AsString),Form8.qry1.Fields[1].AsString);
    Form8.qry1.Next;
  end;
  Form8.qry1.SQL.Clear;
  Form8.qry1.SQL.Add('select * from jadwal_praktikum');
  Form8.qry1.Open;

  dbgrd1.Columns[0].Width:=30;
  dbgrd1.Columns[1].Width:=60;
  dbgrd1.Columns[2].Width:=60;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[4].Width:=90;
  dbgrd1.Columns[5].Width:=60;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=80;

end;



procedure TForm8.btn1Click(Sender: TObject);
begin
Form9.ShowModal;

end;

procedure TForm8.btn3Click(Sender: TObject);
begin
Form10.ShowModal;
end;

end.
