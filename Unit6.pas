unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm6 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    pnl2: TPanel;
    pnl3: TPanel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt11: TEdit;
    edt12: TEdit;
    edt13: TEdit;
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btn3Click(Sender: TObject);
begin
Close;
end;

procedure TForm6.btn1Click(Sender: TObject);
var
  nil1, nil2 , nil3, nil4, nil5, hasil : real;
  b1,b2,b3,b4,b5 : real;
  grade,ket : string;
begin
   //Mengambil Data Nilai
   nil1 := StrToFloat(edt1.Text);
   nil2 := StrToFloat(edt2.Text);
   nil3 := StrToFloat(edt3.Text);
   nil4 := StrToFloat(edt4.Text);
   nil5 := StrToFloat(edt5.Text);

   //Mengambil Pesan Data Bobot
   b1 := 15/100;
   b2 := 25/100;
   b3 := 20/100;
   b4 := 10/100;
   b5 := 30/100;

   //menghitung nilai akhir
   hasil := nil1 * b1 + nil2 * b2 + nil3 * b3 + nil4 * b4 + nil5 * b5;

   //menentukan grade nilai
   if (hasil >= 80) then
    grade := 'A'
   else if (hasil >= 70) then
    grade := 'B'
   else if (hasil >= 60) then
    grade := 'C'
   else if (hasil >= 50) then
    grade := 'D'
   else
    grade := 'E';

   if (grade = 'A') or (grade = 'B') or (grade = 'C') then
     ket := 'Lulus'
   else if (grade = 'D') or(grade = 'E') then
     ket := 'Tidak Lulus'
   else
     ket := 'Tidak Ada';

    //hasil proses
    edt11.Text := FloatToStr(hasil);
    edt12.Text := grade;
    edt13.Text:= ket
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
   edt1.Clear;
   edt2.Clear;
   edt3.Clear;
   edt4.Clear;
   edt5.Clear;
   edt11.Clear;
   edt12.Clear;
   edt13.Clear;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
edt6.Enabled := False;
edt7.Enabled := False;
edt8.Enabled := False;
edt9.Enabled := False;
edt10.Enabled := False;
end;

end.
