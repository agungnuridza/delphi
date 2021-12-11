unit pendaftaranmaba;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, DB, ADODB, Grids, DBGrids, jpeg,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Enama: TEdit;
    Label3: TLabel;
    Enotelp: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CBjurusan: TComboBox;
    CBkelas: TComboBox;
    DTpd: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOQuery3: TADOQuery;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
 Form1.Show;
 Form2.Hide;
 Form3.Hide;
 
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
 Form1.Hide;
 Form2.Show;
 Form3.Hide;
 Form2.Malamat.Text:='';
 Form2.ADOQuery1.Close;
 Form2.ADOQuery1.Open;

end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form1.Hide;
  Form2.Hide;
  Form3.Show;
  Form3.ADOQuery2.Close;
  Form3.ADOQuery2.Open;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Enama.Text:='';
CBjurusan.Text:='';
CBKelas.Text:='';
Enotelp.Text:='';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ADOQuery3.Append;
ADOQuery3.FieldByName('Nama').AsString:=Enama.Text;
ADOQuery3.FieldByName('Jurusan').AsString:=CBjurusan.Text;
ADOQuery3.FieldByName('Kelas').AsString:=CBKelas.Text;
ADOQuery3.FieldByName('Tgl_Pendaftaran').AsDateTime:=DTpd.DateTime;
ADOQuery3.FieldByName('No_Telp').AsString:=Enotelp.Text;
ADOQuery3.Post;
showmessage('Data Berhasil Disimpan');
exit;
end;
end.
