unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    lbl4: TLabel;
    edt7: TEdit;
    lbl5: TLabel;
    edt8: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
var
  nil1, nil2 , nil3,hasil : real;
  b1,b2,b3 : real;
  grade : string;
begin
   nil1 := StrToFloat(edt1.Text);
   nil2 := StrToFloat(edt2.Text);
   nil3 := StrToFloat(edt3.Text);

   b1 := StrToFloat(edt4.Text)/100;
   b2 := StrToFloat(edt5.Text)/100;
   b3 := StrToFloat(edt6.Text)/100;

   //menghitung nilai akhir
   hasil := nil1 * b1 + nil2 * b2 + nil3 * b3;

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

   edt7.Text := FloatToStr(hasil);
   edt8.Text := grade;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
   edt1.Clear;
   edt2.Clear;
   edt3.Clear;
   edt7.Clear;
   edt8.Clear;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
Close;
end;

end.
