unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,DateUtils, Vcl.ComCtrls,
  Vcl.ExtCtrls ;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    edt_day1: TEdit;
    edt_day2: TEdit;
    edt_Reesult: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button2: TButton;
    edt_result: TEdit;
    edt_debut: TEdit;
    edt_Nbjour: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edt_rotour: TEdit;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

    private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  date1 ,date2 : TDate;           // il foux ajoute un uses --> DateUtils
begin
  date1 := StrToDate(edt_day1.Text) ;
  date2 := StrToDate(edt_day2.Text) ;
  edt_Reesult.Text := IntToStr(DaysBetween(date1,date2));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    // il foux ajoute un uses --> DateUtils
   edt_result.Text := IntToStr(DaysBetween(DateTimePicker1.Date,DateTimePicker2.Date));
end;



procedure TForm1.Button4Click(Sender: TObject);
var
  myDate : TDateTime;        // il foux ajoute un uses --> DateUtils
  nbr : Integer ;
begin
  nbr := StrToInt(edt_Nbjour.Text);
  myDate := StrToDate(edt_debut.Text);

  myDate := IncDay(myDate, nbr);
  edt_rotour.Text := (DateToStr(myDate));
end;


end.
