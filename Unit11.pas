unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm11 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TButton;
    btn2: TButton;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    StringGrid1: TStringGrid;
    cht1: TChart;
    Series1: TPieSeries;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure TForm11.FormShow(Sender: TObject);
begin
StringGrid1.RowCount := 1;
StringGrid1.ColCount := 4;
StringGrid1.Cells[0,0] := 'NO';
StringGrid1.Cells[1,0] := 'NIM';
StringGrid1.Cells[2,0] := 'NAMA MAHASISWA';
StringGrid1.Cells[3,0] := 'TAHUN ANGKATAN';

StringGrid1.ColWidths[0] := 20;
StringGrid1.ColWidths[1] := 100;
StringGrid1.ColWidths[2] := 120;
StringGrid1.ColWidths[3] := 140;
end;

procedure TForm11.btn1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount + 1;
StringGrid1.Cells[0,StringGrid1.RowCount-1] := IntToStr(StringGrid1.RowCount - 1);
StringGrid1.Cells[1,StringGrid1.RowCount-1] := edt1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount-1] := edt2.Text;
StringGrid1.Cells[3,StringGrid1.RowCount-1] := cbb1.Text;
end;

procedure TForm11.btn2Click(Sender: TObject);
var
  i : Integer;
begin
  for i := 1 to StringGrid1.RowCount-1 do
  begin
    cht1.Series[0].Add(StrToInt(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
  end;
end;

end.
