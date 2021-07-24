*---------------------------------------------------------------------------*
* Time : 00:37:41    Date : 11/10/2013
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
Function loadABOUT
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

Resistance R_ABOUT_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_ABOUT_19art1() code
Class AboutClass
Data cWindowName init "AboutWindow"
Method ShowWindow
Method closewindow
EndClass
Method showwindow Class AboutClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 723 ;
HEIGHT 453 ;
ICON "PWCTICON" ;
TITLE "About" ;
CHILD ;
NOMINIMIZE ;
NOMAXIMIZE ;
NOSIZE ;
BACKCOLOR {0,128,255} 
@ 347 ,12 BUTTONEX btnClose;
CAPTION "«€‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹·«ﬁ";
ON CLICK self:closewindow()  ;
WIDTH 630 HEIGHT 40 ;
FONT "arial" SIZE 20 ;
TOOLTIP ""
@ 10 ,7 FRAME Frame3;
WIDTH 645 ;
HEIGHT 323 ;
FONT "Arial" ;
SIZE 9 ;
BACKCOLOR {236,233,216} ;
FONTCOLOR {0,0,0} ;
TRANSPARENT 
@ 40 ,10 LABEL lbl18 ;
VALUE "„›ﬂ—… «· Ì·›Ê‰«  «·«Õ —«›Ì… " ;
WIDTH 590 ;
HEIGHT 60 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 114 ,10 LABEL lbl19 ;
VALUE " ’„Ì„ Ê»—„Ã… / „Õ„œ «·Ã»·" ;
WIDTH 590 ;
HEIGHT 60 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 188 ,10 LABEL lbl20 ;
VALUE " „ ⁄„· Â–« «· ÿ»Ìﬁ »Ê«”ÿ…  ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ" ;
WIDTH 590 ;
HEIGHT 60 ;
FONT "Arial" SIZE 24  ;
BACKCOLOR {255,255,255} ;
TRANSPARENT ;
CENTERALIGN ;
FONTCOLOR {0,0,0}
@ 262,10 HYPERLINK Hyper1;
VALUE "··Õ’Ê· ⁄·Ï „‰Õ… „Ã«‰Ì… · ⁄·„ «· ﬁ‰Ì… «·»—„Ã… »œÊ‰ ﬂÊœ ..«÷€ÿ Â‰« " ;
ADDRESS "http://doublesvsoop.sourceforge.net/giftphp/main.htm";
WIDTH 630 ;
HEIGHT 40 ;
FONT "Arial" ;
SIZE 20 ;
BACKCOLOR {255,255,255} ;
FONTCOLOR {0,0,255} ;
TRANSPARENT 
END WINDOW
&(self:cWindowName).Center ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF
Return 0
Method closewindow Class AboutClass
&(self:cWindowName).Release ( )
Return 0

End Of Resistance

*-------------------------------------------------------------------*
