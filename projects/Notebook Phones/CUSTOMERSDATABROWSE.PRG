*---------------------------------------------------------------------------*
* Time : 16:42:17    Date : 11/25/2013
*---------------------------------------------------------------------------*
* Programming Without Coding Technology (PWCT) 
* 2006-2013 , Mahmoud Fayed <msfclipper@yahoo.com> 
* Version : PWCT 1.9 (Art) 2013.10.15
* URL : http://www.sourceforge.net/projects/doublesvsoop   
*---------------------------------------------------------------------------*
* Visual Programming Language : HarbourPWCT 
*---------------------------------------------------------------------------*
#include "SSXHB.ch"
#include "MiniGUI.ch"
#include "hbclass.ch"
Function loadCUSTOMERSDATABROWSE
Public True,False 
True = .T. 
False = .F. 
New Server Server1 Type Slave Server Eigen Value 000
 Details :
 * (Noun) *
Parameters SP1,SP2,SP3,SP4,SP5,SP6,SP7,SP8
	DataUnit :
	CodeUnit :
			Circuit        Main                          
				Branch     Main                          
					Resistance Main                          
	VetoUnit :
End Of Server 

Resistance R_CUSTOMERSDATABROWSE_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSDATABROWSE_19art1() code
class CustDataBrowseClass From SystemDatabase
Data cWindowName init "CustDataBrowseWindow"
Data TableName init "Customers"
Data column init "CustAll"
Data PrimaryKey init "id"
Data columns init {"CustText9","CustText3","CustText2","CustName","ID"}
Data nID init 0
Data ColTitles init {"«·„Â‰…","ÃÊ«·2","ÃÊ«·1","«·«”„ ","„"}
Data ColWidths init {130,100,100,200,50}
Data cName init ""
Data cText2 init ""
Data cText3 init ""
Data cText4 init ""
Data cText5 init ""
Data cText6 init ""
Data cText7 init ""
Data cText8 init ""
Data cText9 init ""
Data cText10 init ""
Data cText11 init ""
Data cText12 init ""
Data dDate init Date()
Data ncheck init 0
Data cTextAll init ""
Data CnameEdit init ""
Data lAdd init False
Method Print
Method showwindow
Method closewindow
Method SetMode
Method UserInterface2Class
Method Class2ADO
Method ADO2Class
Method Class2UserInterface
Method ClearRecord
Method AutoGotoRecord
Method OpenDataWindow
Method showdatawindow
Method myTimer
Method BeforeSearch
Method SearchAdd
Method settimer
Method GetSearchValue
Method GetCount
Method CheckText
Method PrintOne
Method BeforeEdite
EndClass
Method showwindow Class CustDataBrowseClass
myout = self:connect()
myout = self:AutoGotoRecord()
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 1272 ;
HEIGHT 618 ;
ON INIT self:Search()  ;
ON RELEASE self:closewindow()  ;
ICON "PWCTICON" ;
TITLE "«·„›ﬂ—… «·«Õ —«›Ì… ·Õ›Ÿ «—ﬁ«„ «·ÂÊ« › («· Ì·›Ê‰« ) Ê«·ÃÊ«·« " ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {64,0,64} 
@ 5 ,6 IMAGE image1;
PICTURE "Images/Image1.jpg";
STRETCH ;
WIDTH 1251 HEIGHT 527
@ 8 ,10 FRAME Frame7;
WIDTH 658 ;
HEIGHT 41 ;
FONT "Arial" ;
SIZE 9 ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 416 ,10 FRAME Frame8;
WIDTH 658 ;
HEIGHT 114 ;
FONT "Arial" ;
SIZE 9 ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 306 ,10 FRAME Frame9;
WIDTH 658 ;
HEIGHT 108 ;
FONT "Arial" ;
SIZE 9 ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 196 ,10 FRAME Frame10;
WIDTH 658 ;
HEIGHT 108 ;
FONT "Arial" ;
SIZE 9 ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 534 ,5 FRAME Frame2;
WIDTH 1249 ;
HEIGHT 41 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 8 ,751 FRAME Frame4;
WIDTH 493 ;
HEIGHT 71 ;
FONT "Arial" ;
SIZE 9 ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 8 ,677 FRAME Frame3;
WIDTH 73 ;
HEIGHT 71 ;
FONT "Arial" ;
SIZE 9 ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 53 ,10 FRAME Frame5;
WIDTH 658 ;
HEIGHT 138 ;
FONT "Arial" ;
SIZE 9 ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 13 ,523 LABEL lbl4 ;
VALUE "«·«”‹‹‹„" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 57 ,523 LABEL lbl5 ;
VALUE "—ﬁ„ «·ÃÊ«· 1" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 91 ,523 LABEL lbl6 ;
VALUE "—ﬁ„ «·ÃÊ«· 2" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 124 ,523 LABEL lbl7 ;
VALUE "Â« › «·⁄„·" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 156 ,523 LABEL lbl8 ;
VALUE "Â« › «·„‰“·" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 201 ,523 LABEL lbl9 ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ì 1" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 235 ,523 LABEL lbl10 ;
VALUE "«·»—Ìœ «·«·ﬂ —Ê‰Ì 2" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 268 ,523 LABEL lbl11 ;
VALUE "«Œ—Ï 1" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 309 ,523 LABEL lbl13 ;
VALUE "«·„Â‰…/«·⁄„·" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 347 ,523 LABEL lbl14 ;
VALUE "⁄‰Ê«‰ «·⁄„·" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 379 ,523 LABEL lbl15 ;
VALUE "⁄‰Ê«‰ «·„‰“·" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 497 ,523 LABEL lbl16 ;
VALUE "«·Õ›Ÿ / «· ⁄œÌ·" ;
WIDTH 130 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 419 ,523 LABEL lbl17 ;
VALUE "„·«ÕŸ…" ;
WIDTH 130 ;
HEIGHT 28 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
RIGHTALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,684 LABEL lbl18 ;
VALUE "«·⁄œœ" ;
WIDTH 60 ;
HEIGHT 30 ;
FONT "Arial" SIZE 14  ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 14 ,764 LABEL lbl19 ;
VALUE "«·»ÕÀ Ì‘„· Ã„Ì⁄ «·ÕﬁÊ· - ÊÌﬂ›Ì ﬂ «»… Ã“¡ „‰ «·‰’ - Ê·Ì” ‘—ÿ „‰ «·»œÌ…" ;
WIDTH 470 ;
HEIGHT 30 ;
FONT "Arial" SIZE 13  ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 28 ,12 LABEL lbl20 ;
VALUE "⁄œœ «·«—ﬁ«„" ;
WIDTH 64 ;
HEIGHT 24 ;
FONT "Arial" SIZE 13  ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 44 ,764 TEXTBOX textNamebrowse;
ON CHANGE self:search()  ;
HEIGHT 30 ;
WIDTH 470 ;
BACKCOLOR {255,255,128} ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 83 ,675 GRID Grid1browse;
ON CHANGE self:OpenDataWindow  ;
WIDTH 569 ;
HEIGHT 445 ;
HEADERS self:ColTitles;
WIDTHS self:ColWidths ;
FONT "Arial" SIZE 12 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
DEFINE TIMER Timer1 INTERVAL 1000 ;
Action self:myTimer()
@ 57 ,16 TEXTBOX Tmax2;
HEIGHT 28 ;
WIDTH 60 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {165,175,218} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 91 ,16 TEXTBOX Tmax3;
HEIGHT 28 ;
WIDTH 60 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {165,175,218} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 124 ,16 TEXTBOX Tmax4;
HEIGHT 28 ;
WIDTH 60 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {165,175,218} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 156 ,16 TEXTBOX Tmax5;
HEIGHT 28 ;
WIDTH 60 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {165,175,218} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 44 ,684 TEXTBOX textcount;
HEIGHT 30 ;
WIDTH 60 ;
READONLY ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {165,175,218} ;
FONTCOLOR {0,0,0} ;
NUMERIC 
@ 13 ,85 TEXTBOX textName;
ON CHANGE Self:GetCount(1)  ;
HEIGHT 30 ;
WIDTH 420 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 100 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 57 ,76 TEXTBOX text2;
ON CHANGE Self:GetCount(2)  ;
HEIGHT 28 ;
WIDTH 430 ;
FONT "Arial" SIZE 13 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 30 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 91 ,76 TEXTBOX text3;
ON CHANGE Self:GetCount(3)  ;
HEIGHT 28 ;
WIDTH 430 ;
FONT "Arial" SIZE 13 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 30 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 124 ,76 TEXTBOX text4;
ON CHANGE Self:GetCount(4)  ;
HEIGHT 28 ;
WIDTH 430 ;
FONT "Arial" SIZE 13 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 30 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 156 ,76 TEXTBOX text5;
ON CHANGE Self:GetCount(5)  ;
HEIGHT 28 ;
WIDTH 430 ;
FONT "Arial" SIZE 13 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 30 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 201 ,15 TEXTBOX text6;
HEIGHT 28 ;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 200 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 235 ,15 TEXTBOX text7;
HEIGHT 28 ;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 200 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 268 ,15 TEXTBOX text8;
HEIGHT 28 ;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 200 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 309 ,15 TEXTBOX text9;
HEIGHT 28 ;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 200 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 345 ,15 TEXTBOX text10;
HEIGHT 28 ;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 200 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 379 ,15 TEXTBOX text11;
HEIGHT 28 ;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 200 ;
RIGHTALIGN ;
FONTCOLOR {0,0,0} 
@ 420 ,16 EDITBOX Text12;
WIDTH 490 ;
HEIGHT 71;
FONT "Arial" SIZE 13 ;
UNDERLINE ;
BACKCOLOR {255,255,255} ;
MAXLENGTH 250 ;
FONTCOLOR {0,0,0}
@ 497 ,16 DATEPICKER datep;
WIDTH 490 ;
FONT "Arial" SIZE 14 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,0}
@ 541 ,211 BUTTONEX btnFirst;
CAPTION "«·«Ê·";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:firstrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 541 ,146 BUTTONEX btnNext;
CAPTION "«· «·Ì";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:nextrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 541 ,16 BUTTONEX btnLast;
CAPTION "«·«ŒÌ—";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:lastrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 541 ,1142 BUTTONEX btnClose;
CAPTION "«€‹‹‹‹·«ﬁ";
FONTCOLOR {0,0,0};
BACKCOLOR {132,242,179};
ON CLICK self:closewindow(1)  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 541 ,81 BUTTONEX btnPrev;
CAPTION "«·”«»ﬁ";
FONTCOLOR {255,255,255};
BACKCOLOR {64,0,64};
ON CLICK self:prevrecord()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 541 ,604 BUTTONEX btnDel;
CAPTION "Õ–›";
FONTCOLOR {255,255,255};
BACKCOLOR {255,0,0};
ON CLICK self:delrecord()  ;
WIDTH 90 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
NOXPSTYLE ;
TOOLTIP ""
@ 541 ,288 BUTTONEX btnsave;
CAPTION "Õ›Ÿ";
ON CLICK self:CheckText()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 541 ,360 BUTTONEX btncancel;
CAPTION "«·‹€‹«¡";
ON CLICK self:cancelrecord()  ;
WIDTH 80 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 541 ,446 BUTTONEX btnedit;
CAPTION " ⁄‹œÌ·";
ON CLICK self:BeforeEdite()  ;
WIDTH 60 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 541 ,513 BUTTONEX btnadd;
CAPTION "«÷‹«›‹…";
ON CLICK self:addrecord()  ;
WIDTH 70 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 541 ,1036 BUTTONEX btn2200;
CAPTION "Õ‹‹‹Ê·";
BACKCOLOR {244,208,241};
ON CLICK OAbout:ShowWindow()  ;
WIDTH 100 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 541 ,870 BUTTONEX btnPrintAll;
CAPTION " ÿ»«⁄… -  ’œÌ— - «·ﬂ·";
BACKCOLOR {244,208,241};
ON CLICK Self:Print()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 541 ,710 BUTTONEX btnPrintOne;
CAPTION "ÿ»«⁄… «·”Ã· «·Õ«·Ì";
BACKCOLOR {244,208,241};
ON CLICK Self:PrintOne()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
&(self:cWindowName).Tmax2.Enabled := false
&(self:cWindowName).Tmax3.Enabled := false
&(self:cWindowName).Tmax4.Enabled := false
&(self:cWindowName).Tmax5.Enabled := false
&(self:cWindowName).textcount.Enabled := false
END WINDOW
&(self:cWindowName).Center ( )
myout = self:showrecord()
myout = self:setmode(2)
&(self:cWindowName).Timer1.Enabled := false
ACTIVATE WINDOW &(self:cWindowName)
EndIF
Return 0
Method UserInterface2Class Class CustDataBrowseClass
self:cName := &(self:cWindowName).textName.Value
self:cText2 := &(self:cWindowName).text2.Value
self:cText3 := &(self:cWindowName).text3.Value
self:cText4 := &(self:cWindowName).text4.Value
self:cText5 := &(self:cWindowName).text5.Value
self:cText6 := &(self:cWindowName).text6.Value
self:cText7 := &(self:cWindowName).text7.Value
self:cText8 := &(self:cWindowName).text8.Value
self:cText9 := &(self:cWindowName).text9.Value
self:cText10 := &(self:cWindowName).text10.Value
self:cText11 := &(self:cWindowName).text11.Value
self:cText12 := &(self:cWindowName).text12.Value
Self:dDate := Date()
Self:cTextAll := Self:cName
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText2
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText3
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText4
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText5
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText6
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText7
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText8
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText9
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText10
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText11
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + Self:cText12
cDate = DTOC ( Self:dDate )
Self:cTextAll := Self:cTextAll + CHR(13) + CHR(10) + cDate
Return 0
Method Class2ADO Class CustDataBrowseClass
Self:oRS:fields:item(alltrim("CustAll")):value := Self:cTextAll
self:oRS:fields:item(alltrim("CustName")):value := self:cName
Self:oRS:fields:item(alltrim("CustText2 ")):value := self:cText2
Self:oRS:fields:item(alltrim("CustText3 ")):value := self:cText3
Self:oRS:fields:item(alltrim("CustText4 ")):value := self:cText4
Self:oRS:fields:item(alltrim("CustText5 ")):value := self:cText5
Self:oRS:fields:item(alltrim("CustText6")):value := self:cText6
Self:oRS:fields:item(alltrim("CustText7")):value := self:cText7
Self:oRS:fields:item(alltrim("CustText8")):value := self:cText8
Self:oRS:fields:item(alltrim("CustText9")):value := self:cText9
Self:oRS:fields:item(alltrim("CustText10")):value := self:cText10
Self:oRS:fields:item(alltrim("CustText11")):value := self:cText11
Self:oRS:fields:item(alltrim("CustText12")):value := self:cText12
Self:oRS:fields:item(alltrim("CustDate")):value := self:dDate
Return 0
Method ADO2Class Class CustDataBrowseClass
self:cName := self:oRS:fields:item(alltrim("CustName")):value
Self:cText2 := Self:oRS:fields:item(alltrim("CustText2 ")):value
Self:cText3 := Self:oRS:fields:item(alltrim("CustText3")):value
Self:cText4 := Self:oRS:fields:item(alltrim("CustText4")):value
Self:cText5 := Self:oRS:fields:item(alltrim("CustText5")):value
Self:cText6 := Self:oRS:fields:item(alltrim("CustText6")):value
Self:cText7 := Self:oRS:fields:item(alltrim("CustText7")):value
Self:cText8 := Self:oRS:fields:item(alltrim("CustText8")):value
Self:cText9 := Self:oRS:fields:item(alltrim("CustText9")):value
Self:cText10 := Self:oRS:fields:item(alltrim("CustText10")):value
Self:cText11 := Self:oRS:fields:item(alltrim("CustText11")):value
Self:cText12 := Self:oRS:fields:item(alltrim("CustText12")):value
Self:dDate := Self:oRS:fields:item(alltrim("CustDate")):value
Return 0
Method Class2UserInterface Class CustDataBrowseClass
&(self:cWindowName).textName.Value := self:cName
&(self:cWindowName).text2.Value := Self:cText2
&(self:cWindowName).text3.Value := Self:cText3
&(self:cWindowName).text4.Value := Self:cText4
&(self:cWindowName).text5.Value := Self:cText5
&(self:cWindowName).text6.Value := Self:cText6
&(self:cWindowName).text7.Value := Self:cText7
&(self:cWindowName).text8.Value := Self:cText8
&(self:cWindowName).text9.Value := Self:cText9
&(self:cWindowName).text10.Value := Self:cText10
&(self:cWindowName).text11.Value := Self:cText11
&(self:cWindowName).text12.Value := Self:cText12
&(self:cWindowName).DateP.Value := Self:dDate
Return 0
Method ClearRecord Class CustDataBrowseClass
self:cName := ""
Self:cText2 := ""
Self:cText3 := ""
Self:cText4 := ""
Self:cText5 := ""
Self:cText6 := ""
Self:cText7 := ""
Self:cText8 := ""
Self:cText9 := ""
Self:cText10 := ""
Self:cText11 := ""
Self:cText12 := ""
Self:dDate := Date()
Return 0
Method setmode(p1) Class CustDataBrowseClass
&(self:cWindowName).datep.Enabled := False
IF p1 = 1
&(self:cWindowName).btnfirst.Enabled := false
&(self:cWindowName).btnnext.Enabled := false
&(self:cWindowName).btnprev.Enabled := false
&(self:cWindowName).btnlast.Enabled := false
&(self:cWindowName).btndel.Enabled := false
&(self:cWindowName).btnclose.Enabled := false
&(self:cWindowName).btnsave.Enabled := true
&(self:cWindowName).btncancel.Enabled := true
&(self:cWindowName).btnedit.Enabled := false
&(self:cWindowName).btnadd.Enabled := false
&(self:cWindowName).textNameBrowse.Enabled := false
&(self:cWindowName).Grid1Browse.Enabled := false
&(self:cWindowName).textName.Enabled := true
&(self:cWindowName).text2.Enabled := True
&(self:cWindowName).text3.Enabled := True
&(self:cWindowName).text4.Enabled := True
&(self:cWindowName).text5.Enabled := True
&(self:cWindowName).text6.Enabled := True
&(self:cWindowName).text7.Enabled := True
&(self:cWindowName).text8.Enabled := True
&(self:cWindowName).text9.Enabled := True
&(self:cWindowName).text10.Enabled := True
&(self:cWindowName).text11.Enabled := True
&(self:cWindowName).text12.Enabled := True
&(self:cWindowName).btnPrintOne.Enabled := false
&(self:cWindowName).btnPrintAll.Enabled := false
ENDIF
IF p1 = 2
&(self:cWindowName).btnfirst.Enabled := true
&(self:cWindowName).btnnext.Enabled := true
&(self:cWindowName).btnprev.Enabled := true
&(self:cWindowName).btnlast.Enabled := true
&(self:cWindowName).btndel.Enabled := true
&(self:cWindowName).btnclose.Enabled := true
&(self:cWindowName).btnsave.Enabled := false
&(self:cWindowName).btncancel.Enabled := false
&(self:cWindowName).btnedit.Enabled := true
&(self:cWindowName).btnadd.Enabled := true
&(self:cWindowName).textNameBrowse.Enabled := True
&(self:cWindowName).Grid1Browse.Enabled := True
&(self:cWindowName).textName.Enabled := false
&(self:cWindowName).text2.Enabled := False
&(self:cWindowName).text3.Enabled := False
&(self:cWindowName).text4.Enabled := False
&(self:cWindowName).text5.Enabled := False
&(self:cWindowName).text6.Enabled := False
&(self:cWindowName).text7.Enabled := False
&(self:cWindowName).text8.Enabled := False
&(self:cWindowName).text9.Enabled := False
&(self:cWindowName).text10.Enabled := False
&(self:cWindowName).text11.Enabled := False
&(self:cWindowName).text12.Enabled := False
&(self:cWindowName).btnPrintOne.Enabled := True
&(self:cWindowName).btnPrintAll.Enabled := True
ENDIF
self:OperationMode := p1
Return 0
Method GetCount(nCount) Class CustDataBrowseClass
Local nText2 ,nText3,nText4,nText5,zzxx
zzxx := &(self:cWindowName).textNamebrowse.Enabled
IF nCount=2
Self:cText2 := &(self:cWindowName).text2.Value
Self:cText2 = ALLTRIM ( Self:cText2 )
IF zzxx=False
&(self:cWindowName).textNamebrowse.Value := Self:cText2
ENDIF
nText2  = LEN(Self:cText2)
&(self:cWindowName).Tmax2.Value := nText2
ELSEIF nCount=3
Self:cText3 := &(self:cWindowName).text3.Value
Self:cText3 = ALLTRIM ( Self:cText3 )
IF zzxx=False
&(self:cWindowName).textNamebrowse.Value := Self:cText3
ENDIF
nText3  = LEN(Self:cText3)
&(self:cWindowName).Tmax3.Value := nText3
ELSEIF nCount=4
Self:cText4 := &(self:cWindowName).text4.Value
Self:cText4 = ALLTRIM ( Self:cText4 )
IF zzxx=False
&(self:cWindowName).textNamebrowse.Value := Self:cText4
ENDIF
nText4  = LEN(Self:cText4)
&(self:cWindowName).Tmax4.Value := nText4
ELSEIF nCount=5
Self:cText5 := &(self:cWindowName).text5.Value
Self:cText5 = ALLTRIM ( Self:cText5 )
IF zzxx=False
&(self:cWindowName).textNamebrowse.Value := Self:cText5
ENDIF
nText5  = LEN(Self:cText5)
&(self:cWindowName).Tmax5.Value := nText5
ELSE
IF zzxx=False
Self:cName := &(self:cWindowName).textName.Value
Self:cName = ALLTRIM ( Self:cName )
&(self:cWindowName).textNamebrowse.Value := Self:cName
ENDIF
ENDIF
Return 0
Method Print Class CustDataBrowseClass
Local myout
myout = oCustomersRebort:ShowWindow()
Return 0
Method CheckText Class CustDataBrowseClass
Self:cName := &(self:cWindowName).textName.Value
Self:cName = ALLTRIM ( Self:cName )
IF Self:cName==""
MyOut := MSGBOX("ﬁ„ » ⁄»∆… Õﬁ· «·«”„ ","⁄›Ê«")
Return 0
ENDIF
Self:ncheck := 1
c2 := &(self:cWindowName).Tmax2.Value
c3 := &(self:cWindowName).Tmax3.Value
c4 := &(self:cWindowName).Tmax4.Value
c5 := &(self:cWindowName).Tmax5.Value
IF c2<>0
Self:ncheck := 0
ELSEIF c3<>0
Self:ncheck := 0
ELSEIF c4<>0
Self:ncheck := 0
ELSEIF c5<>0
Self:ncheck := 0
ENDIF
IF Self:nCheck==0
Self:Column := "CustName"
myout = self:connect()
Self:NoSave := 1
Self:Cname = ALLTRIM ( Self:Cname )
&(self:cWindowName).textNamebrowse.Value := ""
&(self:cWindowName).textNamebrowse.Value := Self:cname
C1 := &(self:cWindowName).Grid1browse.ItemCount
Self:NoSave := 0
Self:Column := "Custall"
myout = self:connect()
IF c1>0
IF self:addrec==False
IF ALLTRim(Self:cName) <>AllTrim(Self:cNameEdit)
MyOut := MSGExclamation(" «·«”„ «·Õ«·Ì „ÊÃÊœ ”«»ﬁ«. «‰Ÿ— «·ÃœÊ·.... ·«Ì„ﬂ‰ ﬁ»Ê· «· ﬂ—«— ","⁄›Ê«")
Return 0
ENDIF
ELSE
MyOut := MSGBOX(" «·«”„ «·Õ«·Ì „ÊÃÊœ ”«»ﬁ« .«‰Ÿ— «·ÃœÊ·....⁄›Ê« ·«Ì„ﬂ‰ ﬁ»Ê· «· ﬂ—«—  ","⁄›Ê«")
Return 0
ENDIF
ENDIF
MyOut = Self:saverecord()
&(self:cWindowName).textNamebrowse.Value := ""
ELSE
MyOut := MSGBOX("ﬁ„ » ⁄»∆… Õﬁ· Ê«Õœ ⁄·Ï «·«ﬁ· „‰ ÕﬁÊ· «·«—ﬁ«„ ","⁄›Ê«")
ENDIF
Return 0
Method PrintOne Class CustDataBrowseClass
Self:TableName := "Customerone"
myout = self:connect()
MyOut = Self:saverecord()
myout = oCustomerOneRebort:ShowWindow()
Self:TableName := "Customers"
myout = self:connect()
myout = self:search()
Return 0
Method BeforeEdite Class CustDataBrowseClass
Self:CnameEdit := &(self:cWindowName).textName.Value
Myout = Self:EditRecord()
Return 0
Method closewindow(nClose) Class CustDataBrowseClass
IF nClose=1
&(self:cWindowName).Release ( )
ELSE
myout = self:disconnect()
ENDIF
Return 0
Method AutoGotoRecord Class CustDataBrowseClass
IF self:LFindRecord = true .and. self:OperationMode = 2
self:oRS:Find(self:CFindExpr)
mycheck := self:oRS:EOF()
IF mycheck = true
self:oRS:MOVEPREVIOUS()
ENDIF
IF iswindowdefined( &(self:cWindowName) )
myout = self:showrecord()
&(self:cWindowName).SetFocus ( )
ENDIF
ENDIF
self:LFindRecord := false
self:CFindExpr := ""
Return 0
Method BeforeSearch Class CustDataBrowseClass
&(self:cWindowName).grid1Browse.DeleteAllItems ( )
&(self:cWindowName).grid1Browse.Value := 0
&(self:cWindowName).textcount.Value := 0
Return 0
Method SearchAdd(temp_array) Class CustDataBrowseClass
Local nItems
&(self:cWindowName).grid1Browse.AddItem ( temp_array )
nItems := &(self:cWindowName).Grid1browse.ItemCount
cItems = STR ( nItems )
cItems = ALLTRIM ( cItems )
&(self:cWindowName).Grid1browse.cell(nItems,5) := cItems
&(self:cWindowName).textcount.Value := nItems
Return 0
Method SetTimer(p1) Class CustDataBrowseClass
&(self:cWindowName).Timer1.Enabled := p1
Return 0
Method GetSearchValue Class CustDataBrowseClass
cName := &(self:cWindowName).textNameBrowse.Value
Return cName
Method OpenDataWindow Class CustDataBrowseClass
Local nvalue,myout
nvalue := &(self:cWindowName).grid1browse.Value
IF nvalue > 0
myout = self:ShowDataWindow(nvalue)
&(self:cWindowName).Grid1Browse.SetFocus ( )
ENDIF
Return 0
Method ShowDataWindow(nvalue) Class CustDataBrowseClass
self:LFindRecord := true
self:CFindExpr := self:primarykey+"= '"+self:resultprimarykeys[nvalue]+"' "
myout = self:ShowWindow()
Return 0
Method mytimer Class CustDataBrowseClass
myout = self:search()
&(self:cWindowName).Timer1.Enabled := false
Return 0

End Of Resistance

*-------------------------------------------------------------------*
