unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ImgList, ComCtrls, ToolWin;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ToolButton4: TToolButton;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  Dashed:boolean;

implementation

{$R *.dfm}

function ADNtoADN(ADN:string):string;
var
i:integer;
Resultant:string;
begin
i:=1;
while(i<=length(ADN)) AND (NOT(ADN[i]=#$D)) AND (NOT(ADN[i]=#$A)) do
begin
if (ADN[i]='A') or (ADN[i]='T') or (ADN[i]='C') or (ADN[i]='G') or (ADN[i]='-') then
begin
if ADN[i]= 'A' then
resultant:=resultant+'T';
//////////
if ADN[i]= 'T' then
resultant:=resultant+'A';
//////////
if ADN[i]= 'C' then
resultant:=resultant+'G';
/////////
if ADN[i]= 'G' then
resultant:=resultant+'C';
end
else
begin
with Application do
  begin

    MessageBox('Something is wrong in the boxes check you DNA', 'Hold on!', MB_OK);

  end;
end;
i:=i+1;
end;
Result:=resultant;
end;


function ADNtoARN(ADN:string):string;
var
i:integer;
Resultant:string;
begin
resultant:='';
i:=1;
while(i<=length(ADN))  AND (NOT(ADN[i]=#$D)) AND (NOT(ADN[i]=#$A)) do
begin
if (ADN[i]='A') or (ADN[i]='T') or (ADN[i]='C') or (ADN[i]='G') or (ADN[i]='-') then
begin
if ADN[i]= 'A' then
resultant:=resultant+'U';
//////////
if ADN[i]= 'T' then
resultant:=resultant+'A';
//////////
if ADN[i]= 'C' then
resultant:=resultant+'G';
/////////
if ADN[i]= 'G' then
resultant:=resultant+'C';
end
else
begin
with Application do
  begin
    NormalizeTopMosts;
    MessageBox('Something is wrong in the boxes check you DNA', 'Hold on!', MB_OK);
    RestoreTopMosts;
  end;
end;
i:=i+1;
end;
Result:=resultant;
end;

Function putdash(without:string):string;
var
wit:string;
i:integer;
begin
i:=1;
wit:='';
while (i<=length(without)) AND (NOT(without[i]=#$D)) AND (NOT(without[i]=#$A)) do
begin
wit:= wit + without[i];
if i mod 3 = 0 then
wit:= wit + '-';
i:=i+1;
end;
result:=wit;
end;

function ARNtoADN(ARN:string):string;
var
i:integer;
Resultant:string;
begin
resultant:='';
i:=1;
while(i<=length(ARN)) AND (NOT(ARN[i]=#$D)) AND (NOT(ARN[i]=#$A)) do
begin
if (ARN[i]='A') or (ARN[i]='U') or (ARN[i]='C') or (ARN[i]='G') or (ARN[i]='-') then
begin
if ARN[i]= 'A' then
resultant:=resultant+'T';
//////////
if ARN[i]= 'U' then
resultant:=resultant+'A';
//////////
if ARN[i]= 'C' then
resultant:=resultant+'G';
/////////
if ARN[i]= 'G' then
resultant:=resultant+'C';
end
else
begin
with Application do
  begin
    NormalizeTopMosts;
    MessageBox('Something is wrong in the boxes check you DNA', 'Hold on!', MB_OK);
    RestoreTopMosts;
  end;
end;
i:=i+1;
end;
Result:=resultant;
end;

function ARNtoCODON(ARN:string;n:integer):string;
var
i:integer;
Codon:string;
begin
if n >= length(ARN) then result:= 'NON';
i:=n;
codon:='';
while (NOT(ARN[i]='-')) and ((length(Codon)<=3)) AND (i<=length(ARN)) AND (NOT(ARN[i]=#$D)) AND (NOT(ARN[i]=#$A)) do
begin
codon:=codon+ARN[i];
i:=i+1;
end;
result:=codon;
end;

function arntoamin(arn:string):string;
var
codon:string;
amin:string;
i:integer;
Begin
i:=1;
codon:=arntocodon(arn,i);
while not(codon = '')   do
begin
codon:=arntocodon(arn,i);
//UU
if codon = 'UUU'  then
amin:=amin+'Phe' ;
if codon = 'UUC'  then
amin:=amin+'Phe'  ;
if codon = 'UUA'  then
amin:=amin+'Leu'  ;
if codon = 'UUG'  then
amin:=amin+'Leu'  ;
//UC
if codon = 'UCU'  then
amin:=amin+'Ser'  ;
if codon = 'UCC'  then
amin:=amin+'Ser'  ;
if codon = 'UCA'  then
amin:=amin+'Ser'  ;
if codon = 'UCG'  then
amin:=amin+'Ser'  ;
//UA
if codon = 'UAU'  then
amin:=amin+'Tyr'  ;
if codon = 'UAC'  then
amin:=amin+'Tyr'  ;
/////////////////////
if codon = 'UAA'  then
amin:=amin+'STP'  ;
////////////////////////
/////////////////////
if codon = 'UAG'  then
amin:=amin+'STP'  ;
////////////////////////
//UG
if codon = 'UGU'  then
amin:=amin+'Cys'  ;
if codon = 'UGC'  then
amin:=amin+'Cys'  ;
////////////////////
if codon = 'UGA'  then
amin:=amin+'STP'  ;
////////////////////////
if codon = 'UGG'  then
amin:=amin+'Trp'  ;
//CU
if codon = 'CUU'  then
amin:=amin+'Leu'  ;
if codon = 'CUC'  then
amin:=amin+'Leu'  ;
if codon = 'CUA'  then
amin:=amin+'Leu'  ;
if codon = 'CUG'  then 
amin:=amin+'Leu'  ;
//CC
if codon = 'CCU'  then
amin:=amin+'Pro'  ;
if codon = 'CCC'  then
amin:=amin+'Pro'  ;
if codon = 'CCA'  then 
amin:=amin+'Pro'  ;
if codon = 'CCG'  then 
amin:=amin+'Pro'  ;
//CA
if codon = 'CAU'  then
amin:=amin+'His'  ;
if codon = 'CAC'  then 
amin:=amin+'His'  ;
if codon = 'CAA'  then
amin:=amin+'Gln'  ;
if codon = 'CAG'  then 
amin:=amin+'Gln'  ;
//CG
if codon = 'CGU'  then
amin:=amin+'Arg'  ;
if codon = 'CGC'  then
amin:=amin+'Arg'  ;
if codon = 'CGA'  then 
amin:=amin+'Arg'  ;
if codon = 'CGG'  then
amin:=amin+'Arg'  ;

//AU
if codon = 'AUU'  then
amin:=amin+'Ile'  ;
if codon = 'AUC'  then
amin:=amin+'Ile'  ;
if codon = 'AUA'  then 
amin:=amin+'Ile'  ;
if codon = 'AUG'  then 
amin:=amin+'Met'  ;
//AC
if codon = 'ACU'  then 
amin:=amin+'Thr'  ;
if codon = 'ACC'  then 
amin:=amin+'Thr'  ;
if codon = 'ACA'  then 
amin:=amin+'Thr'  ;
if codon = 'ACG'  then 
amin:=amin+'Thr'  ;
//AA
if codon = 'AAU'  then 
amin:=amin+'Asn'  ;
if codon = 'AAC'  then 
amin:=amin+'Asn'  ;
if codon = 'AAA'  then 
amin:=amin+'Lys'  ;
if codon = 'AAG'  then 
amin:=amin+'Lys'  ;
//AG
if codon = 'AGU'  then 
amin:=amin+'Ser'  ;
if codon = 'AGC'  then 
amin:=amin+'Ser'  ;
if codon = 'AGA'  then 
amin:=amin+'Arg'  ;
if codon = 'AGG'  then 
amin:=amin+'Arg'  ;

//GU
if codon = 'GUU'  then 
amin:=amin+'Val'  ;
if codon = 'GUC'  then 
amin:=amin+'Val'  ;
if codon = 'GUA'  then 
amin:=amin+'Val'  ;
if codon = 'GUG'  then 
amin:=amin+'Val'  ;
//GG
if codon = 'GCU'  then
amin:=amin+'Ala'  ;
if codon = 'GCC'  then 
amin:=amin+'Ala'  ;
if codon = 'GCA'  then
amin:=amin+'Ala'  ;
if codon = 'GCG'  then
amin:=amin+'Ala'  ;
//GA
if codon = 'GAU'  then 
amin:=amin+'Asp'  ;
if codon = 'GAC'  then 
amin:=amin+'Asp'  ;
if codon = 'GAA'  then 
amin:=amin+'Glu'  ;
if codon = 'GAG'  then
amin:=amin+'Glu'  ;
//GG
if codon = 'GGU'  then
amin:=amin+'Gly'  ;
if codon = 'GGC'  then
amin:=amin+'Gly'  ;
if codon = 'GGA'  then
amin:=amin+'Gly'  ;
if codon = 'GGG'  then
amin:=amin+'Gly'  ;
i:=i+4;
end;
Result:=amin;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if (Radiobutton1.Checked=true) and (NOT(memo1.text=''))  then
begin
memo1.Text:=putdash(memo1.Text);
memo2.Text:=putdash(ADNtoADN(memo1.Text));
memo3.Text:=putdash(ADNtoARN(ADNtoADN(memo1.Text)));
memo4.Text:=putdash(arntoamin(memo3.text));
end;

if (Radiobutton2.Checked=true)  and (NOT(memo2.text='')) then
begin
memo2.Text:=putdash(memo2.Text);
memo1.Text:=putdash(ADNtoADN(memo2.Text));
memo3.Text:=putdash(ADNtoARN(memo2.Text));
memo4.Text:=putdash(arntoamin(memo3.text));
end;

if (Radiobutton3.Checked=true)  and (NOT(memo3.text='')) then
begin
memo3.Text:=putdash(memo3.Text);
memo1.Text:=putdash(ADNtoADN(ARNtoADN(memo3.Text)));
memo2.Text:=putdash(ARNtoADN(memo3.Text));
memo4.Text:=putdash(arntoamin(memo3.text));
end;
end;


procedure TForm1.ToolButton1Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
if OpenDialog1.Execute then
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName)
else
  Memo1.Lines.Clear;
  end;

if radiobutton2.Checked=true then
begin
if OpenDialog1.Execute then
  Memo2.Lines.LoadFromFile(OpenDialog1.FileName)
else
  Memo2.Lines.Clear;
  end;

  if radiobutton3.Checked=true then
begin
if OpenDialog1.Execute then
  Memo3.Lines.LoadFromFile(OpenDialog1.FileName)
else
  Memo3.Lines.Clear;
  end;

  if radiobutton3.Checked=true then
begin
if OpenDialog1.Execute then
  Memo3.Lines.LoadFromFile(OpenDialog1.FileName)
else
  Memo3.Lines.Clear;
  end;
end;


//////////////////////////////////////////////////
procedure TForm1.ToolButton3Click(Sender: TObject);
begin
if radiobutton1.Checked=true then
begin
if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName)
else
  Memo1.Lines.Clear;
  end;

if radiobutton2.Checked=true then
begin
if SaveDialog1.Execute then
  Memo2.Lines.SaveTofile(SaveDialog1.FileName)
else
  Memo2.Lines.Clear;
  end;

  if radiobutton3.Checked=true then
begin
if SaveDialog1.Execute then
  Memo3.Lines.SaveTofile(SaveDialog1.FileName)
else
  Memo3.Lines.Clear;
  end;

  if radiobutton3.Checked=true then
begin
if SaveDialog1.Execute then
  Memo3.Lines.SaveTofile(SaveDialog1.FileName)
else
  Memo3.Lines.Clear;
  end;
end;

end.
