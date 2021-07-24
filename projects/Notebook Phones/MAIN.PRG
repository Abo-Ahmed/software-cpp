*---------------------------------------------------------------------------*
* Time : 16:46:35    Date : 11/25/2013
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
Function Main
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

	Resistance WIN32EVENTS() Address Code Unit : WIN32EVENTS

  ADD RESISTANCE WIN32EVENTS 


Resistance R_MAIN_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

  FUNCTION STARTSERVER()
   	Server FireON
  RETURN

  RESISTANCE WIN32EVENTS() CODE
	   DO EVENTS
  RETURN

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_MAIN_19art1() code
Set Procedure to "About.PRG"
Set Procedure to "Database.PRG"
Set Procedure to "CustomersDataBrowse.PRG"
Set Procedure to "ReportParent.PRG"
Set Procedure to "customersRebort.PRG"
Set Procedure to "CUSTOMERONEREBORT.PRG"
oAbout = AboutClass()
oCustDataBrowse = CustDataBrowseClass()
oCustomersRebort = CustomersRebortClass()
oCustomerOneRebort = CustomerOneRebortClass()
if !iswindowdefined( win1 )
DEFINE WINDOW win1 ;
AT 10 ,10 ;
WIDTH 500 ;
HEIGHT 400 ;
ON INIT SysStart()  ;
ICON "PWCTICON" ;
TITLE "...»—‰«„Ã «·„›ﬂ—… «·«Õ —«›Ì… ·Õ›Ÿ «·«—ﬁ«„ ..." ;
MAIN ;
BACKCOLOR {236,233,216} 
DEFINE MAIN MENU
POPUP "„·›"
MENUITEM "ÕÊ· «·»—‰«„Ã" Action oAbout:ShowWindow()
MENUITEM "⁄—÷ / «÷«›…/  ⁄œÌ· /ÿ»«⁄… «·»Ì«‰« " Action oCustDataBrowse:ShowWindow()
MENUITEM "«€‹‹‹·«ﬁ" Action closesystem()
END POPUP
END MENU
DEFINE STATUSBAR 
STATUSITEM "Ready"
KEYBOARD
CLOCK
END STATUSBAR
END WINDOW
win1.Maximize ( )
ACTIVATE WINDOW win1
EndIF
Proc closesystem
win1.Release ( )
Return Nil
procedure SysStart()
Execute File "InstallODBC.bat" MINIMIZE
MyOut = oCustDataBrowse:ShowWindow()
return

End Of Resistance

INIT PROCEDURE Init_MAIN
START DOUBLES
SS_ESARES("Circuits\Main\Main\Main",50)
SS_ESAGOAL("Circuits\Main\Main\Main","Main")
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'About.PRG'",1,1)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'Database.PRG'",2,2)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CustomersDataBrowse.PRG'",3,3)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'ReportParent.PRG'",4,4)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'customersRebort.PRG'",5,5)
SS_ESASTEP("Circuits\Main\Main\Main","Set Procedure to 'CUSTOMERONEREBORT.PRG'",6,6)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oAbout of Class AboutClass",7,7)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oCustDataBrowse of Class CustDataBrowseClass",8,8)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oCustomersRebort of Class CustomersRebortClass",9,9)
SS_ESASTEP("Circuits\Main\Main\Main","Create Object oCustomerOneRebort of Class CustomerOneRebortClass",10,10)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Window  ( win1 ) , Title : '...»—‰«„Ã «·„›ﬂ—… «·«Õ —«›Ì… ·Õ›Ÿ «·«—ﬁ«„ ...'",11,15)
SS_ESASTEP("Circuits\Main\Main\Main","Event: ON INIT : Action SysStart",16,16)
SS_ESASTEP("Circuits\Main\Main\Main","Window Properties",17,21)
SS_ESASTEP("Circuits\Main\Main\Main","START OF MAIN MENU",22,22)
SS_ESASTEP("Circuits\Main\Main\Main","DEFINE POPUP '„·›'",23,23)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( 'ÕÊ· «·»—‰«„Ã' )",24,24)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '⁄—÷ / «÷«›…/  ⁄œÌ· /ÿ»«⁄… «·»Ì«‰« ' )",25,25)
SS_ESASTEP("Circuits\Main\Main\Main","Define ITEM ( '«€‹‹‹·«ﬁ' )",26,26)
SS_ESASTEP("Circuits\Main\Main\Main","END OF POPUP",27,27)
SS_ESASTEP("Circuits\Main\Main\Main","END OF MAIN MENU",28,28)
SS_ESASTEP("Circuits\Main\Main\Main","Define New Statusbar",29,30)
SS_ESASTEP("Circuits\Main\Main\Main","Define New StatusItem ( 'Ready' )",31,32)
SS_ESASTEP("Circuits\Main\Main\Main","Keyboard",33,34)
SS_ESASTEP("Circuits\Main\Main\Main","Clock",35,36)
SS_ESASTEP("Circuits\Main\Main\Main","End Statusbar",37,38)
SS_ESASTEP("Circuits\Main\Main\Main","End Of Window",39,40)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Maximize ( )",41,41)
SS_ESASTEP("Circuits\Main\Main\Main","Activate window",42,44)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure closesystem",45,45)
SS_ESASTEP("Circuits\Main\Main\Main","win1.Release ( )",46,46)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",47,47)
SS_ESASTEP("Circuits\Main\Main\Main","Define Procedure SysStart - Event : INIT",48,48)
SS_ESASTEP("Circuits\Main\Main\Main","Execute File 'InstallODBC.bat' , MINIMIZE",49,49)
SS_ESASTEP("Circuits\Main\Main\Main","MyOut = oCustDataBrowse.ShowWindow()",50,50)
SS_ESASTEP("Circuits\Main\Main\Main","End of Procedure",51,51)
Return
*-------------------------------------------------------------------*
