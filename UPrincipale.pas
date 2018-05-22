unit UPrincipale;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, TntMenus, DKLang, StdCtrls, JvExControls, JvOutlookBar,
  ImgList, ComCtrls, ToolWin, ExtCtrls, Mask, DBCtrls, TntDBCtrls,
  TntStdCtrls, DB, ABSMain, RxToolEdit, RxDBCtrl, XDBCtrls, Grids, XDBGrids,
  frxClass, frxDBSet, TeeProcs, TeEngine, Chart, OleCtrls, VCFI,
  DBGrids, CRGrid,Series ;

type
  TFMain = class(TForm)
    DKLanguageController1: TDKLanguageController;
    TntMainMenu1: TTntMainMenu;
    Fichier1: TTntMenuItem;
    Paie1: TTntMenuItem;
    Imression1: TTntMenuItem;
    Dones1: TTntMenuItem;
    Donnes1: TTntMenuItem;
    Divers1: TTntMenuItem;
    Outil1: TTntMenuItem;
    Aide1: TTntMenuItem;
    Language1: TTntMenuItem;
    Franais1: TTntMenuItem;
    Arabe1: TTntMenuItem;
    Anglais1: TTntMenuItem;
    JvOutlookBar1: TJvOutlookBar;
    LargeImage: TImageList;
    PageImage: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    btn1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    OuvrirDossier1: TTntMenuItem;
    GestionDossier1: TTntMenuItem;
    Sauvegarder1: TTntMenuItem;
    RestaurerBD1: TTntMenuItem;
    N1: TTntMenuItem;
    N2: TTntMenuItem;
    MiseaJour1: TTntMenuItem;
    ReindexerBD1: TTntMenuItem;
    N3: TTntMenuItem;
    Quitter1: TTntMenuItem;
    Calculer1: TTntMenuItem;
    N4: TTntMenuItem;
    AttestationdeTravail1: TTntMenuItem;
    ListeEmployes1: TTntMenuItem;
    Classification1: TTntMenuItem;
    GrilleIEP1: TTntMenuItem;
    Poste1: TTntMenuItem;
    Grades1: TTntMenuItem;
    Filliers1: TTntMenuItem;
    Corps1: TTntMenuItem;
    ables1: TTntMenuItem;
    Banques1: TTntMenuItem;
    AgenceBanquaire1: TTntMenuItem;
    Adherents1: TTntMenuItem;
    Agenda1: TTntMenuItem;
    Utilitaires1: TTntMenuItem;
    Requettes1: TTntMenuItem;
    Enregistrement1: TTntMenuItem;
    APropos1: TTntMenuItem;
    Notebook1: TNotebook;
    Panel1: TPanel;
    TntLabel1: TTntLabel;
    TntLabel2: TTntLabel;
    TntLabel3: TTntLabel;
    TntLabel4: TTntLabel;
    TntLabel5: TTntLabel;
    TntLabel6: TTntLabel;
    TntLabel7: TTntLabel;
    TntLabel8: TTntLabel;
    TntLabel9: TTntLabel;
    TntLabel10: TTntLabel;
    TntLabel11: TTntLabel;
    TntLabel12: TTntLabel;
    TntLabel13: TTntLabel;
    TntLabel14: TTntLabel;
    TntLabel15: TTntLabel;
    TntLabel16: TTntLabel;
    ABSDatabase1: TABSDatabase;
    ABSStagiaire: TABSTable;
    DataSource1: TDataSource;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    XDBNavigator1: TXDBNavigator;
    XDBNavigator2: TXDBNavigator;
    ABSSpecialite: TABSTable;
    DataSource2: TDataSource;
    XDBNavigator3: TXDBNavigator;
    XDBGrid1: TXDBGrid;
    DBEdit1: TDBEdit;
    dbedtPrenom: TDBEdit;
    dbedtNumInscription: TDBEdit;
    dbedtAdresse: TDBEdit;
    dbedtNom: TDBEdit;
    dbedtNom1: TDBEdit;
    dbedtNom2: TDBEdit;
    dbedtNom3: TDBEdit;
    dbcbbNiveauScolaire: TDBComboBox;
    dbcbbNiveauFormation: TDBComboBox;
    dbcbbDernierAnneeEtude: TDBComboBox;
    dbcbbModeFormation: TDBComboBox;
    frxDBDataset1: TfrxDBDataset;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    dbedtNbrEnfant: TDBEdit;
    dbedtNbreFille: TDBEdit;
    dbedtProfPere1: TDBEdit;
    dbchkParentdef: TDBCheckBox;
    dbchkPeredeci: TDBCheckBox;
    dbchkMeredeci: TDBCheckBox;
    lbl7: TLabel;
    dbchkcilibataire: TDBCheckBox;
    dbchkMarie: TDBCheckBox;
    dbchkdevorse: TDBCheckBox;
    dbcbbSexe: TDBComboBox;
    dbcbbProfPere: TDBComboBox;
    dbcbbProfPere1: TDBComboBox;
    frxReport1: TfrxReport;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxReport4: TfrxReport;
    pnl1: TPanel;
    cht1: TChart;
    pnl2: TPanel;
    cbb1: TComboBox;
    ABSStagiaireIdStagiaire: TAutoIncField;
    ABSStagiaireNumInscription: TStringField;
    ABSStagiaireDateInscription: TDateField;
    ABSStagiaireNom: TStringField;
    ABSStagiairePrenom: TStringField;
    ABSStagiaireSexe: TStringField;
    ABSStagiaireDateNais: TDateField;
    ABSStagiaireLieuNais: TStringField;
    ABSStagiaireAdresse: TStringField;
    ABSStagiaireNiveauScolaire: TStringField;
    ABSStagiaireSpecialite: TStringField;
    ABSStagiaireNiveauFormation: TStringField;
    ABSStagiaireTelephone: TStringField;
    ABSStagiaireDernierAnneeEtude: TStringField;
    ABSStagiaireEcole: TStringField;
    ABSStagiaireRemarque: TStringField;
    ABSStagiaireModeFormation: TStringField;
    ABSStagiaireProfPere: TStringField;
    ABSStagiaireProfMere: TStringField;
    ABSStagiaireNbrEnfant: TStringField;
    ABSStagiaireNbreFille: TStringField;
    ABSStagiaireRangEnf: TStringField;
    ABSStagiaireParentdef: TStringField;
    ABSStagiairePeredeci: TStringField;
    ABSStagiaireMeredeci: TStringField;
    ABSStagiaireMarie: TStringField;
    ABSStagiairedevorse: TStringField;
    ABSStagiairecilibataire: TStringField;
    lbl8: TLabel;
    lbl9: TLabel;
    cbb2: TComboBox;
    ABSSpecialiteidSepecialite: TAutoIncField;
    ABSSpecialiteSpecialite: TStringField;
    //frxReport2: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure Franais1Click(Sender: TObject);
    procedure Arabe1Click(Sender: TObject);
    procedure Anglais1Click(Sender: TObject);
    procedure ButtonExitClick(Sender: TObject);
    procedure dbcbbDernierAnneeEtudeDropDown(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure cbb1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure cbb2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;
  Colours: array[1..10] of TColor = (clRed, clYellow, clFuchsia, clGreen, clBlue,
                                     clMaroon, clOlive, clBlack, clGray, clAqua);
  //Labels: array[1..6] of string = ('Õ÷Ê—Ì', ' „ÂÌ‰','œ—Ê” „”«∆Ì…', '«·„—√… «·„«ﬂÀ… »«·»Ì ', '«· ﬂÊÌ‰ «· ⁄«ﬁœÌ', '«·„Ã„Ê⁄');
implementation
      uses TntSystem, TntSysUtils;
{$R *.dfm}
{$R LangFiles.res} // Notice this resource inclusion!
procedure TFMain.FormCreate(Sender: TObject);
var
  i:integer;
begin

   // LangManager.ScanForLangFiles(WideExtractFileDir(WideParamStr(0))+'\langFiles', '*.lng', False);
   LangManager.RegisterLangResource(HInstance, 'LNG_ARABIC', 1049);
   LangManager.RegisterLangResource(HInstance, 'LNG_FRENCH',  1031);
end;

procedure TFMain.Franais1Click(Sender: TObject);
begin
 LangManager.LanguageID := LangManager.LanguageIDs[2];
end;

procedure TFMain.Arabe1Click(Sender: TObject);
begin
  LangManager.LanguageID := LangManager.LanguageIDs[1];
end;

procedure TFMain.Anglais1Click(Sender: TObject);
begin
  LangManager.LanguageID := LangManager.LanguageIDs[0];
end;

procedure TFMain.ButtonExitClick(Sender: TObject);
begin
 close;
end;

procedure TFMain.dbcbbDernierAnneeEtudeDropDown(Sender: TObject);
var
  i:integer;
begin
   dbcbbDernierAnneeEtude.Items.Clear;
   for i:=2010 to 2017 do
   dbcbbDernierAnneeEtude.Items.Add(Format('%d/%d',[i,i+1]));
end;

procedure TFMain.ToolButton12Click(Sender: TObject);
begin
 frxReport1.ShowReport;
end;

procedure TFMain.ToolButton1Click(Sender: TObject);
begin
 Notebook1.PageIndex := 0;
end;

procedure TFMain.btn1Click(Sender: TObject);
begin
 Notebook1.PageIndex := 1;
end;

procedure TFMain.ToolButton11Click(Sender: TObject);
begin
  frxReport2.ShowReport;
end;

procedure TFMain.ToolButton10Click(Sender: TObject);
begin
   frxReport3.ShowReport;
end;

procedure TFMain.ToolButton4Click(Sender: TObject);
begin
    frxReport4.ShowReport;
end;

procedure TFMain.cbb1Click(Sender: TObject);
var
  Count, ACount: integer;
  Bars : TBarSeries;
  Slices : TPieSeries;
  Values: array of double;
  Labels: array of string;
  Labels1: array of string;
begin
  if(Cht1.SeriesCount > 0)then
  Cht1.Series[0].Free;
  if (cbb1.ItemIndex = 0) then begin
    setlength(Values,7);
    setlength(Labels,7);
    Labels[1] := 'Õ÷Ê—Ì';
    Labels[2] := ' „ÂÌ‰';
    Labels[3] := 'œ—Ê” „”«∆Ì…';
    Labels[4] := '«·„—√… «·„«ﬂÀ… »«·»Ì ';
    Labels[5] := '«· ﬂÊÌ‰ «· ⁄«ﬁœÌ';
    Labels[6] := '«·„Ã„Ê⁄';
    ACount := 6;

    ABSStagiaire.First;
    for Count := 1 to 6 do
    Values[Count]:=0;

    while (not ABSStagiaire.Eof) do begin
       for Count := 1 to 5 do
       if(ABSStagiaireModeFormation.AsString = Labels[Count]) then
          Values[Count]:=Values[Count]+1;

       ABSStagiaire.Next;
    end;
    for Count := 1 to 5 do
        Values[6]:=Values[6]+Values[Count];
    if(Values[6]<>ABSStagiaire.RecordCount)then
        showmessage('Â‰«ﬂ Œ·· ›Ì «œŒ«· ﬁ«⁄œ… «·»Ì«‰« ');
  end else begin
    ACount := ABSSpecialite.RecordCount;
    setlength(Values,ACount+1);
    setlength(Labels,ACount+1);
    setlength(Labels1,7);
    Labels1[1] := 'Õ÷Ê—Ì';
    Labels1[2] := ' „ÂÌ‰';
    Labels1[3] := 'œ—Ê” „”«∆Ì…';
    Labels1[4] := '«·„—√… «·„«ﬂÀ… »«·»Ì ';
    Labels1[5] := '«· ﬂÊÌ‰ «· ⁄«ﬁœÌ';
    Labels1[6] := '«·„Ã„Ê⁄';



    ABSStagiaire.First;
    ABSSpecialite.First;
    Count:=1;
    while (not ABSSpecialite.Eof) do begin
      Values[Count]:=0;
      Labels[Count] := ABSSpecialiteSpecialite.AsString;
      ABSSpecialite.next;
      Count:=Count+1;
    end;


    while (not ABSStagiaire.Eof) do begin
       ABSSpecialite.First;
       for Count := 1 to ACount do begin
         if(ABSStagiaireModeFormation.AsString = Labels1[cbb1.ItemIndex] ) then begin
            if(ABSStagiaireSpecialite.AsString = Labels[Count]) then
                   Values[Count]:=Values[Count]+1;
         end;
       end;
       ABSStagiaire.Next;
    end;
    for Count := 1 to ACount-1 do
        Values[ACount]:=Values[ACount]+Values[Count];
    Labels[ACount]:='«·„Ã„Ê⁄';
    //if(Values[6]<>ABSStagiaire.RecordCount)then
        //showmessage('Â‰«ﬂ Œ·· ›Ì «œŒ«· ﬁ«⁄œ… «·»Ì«‰« ');
  end;
  Cht1.visible := true;
  if cbb2.ItemIndex =0 then begin

    Bars := TBarSeries.Create(Cht1);
    Cht1.Title.Text.Strings[0] := ' ﬁÌÌ„ «·œŒÊ· «·„Â‰Ì ·œÊ—… ›Ì›—Ì 2018';
    Cht1.Title.Font.Size := 16;;
    Cht1.Title.Visible := true;
    Bars.Marks.Style := TSeriesMarksStyle(smsValue); //or smsLabelValue
    //Bars.Marks.Distance:= 5;
    for Count := 1 to ACount do
      Bars.AddXY(count, Values[count], Labels[Count], Colours[Count]);
    Cht1.AddSeries(Bars);
   end;
   if cbb2.ItemIndex =1 then begin
     Slices := TPieSeries.Create(Cht1);
     Cht1.Title.Text.Strings[0] := 'Percentage of Sessions on PPS (Sept 2014)';
     Cht1.Title.Font.Size := 16;
     Cht1.Title.Visible := true;
     Slices.Marks.Style := TSeriesMarksStyle(smsLabelValue);
    // Slices.Marks.Distance:= 5;
     for Count := 1 to ACount-1 do
        Slices.AddPie(Values[count], Labels[Count], Colours[Count]);
     Cht1.AddSeries(Slices);
   end;
end;

procedure TFMain.ToolButton3Click(Sender: TObject);
begin
  Notebook1.PageIndex :=3;
end;

procedure TFMain.cbb2Click(Sender: TObject);
begin
  cbb1Click(Sender);
end;

end.
