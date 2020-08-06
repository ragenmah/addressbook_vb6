Attribute VB_Name = "DbConnection"
Option Explicit
Public MainCon As New ADODB.Connection
Public recSet As New ADODB.Recordset

Public Sub connectDatabase(servername, serusername, serpassword, database)
If MainCon.State = 1 Then
MainCon.Close
End If
MainCon.Open "Provider=SQLOLEDB.1;Password=" + serpassword + ";Persist Security Info=True;User ID=" + serusername + ";Initial Catalog=" & database & ";Data Source=" + servername + ""
MsgBox "Connection successfull", vbInformation
End Sub


Public Sub fetchdata(ByVal sql As String)
If recSet.State = 1 Then
recSet.Close
End If
recSet.Open sql, MainCon, adOpenDynamic, adLockPessimistic
End Sub
