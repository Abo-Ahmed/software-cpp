*---------------------------------------------------------------------------*
* Time : 00:52:32    Date : 11/09/2013
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
Function loadREPORTPARENT
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

Resistance R_REPORTPARENT_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_REPORTPARENT_19art1() code
Class Report_Base
Data database init GetStartUpFolder()+"\data\sysdata.mdb"
Data outputfile init GetStartUpFolder()+"\tempfile.snp"
Data myaccessobj init 0
Data oActiveX init 0
Data Filter init ""
Data dbpassword init "sysdatabase123"
Data outputfile2 init GetStartUpFolder()+"\tempfile.html"
Data outputfile3 init GetStartUpFolder()+"\tempfile.xls"
Data ComplexSearch init ""
Method showreport
Method printreport
Method exportreport
Method exportreport2
EndClass
Method ShowReport Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,1 )
IF .not. empty(alltrim(self:filter))
self:myaccessobj:Reports(Self:ReportName):Filter := Self:Filter + Self:ComplexSearch
ELSE
self:myaccessobj:Reports(Self:ReportName):Filter := "1 = 1"  + Self:ComplexSearch
ENDIF
self:myaccessobj:DoCmd:OutputTo ( 3,,"SnapshotFormat(*.snp)",self:outputfile )
self:myaccessobj:Quit ( )
self:oactivex:OOLE:snapshotpath := self:outputfile
Return 0
Method PrintReport Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
IF .not. empty(alltrim(self:filter))
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,,,self:filter  + Self:ComplexSearch )
ELSE
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,,,"1 = 1 " + Self:ComplexSearch )
ENDIF
self:myaccessobj:Quit ( )
Return 0
Method ExportReport Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,1 )
IF .not. empty(alltrim(self:filter))
self:myaccessobj:Reports(Self:ReportName):Filter := Self:Filter + Self:ComplexSearch
ELSE
self:myaccessobj:Reports(Self:ReportName):Filter := "1 = 1" + Self:ComplexSearch
ENDIF
self:myaccessobj:DoCmd:OutputTo ( 3,,"HTML(*.html)",self:outputfile2 )
self:myaccessobj:Quit ( )
Execute File self:outputfile2
Return 0
Method ExportReport2 Class Report_Base
StartUpFolder := GetStartUpFolder()
self:myaccessobj := TOLEAUTO():NEW( "Access.Application" )
self:myaccessobj:OpenCurrentDatabase ( self:database,false,self:dbpassword )
self:myaccessobj:DoCmd:OpenReport ( self:ReportName,1 )
IF .not. empty(alltrim(self:filter))
self:myaccessobj:Reports(Self:ReportName):Filter := Self:Filter + Self:ComplexSearch
ELSE
self:myaccessobj:Reports(Self:ReportName):Filter := "1 = 1" + Self:ComplexSearch
ENDIF
self:myaccessobj:DoCmd:OutputTo ( 3,,"Microsoft Excel 97-2002 (*.xls)",self:outputfile3 )
self:myaccessobj:Quit ( )
Execute File self:outputfile3
Return 0

End Of Resistance

*-------------------------------------------------------------------*
