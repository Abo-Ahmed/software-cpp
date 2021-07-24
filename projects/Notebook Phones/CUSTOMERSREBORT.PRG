*---------------------------------------------------------------------------*
* Time : 00:42:31    Date : 11/13/2013
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
Function loadCUSTOMERSREBORT
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

Resistance R_CUSTOMERSREBORT_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_CUSTOMERSREBORT_19art1() code
class CustomersRebortClass From Report_Base
Data ReportName init "Customers"
Data cWindowName init "CustomersReportWindow"
Method showwindow
Method closewindow
Method SizeReport
EndClass
Method ShowWindow Class CustomersRebortClass
if !iswindowdefined( &(self:cWindowName) )
DEFINE WINDOW &(self:cWindowName) ;
AT 10 ,10 ;
WIDTH 743 ;
HEIGHT 471 ;
ON INIT self:ShowReport()  ;
ON SIZE self:SizeReport()  ;
ON MAXIMIZE self:SizeReport()  ;
ICON "PWCTICON" ;
TITLE "Report" ;
CHILD ;
BACKCOLOR {255,255,255} 
@ 394 ,36 BUTTONEX btn1;
CAPTION "«€·«ﬁ";
ON CLICK self:CloseWindow()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 394 ,540 BUTTONEX btn2;
CAPTION "ÿ»«⁄…";
ON CLICK self:PrintReport()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
@ 394 ,204 BUTTONEX btn3;
CAPTION " ÕœÌÀ / «‰⁄«‘";
ON CLICK self:ShowReport()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
self:oActiveX := TActiveX():New( self:cWindowName, "snpvw.Snapshot Viewer Control.1" , 18 , 32 , 659 , 357)
self:oActiveX:Load()
@ 394 ,372 BUTTONEX btn4;
CAPTION "HTML ’œÌ— «·Ï  ";
ON CLICK Self:ExportReport()  ;
WIDTH 150 HEIGHT 30 ;
FONT "Arial" SIZE 14 ;
TOOLTIP ""
END WINDOW
&(self:cWindowName).Maximize ( )
ACTIVATE WINDOW &(self:cWindowName)
EndIF
Return 0
Method CloseWindow Class CustomersRebortClass
&(self:cWindowName).Release ( )
Return 0
Method SizeReport Class CustomersRebortClass
Local tempvar1,tempvar2
tempvar1 := &(self:cWindowName).Width
tempvar2 := &(self:cWindowName).Height
self:oactivex:nWidth := tempvar1 - 84
self:oactivex:nHeight := tempvar2 - 125
&(self:cWindowName).btn1.Row := tempvar2-88
&(self:cWindowName).btn2.Row := tempvar2-88
&(self:cWindowName).btn3.Row := tempvar2-88
&(self:cWindowName).btn4.Row := tempvar2-88
self:oactivex:Show ( )
Return 0

End Of Resistance

*-------------------------------------------------------------------*
