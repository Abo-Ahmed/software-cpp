*---------------------------------------------------------------------------*
* Time : 16:44:22    Date : 11/25/2013
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
Function loadDATABASE
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

Resistance R_DATABASE_19art1() address Code Unit : Circuits\Main\Main\Main


CALL RESISTANCE Circuits\Main\Main\Main
Return 

* Resistance Code Unit : Circuits\Main\Main\Main
Resistance R_DATABASE_19art1() code
Class SYSTEMDATABASE
Data oCon init 0
Data oRS init 0
Data addrec init false
Data LFindRecord init false
Data CFindExpr init ""
Data OperationMode init 2
Data ResultPrimaryKeys init {}
Data username init "systemdatabase"
Data password init "sysdatabase123"
Data DataSourceName init "MyProjectData"
Data databasename init ""
Data complexsearch init ""
Data NoSave init 0
Method ShowRecord
Method EditRecord
Method LoadLookupTable
Method LookupIDtoIndex
Method connect
Method disconnect
Method firstrecord
Method nextrecord
Method lastrecord
Method prevrecord
Method CancelRecord
Method addrecord
Method search
Method delrecord
Method SaveRecord
Method OnBeforeDelete
Method OnAfterAddEdit
Method OnBeforeEdit
Method OnAddClick
Method beforesearch
Method setTimer
Method searchadd
Method getsearchvalue
Method LoadLookupTable2
Method checkdata
EndClass
Method ShowRecord Class SYSTEMDATABASE
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:ADO2Class()
ELSE
myout = self:ClearRecord()
ENDIF
myout = self:Class2UserInterface()
Return 0
Method EditRecord Class SYSTEMDATABASE
mymax := self:oRS:RecordCount
IF mymax > 0
myout = self:setmode(1)
ENDIF
Return 0
Method LookupIDtoIndex(IDVar,ArrayRef) Class SYSTEMDATABASE
Local nMax,x
myindex := 1
nMax  = LEN(ArrayRef)
FOR x = 1 TO nMax STEP 1
IF ArrayRef[x]= IDVar
myindex := x
Exit
ENDIF
Next
Return myindex
Method LoadLookupTable(cTableName,cColumnName,aArrayNameRef,cColumnName2,aArrayNameRef2) Class SYSTEMDATABASE
Local x,nMax,temp_value,temp_value2,oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn='+self:DataSourceName+';uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from " + cTableName,oCon,3,3 )
nMAX := oRS:RecordCount
aArrayNameRef := {}
aArrayNameRef2 := {}
FOR x = 1 TO nMax STEP 1
temp_value := oRS:fields:item(cColumnName):value
temp_value2 := oRS:fields:item(cColumnName2):value
IF valtype(temp_value) = "N"
temp_Value = STR ( temp_value )
temp_Value = ALLTRIM ( temp_value )
ENDIF
AADD( aArrayNameRef , temp_value)
AADD( aArrayNameRef2 , temp_value2)
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
Return 0
Method connect Class SYSTEMDATABASE
BEGIN SEQUENCE WITH { |e| break(e) }
self:oCon := TOLEAUTO():NEW( "ADODB.Connection" )
self:oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn='+self:DataSourceName+';uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
self:oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
self:oRS:CursorType := 1
self:oRS:ActiveConnection := self:oCon
self:oRS:open ( "Select * from " + self:TableName + " where 1 = 1 " + self:complexsearch,self:oCon,3,3 )
RECOVER USING cError
MyOut := MSGBOX("The system cann't connect to the database","Sorry")
Quit
END SEQUENCE
Return 0
Method disconnect Class SYSTEMDATABASE
self:oRS:Close()
self:oCon:CLOSE()
Return 0
Method firstrecord Class SYSTEMDATABASE
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEFIRST()
myout = self:showrecord()
ENDIF
Return 0
Method lastrecord Class SYSTEMDATABASE
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVELAST()
myout = self:showrecord()
ENDIF
Return 0
Method nextrecord Class SYSTEMDATABASE
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVENEXT()
mycheck := self:oRS:EOF()
IF mycheck
self:oRS:MOVEPREVIOUS()
MyOut := MSGBOX("Â–« «Œ— ”Ã·","⁄›Ê«")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method prevrecord Class SYSTEMDATABASE
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
MyOut := MSGBOX("Â–« «·”Ã· «·«Ê·","⁄›Ê«")
ELSE
myout = self:showrecord()
ENDIF
ENDIF
Return 0
Method CancelRecord Class SYSTEMDATABASE
myout = self:setmode(2)
myout = self:ShowRecord()
self:addrec := false
Return 0
Method AddRecord Class SYSTEMDATABASE
myout = self:onAddClick()
self:addrec := true
myout = self:setmode(1)
myout = self:ClearRecord()
myout = self:Class2UserInterface()
Self:CnameEdit := ""
Return 0
Method search Class SYSTEMDATABASE
Local oCon,oRS,cName,myMax,x,x2,mymax2,vname,vname2,vid
cName = self:getsearchvalue()
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn='+self:DataSourceName+';uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
IF Self:NoSave =0
oRS:CursorType := 0
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" like '" + "%"+cName + "%'" + self:complexsearch,oCon,3,3 )
ELSEIF Self:NoSave =1
oRS:CursorType := 0
oRS:ActiveConnection := oCon
oRS:open ( "Select * from "+self:tableName +" where "+self:column+" =  '" +        cName      + "'" + self:complexsearch,oCon,3,3 )
ELSE
ENDIF
mymax := oRS:RecordCount
self:ResultPrimaryKeys := {}
myout = self:BeforeSearch()
IF mymax > 0
FOR x = 1 TO mymax STEP 1
vname := oRS:fields:item(self:column):value
temp_array := {}
mymax2  = LEN(self:columns)
FOR x2 = 1 TO mymax2 STEP 1
vname2 := oRS:fields:item(self:columns[x2]):value
IF valtype(vname2) = "N"
VNAME2 = STR ( VNAME2 )
VNAME2 = ALLTRIM ( VNAME2 )
ENDIF
AADD( temp_array , vname2)
Next
myout = self:SearchAdd(temp_array)
vid := oRS:fields:item(self:PrimaryKey):value
vid = STR ( vid )
AADD( self:ResultPrimaryKeys , vid)
oRS:MOVENEXT()
Next
ENDIF
oRS:Close()
oCon:CLOSE()
Return 0
Method delrecord Class SYSTEMDATABASE
mymax := self:oRS:RecordCount
IF mymax > 0
MyOut := MSGOKCANCEL(" Â·  —Ìœ Õ–› «·”Ã· «·Õ«·Ìø","Õ–› ”Ã·")
IF myout = false
Return 0
ENDIF
myout = self:OnBeforeDelete()
self:oRS:DELETE()
self:oRS:UPDATE()
mymax := self:oRS:RecordCount
IF mymax > 0
self:oRS:MOVEPREVIOUS()
mycheck := self:oRS:BOF()
IF mycheck
self:oRS:MOVENEXT()
ENDIF
ENDIF
myout = self:showrecord()
myout = self:setTimer(true)
ELSE
MyOut := MSGBOX("·« ÌÊÃœ ”Ã·« ","⁄›Ê«")
ENDIF
Return 0
Method SaveRecord Class SYSTEMDATABASE
myout = self:CheckData()
IF myout = false
Return 0
ENDIF
IF self:addrec = true
self:oRS:ADDNEW()
ELSE
myout = self:OnBeforeEdit()
ENDIF
myout = self:setmode(2)
myout = self:UserInterface2Class()
myout = self:Class2ADO()
self:oRS:UPDATE()
IF self:addrec = true
self:oRS:MOVELAST()
ENDIF
self:addrec := false
myout = self:SetTimer(true)
myout = self:OnAfterAddEdit()
Return 0
Method OnBeforeDelete Class SystemDatabase
Return 0
Method OnBeforeEdit Class SystemDatabase
Return 0
Method OnAfterAddEdit Class SystemDatabase
Return 0
Method onAddClick Class SystemDatabase
Return 0
Method BeforeSearch Class SystemDatabase
Return 0
Method SearchAdd(p1) Class SystemDatabase
Return 0
Method SetTimer Class SystemDatabase
Return 0
Method GetSearchValue Class SystemDatabase
Return ""
Method LoadLookupTable2(cTableName,cColumnName,aArrayNameRef,cColumnName2,aArrayNameRef2) Class SYSTEMDATABASE
Local x,nMax,temp_value,temp_value2,oCon,oRS
oCon := TOLEAUTO():NEW( "ADODB.Connection" )
oCon:open ( 'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="dsn='+self:DataSourceName+';uid='+self:username+';pwd='+self:password+'";Initial Catalog='+self:databasename )
oRS := TOLEAUTO():NEW( "ADODB.Recordset" )
oRS:CursorType := 1
oRS:ActiveConnection := oCon
oRS:open ( "Select * from " + cTableName +" where 1=1 "+ self:complexsearch,oCon,3,3 )
nMAX := oRS:RecordCount
aArrayNameRef := {}
aArrayNameRef2 := {}
FOR x = 1 TO nMax STEP 1
temp_value := oRS:fields:item(cColumnName):value
temp_value2 := oRS:fields:item(cColumnName2):value
IF valtype(temp_value) = "N"
temp_Value = STR ( temp_value )
temp_Value = ALLTRIM ( temp_value )
ENDIF
AADD( aArrayNameRef , temp_value)
AADD( aArrayNameRef2 , temp_value2)
oRS:MOVENEXT()
Next
oRS:Close()
oCon:CLOSE()
Return 0
Method CheckData Class SystemDatabase
Return true

End Of Resistance

*-------------------------------------------------------------------*
