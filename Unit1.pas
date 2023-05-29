unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbb1: TComboBox;
    cbb2: TComboBox;
    edt1: TEdit;
    StringGrid1: TStringGrid;
    cht1: TChart;
    Series1: TPieSeries;
    btn1: TButton;
    btn2: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.FormShow(Sender: TObject);
begin
  StringGrid1.RowCount := 1;
  StringGrid1.ColCount := 4;

  StringGrid1.Cells[0,0] := 'NO';
  StringGrid1.Cells[1,0] := 'JUMLAH TERDAFTAR';
  StringGrid1.Cells[2,0] := 'FAKULTAS';
  StringGrid1.Cells[3,0] := 'TAHUN ANGKATAN';

  StringGrid1.ColWidths[0] := 20;
  StringGrid1.ColWidths[2] := 70;
  StringGrid1.ColWidths[3] := 140;
  StringGrid1.ColWidths[1] := 110;
end;


procedure TForm1.btn1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount - 1] := IntToStr(StringGrid1.RowCount - 1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := edt1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := cbb1.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := cbb2.Text;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  i : Integer;
begin
   for i := 1 to StringGrid1.RowCount-1 do
   begin
     cht1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
   end;
end;

end.
