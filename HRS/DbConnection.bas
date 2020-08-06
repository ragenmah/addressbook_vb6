Attribute VB_Name = "DbConnection"
Option Explicit
Public MainCon As New ADODB.Connection
Public rs As New ADODB.Recordset
Dim servername As String
Dim serusername As String
Dim serpassword As String
Dim database As String

Public Sub connectDatabase(severname As String, serusername As String, serpassword As String, database As String)
If MainCon.State = 1 Then
MainCon.Close
End If
'MainCon.ConnectionString
'MainCon.Open "Data Source=" + servername + ";Initial Catalog=" & database & ";User ID=" + serusername + ";Password=" + serpassword + ";"
'MainCon.Open "Driver=Sql Server;Server=" + servername + "Database= " & database & ";uid=" + serusername + ";pwd=" + serpassword + ";"
MainCon.Open "Provider=SQLOLEDB.1;Password=" + serpassword + ";Persist Security Info=True;User ID=" + serusername + ";Initial Catalog=" & database & ";Data Source=" + servername + ""
'MsgBox "Connection successfull", vbInformation
End Sub


Public Sub fetchdata(sql As String)
If rs.State = 1 Then
rs.Close


End If
rs.CursorLocation = adUseClient
rs.Open sql, MainCon, adOpenDynamic, adLockPessimistic
End Sub

