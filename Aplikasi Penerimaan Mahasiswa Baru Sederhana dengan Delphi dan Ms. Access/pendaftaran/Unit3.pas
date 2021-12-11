unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DB, ADODB, jpeg, ExtCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses pendaftaranmaba, Unit2;

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Form1.Show;
Form2.Hide;
Form3.Hide;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
Form1.Hide;
Form2.Show;
Form3.Hide;
Form2.ADOQuery1.Close;
Form2.ADOQuery1.Open;

end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
Form1.Hide;
Form2.Hide;
Form3.Show;
Form3.ADOQuery2.Close;
Form3.ADOQuery2.Open;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
ADOQuery2.Active;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Text:='select*from(tb_pendaftaran)'+QuotedStr(Edit1.Text+'%');
if ComboBox1.ItemIndex=0 then ADOQuery2.SQL.Text:='select*from(tb_pendaftaran) where (Nama) like' +QuotedStr(Edit1.Text+'%')
else if ComboBox1.ItemIndex=1 then ADOQuery2.SQL.Text:='select*from(tb_pendaftaran) where (No_Telp) like' +QuotedStr(Edit1.Text+'%');
ADOQuery2.Open;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
close;
end;

end.
