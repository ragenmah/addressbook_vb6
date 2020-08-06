VERSION 5.00
Begin VB.Form HouseMaster 
   Caption         =   "House Master"
   ClientHeight    =   4770
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8205
   LinkTopic       =   "Form1"
   ScaleHeight     =   4770
   ScaleWidth      =   8205
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FrameBottom 
      Height          =   855
      Left            =   0
      TabIndex        =   2
      Top             =   3840
      Width           =   8175
      Begin VB.CommandButton Btncontinue 
         Caption         =   "&Continue"
         Height          =   375
         Left            =   4320
         TabIndex        =   23
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnCancel 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   6600
         TabIndex        =   22
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnSave 
         Caption         =   "&Save"
         Height          =   375
         Left            =   5520
         TabIndex        =   21
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame FrameMid 
      Height          =   2775
      Left            =   0
      TabIndex        =   1
      Top             =   960
      Width           =   8175
      Begin VB.TextBox TxtContact 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   4800
         TabIndex        =   19
         Top             =   1080
         Width           =   2415
      End
      Begin VB.TextBox TxtAddress 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   4800
         TabIndex        =   17
         Top             =   600
         Width           =   2415
      End
      Begin VB.TextBox TxtPassword 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1320
         PasswordChar    =   "$"
         TabIndex        =   15
         Top             =   2040
         Width           =   2415
      End
      Begin VB.TextBox TxtUsername 
         Height          =   285
         Left            =   1320
         TabIndex        =   12
         Top             =   1680
         Width           =   2415
      End
      Begin VB.TextBox TxtOwnerName 
         Height          =   285
         Left            =   1320
         TabIndex        =   10
         Top             =   1320
         Width           =   2415
      End
      Begin VB.TextBox TxtHouseName 
         Height          =   285
         Left            =   1320
         TabIndex        =   8
         Top             =   960
         Width           =   2415
      End
      Begin VB.TextBox TxtHouseId 
         Height          =   285
         Left            =   1320
         TabIndex        =   6
         Top             =   600
         Width           =   2415
      End
      Begin VB.Label Label8 
         Caption         =   "Contact No."
         Height          =   255
         Left            =   3840
         TabIndex        =   20
         Top             =   1080
         Width           =   855
      End
      Begin VB.Label Label7 
         Caption         =   "Address"
         Height          =   255
         Left            =   3960
         TabIndex        =   18
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label6 
         Caption         =   "Password"
         Height          =   255
         Left            =   480
         TabIndex        =   16
         Top             =   2040
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "User Name"
         Height          =   255
         Left            =   360
         TabIndex        =   13
         Top             =   1680
         Width           =   855
      End
      Begin VB.Label Label3 
         Caption         =   "Owner Name"
         Height          =   495
         Left            =   360
         TabIndex        =   11
         Top             =   1320
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "House Name"
         Height          =   255
         Left            =   360
         TabIndex        =   9
         Top             =   960
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "House ID"
         Height          =   255
         Left            =   360
         TabIndex        =   7
         Top             =   600
         Width           =   735
      End
   End
   Begin VB.Frame FrameUp 
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   8175
      Begin VB.CommandButton BtnDelete 
         Caption         =   "&Delete"
         Height          =   375
         Left            =   2400
         TabIndex        =   5
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnEdit 
         Caption         =   "&Edit"
         Height          =   375
         Left            =   1320
         TabIndex        =   4
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnNew 
         Caption         =   "&New"
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Label Label5 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   3120
      Width           =   735
   End
End
Attribute VB_Name = "HouseMaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public sql As String

Public Sub controlMode(rm As Boolean, fld As Boolean)
BtnNew.Enabled = rm
BtnEdit.Enabled = rm
BtnDelete.Enabled = rm

TxtHouseId.Enabled = fld
TxtHouseName.Enabled = fld
TxtOwnerName.Enabled = fld
TxtUserName.Enabled = fld
TxtPassword.Enabled = fld
TxtAddress.Enabled = fld
TxtContact.Enabled = fld

BtnSave.Enabled = fld
BtnCancel.Enabled = fld

End Sub

Sub clean()
If Me.Tag = "New" Then
TxtHouseId.Text = "Auto"
Else
TxtHouseId.Text = ""
End If
TxtHouseName.Text = ""
TxtOwnerName.Text = ""
TxtUserName.Text = ""
TxtPassword.Text = ""
TxtAddress.Text = ""
TxtContact.Text = ""
End Sub

Private Sub BtnCancel_Click()
'Unload Me
controlMode True, False
clean
Close
End Sub

Private Sub Btncontinue_Click()
Unload Me
FrmLogin.Show
End Sub

Private Sub BtnDelete_Click()
Me.Tag = "Delete"
TxtHouseId.Text = ""
controlMode False, True
End Sub

Private Sub BtnEdit_Click()
Me.Tag = "Edit"
TxtHouseId.Text = ""
controlMode False, True
End Sub

Private Sub BtnNew_Click()
Me.Tag = "New"
TxtHouseId.Text = "Auto"
controlMode False, True
End Sub

Private Sub BtnSave_Click()
If Me.Tag = "New" Then
 sql = "Insert Into Housemaster ([HouseName],[OwnerName],[UserName],[Password],[Address],[ContactNo]) VALUES"
 sql = sql + "('" & TxtHouseName.Text & "',"
sql = sql + "'" & TxtOwnerName.Text & "',"
sql = sql + "'" & TxtUserName.Text & "',"
sql = sql + "'" & TxtPassword.Text & "',"
sql = sql + "'" & TxtAddress.Text & "',"
sql = sql + "'" & TxtContact.Text & "')"
  MainCon.Execute sql
  clean
     MsgBox "Data inserted successfully!\n Click on Continue Button To Continue...", vbInformation
      Btncontinue.Visible = True
ElseIf Me.Tag = "Edit" Then
 sql = "Update Housemaster set "
 sql = sql + "[HouseName] ='" & TxtHouseName.Text & "'"
 sql = sql + ",[OwnerName] = '" & TxtOwnerName.Text & "'"
 sql = sql + ",[UserName] = '" & TxtUserName.Text & "'"
 sql = sql + ",[Password] = '" & TxtPassword.Text & "'"
 sql = sql + ",[Address] = '" & TxtAddress.Text & "'"
 sql = sql + ",[ContactNo] = '" & TxtContact.Text & "'"
 sql = sql + "where HouseID=" & TxtHouseId.Text & ""
  MainCon.Execute sql
  clean

     MsgBox "Data Edited successfully!", vbInformation
ElseIf Me.Tag = "Delete" Then
 sql = "delete from Housemaster where HouseID=" & TxtHouseId.Text & ""
 MainCon.Execute sql
  clean
     MsgBox "Data Deleted successfully!", vbInformation
End If

End Sub


Private Sub Form_Load()
controlMode True, False
Btncontinue.Visible = True
End Sub





Private Sub TxtHouseId_Change()
If Me.Tag = "Edit" Then
loadDataByID
ElseIf Me.Tag = "Delete" Then
loadDataByID
End If
End Sub

Private Sub TxtHouseId_KeyDown(KeyCode As Integer, Shift As Integer)

 If KeyCode = 112 Then
 
 FrmPickList.Show
 End If
 
End Sub

Private Sub loadDataByID()
If Me.Tag = "New" Then
    TxtHouseId.Text = "Auto"
ElseIf Me.Tag = "Edit" Or Me.Tag = "Delete" Then
'If CmbID.Text! = "Auto" Then
If rs.State = 1 Then rs.Close
rs.CursorLocation = adUseClient
  rs.Open "select * from Housemaster where Houseid='" & TxtHouseId.Text & "'", MainCon, adOpenDynamic
  
  If rs.RecordCount > 0 Then
     If rs.EOF = True Then
     MsgBox ("End of Table")
     Else
        TxtHouseName.Text = rs!HouseName
        TxtOwnerName.Text = rs!OwnerName
        TxtUserName.Text = rs!UserName
        TxtPassword.Text = rs!Password
        TxtAddress.Text = rs!Address
        TxtContact.Text = rs!ContactNo
    End If
      
   End If
   If rs.RecordCount = 0 Then
  
   MsgBox "No data found to display in this HouseID.", vbInformation
  
   End If
'End If
End If

'recSet.Close
End Sub

