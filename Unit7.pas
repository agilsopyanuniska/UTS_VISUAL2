unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFormMenu = class(TForm)
    mm1: TMainMenu;
    F1: TMenuItem;
    LATIHAN1: TMenuItem;
    DATABASE1: TMenuItem;
    LATIHAN11: TMenuItem;
    LATIHAN21: TMenuItem;
    KONDISIONAL11: TMenuItem;
    KONDISIONAL21: TMenuItem;
    GRAFIKSTRINGGRID1: TMenuItem;
    GRAFIKSTRINGGRIDREVISI1: TMenuItem;
    LAT1: TMenuItem;
    G1: TMenuItem;
    procedure LATIHAN21Click(Sender: TObject);
    procedure LATIHAN11Click(Sender: TObject);
    procedure KONDISIONAL11Click(Sender: TObject);
    procedure KONDISIONAL21Click(Sender: TObject);
    procedure GRAFIKSTRINGGRID1Click(Sender: TObject);
    procedure GRAFIKSTRINGGRIDREVISI1Click(Sender: TObject);
    procedure LAT1Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses Unit4, Unit3, Unit5, Unit6, Unit1, Unit2, Unit8, Unit11;

{$R *.dfm}

procedure TFormMenu.LATIHAN21Click(Sender: TObject);
begin
   Form4.Show;
end;

procedure TFormMenu.LATIHAN11Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TFormMenu.KONDISIONAL11Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TFormMenu.KONDISIONAL21Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TFormMenu.GRAFIKSTRINGGRID1Click(Sender: TObject);
begin
  Form1.Show;
end;

procedure TFormMenu.GRAFIKSTRINGGRIDREVISI1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TFormMenu.LAT1Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TFormMenu.G1Click(Sender: TObject);
begin
Form11.ShowModal;
end;

end.
