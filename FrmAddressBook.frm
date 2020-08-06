VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form FrmAddressBook 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Address Book"
   ClientHeight    =   4095
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6390
   DrawStyle       =   1  'Dash
   Icon            =   "FrmAddressBook.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4095
   ScaleWidth      =   6390
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame4 
      Height          =   735
      Left            =   75
      TabIndex        =   6
      Top             =   3300
      Width           =   6255
      Begin MSComDlg.CommonDialog CDFile 
         Left            =   480
         Top             =   120
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.CommandButton cmdCancel 
         Appearance      =   0  'Flat
         Caption         =   "&CANCEL"
         Height          =   375
         Left            =   5040
         TabIndex        =   16
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdOK 
         Appearance      =   0  'Flat
         Caption         =   "&OK"
         Height          =   375
         Left            =   3960
         TabIndex        =   15
         Top             =   240
         Width           =   975
      End
      Begin VB.Label LblTime 
         AutoSize        =   -1  'True
         Caption         =   "ID"
         Height          =   195
         Left            =   2280
         TabIndex        =   19
         Top             =   240
         Width           =   165
      End
   End
   Begin VB.Frame Frame1 
      Height          =   855
      Left            =   75
      TabIndex        =   0
      Top             =   60
      Width           =   6255
      Begin VB.Timer Timer1 
         Interval        =   1000
         Left            =   5160
         Top             =   240
      End
      Begin VB.CommandButton CmdDelete 
         Caption         =   "&DELETE"
         Height          =   375
         Left            =   2520
         TabIndex        =   3
         Top             =   240
         Width           =   1095
      End
      Begin VB.CommandButton CmbEdit 
         Caption         =   "&EDIT"
         Height          =   375
         Left            =   1320
         TabIndex        =   2
         Top             =   240
         Width           =   1095
      End
      Begin VB.CommandButton CmbNew 
         Caption         =   "&NEW"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2415
      Left            =   75
      TabIndex        =   4
      Top             =   900
      Width           =   6255
      Begin VB.TextBox TxtPath 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   4080
         TabIndex        =   18
         Top             =   2040
         Visible         =   0   'False
         Width           =   1935
      End
      Begin VB.Frame Frame5 
         Appearance      =   0  'Flat
         BackColor       =   &H80000016&
         ForeColor       =   &H80000008&
         Height          =   1815
         Left            =   4080
         TabIndex        =   17
         Top             =   240
         Width           =   1935
         Begin VB.Image ImgInput 
            Height          =   1695
            Left            =   0
            Stretch         =   -1  'True
            Top             =   120
            Width           =   1935
         End
      End
      Begin VB.TextBox txtMobile 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   960
         TabIndex        =   10
         Top             =   1800
         Width           =   2895
      End
      Begin VB.TextBox txtAddress 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   960
         TabIndex        =   9
         Top             =   1320
         Width           =   2895
      End
      Begin VB.TextBox TxtName 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   960
         TabIndex        =   8
         Top             =   840
         Width           =   2895
      End
      Begin VB.ComboBox CmbID 
         Appearance      =   0  'Flat
         Height          =   315
         Left            =   960
         TabIndex        =   7
         Text            =   "Auto"
         Top             =   360
         Width           =   2895
      End
      Begin VB.Frame Frame3 
         Caption         =   "Frame3"
         Height          =   15
         Left            =   0
         TabIndex        =   5
         Top             =   2880
         Width           =   7695
      End
      Begin VB.Label Label4 
         Caption         =   "Mobile"
         Height          =   255
         Left            =   240
         TabIndex        =   14
         Top             =   1800
         Width           =   495
      End
      Begin VB.Label Label3 
         Caption         =   "Address"
         Height          =   255
         Left            =   240
         TabIndex        =   13
         Top             =   1320
         Width           =   855
      End
      Begin VB.Label Label2 
         Caption         =   "Name"
         Height          =   375
         Left            =   240
         TabIndex        =   12
         Top             =   840
         Width           =   495
      End
      Begin VB.Label Label1 
         Caption         =   "ID"
         Height          =   255
         Left            =   240
         TabIndex        =   11
         Top             =   480
         Width           =   255
      End
   End
End
Attribute VB_Name = "FrmAddressBook"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim strFileName As String
Dim sql As String
'Dim recSet As New ADODB.Recordset

Private Sub CmbEdit_Click()
controlMode False, True
Me.Tag = "Edit"
End Sub

Private Sub CmbID_Click()
loadDataByID
End Sub

Private Sub CmbNew_Click()
CmbID.Text = "Auto"
controlMode False, True
Me.Tag = "New"
End Sub

Private Sub cmdCancel_Click()
Close
clear
controlMode True, False
End Sub

Private Sub CmdDelete_Click()
controlMode False, True
'loadID
DbConnection.fetchdata ("select id from addressbookInfo")
Set CmbID.DataSource = recSet
Me.Tag = "Delete"
End Sub

Private Sub CmdOk_Click()

If Me.Tag = "New" Then
 sql = "Insert Into AddressBookInfo([Name],[Address],[Mobile],[Image]) values"
 sql = sql + "('" & TxtName.Text & "',"
 sql = sql + "'" & txtAddress.Text & "',"
 sql = sql + "'" & txtMobile.Text & "',"
 sql = sql + "'" & TxtPath.Text & "')"
  MainCon.Execute sql
  clear
     MsgBox "Data inserted successfully!", vbInformation
ElseIf Me.Tag = "Edit" Then
    sql = "Update AddressBookInfo set  [Name]='" & TxtName.Text & "',"
    sql = sql + "[Address]= '" & txtAddress.Text & "',"
    sql = sql + "[Mobile]= '" & txtAddress.Text & "',"
    sql = sql + "[Image]= '" & TxtPath.Text & "' where id=" & CmbID.Text & ""
    MainCon.Execute sql
  clear

     MsgBox "Data Edited successfully!", vbInformation
ElseIf Me.Tag = "Delete" Then
 sql = "delete from AddressBookInfo where id=" & CmbID.Text & ""
 MainCon.Execute sql
  clear
     MsgBox "Data Deleted successfully!", vbInformation
End If
MainCon.Close
End Sub

Private Sub Form_Load()
controlMode True, False

'''DbConnection.connectDatabase
'Call connectDatabase("", "", "", "")
loadID
'loadDataByID
End Sub

Private Sub ImgInput_DblClick()
CDFile.Filter = "Picture File | *.jpg|All files (*.*)|*.*"
CDFile.DefaultExt = ""
CDFile.DialogTitle = "Select Image File"
CDFile.ShowOpen
  TxtPath.Text = CDFile.FileName
   ImgInput.Picture = LoadPicture(TxtPath.Text)

End Sub



Public Sub controlMode(rm As Boolean, fld As Boolean)
CmbNew.Enabled = rm
CmbEdit.Enabled = rm
CmdDelete.Enabled = rm

CmbID.Enabled = fld
TxtName.Enabled = fld
txtAddress.Enabled = fld
txtMobile.Enabled = fld
ImgInput.Enabled = fld
cmdOK.Enabled = fld
cmdCancel.Enabled = fld
End Sub

Public Sub clear()
If Me.Tag = "New" Then
CmbID.Text = "Auto"
Else
CmbID.Text = ""
End If
TxtName.Text = ""
txtAddress.Text = ""
txtMobile.Text = ""
ImgInput.Picture = LoadPicture("")
End Sub

Public Sub loadID()
If Me.Tag = "New" Then
    CmbID.Text = "Auto"
Else
  recSet.Open "select id from AddressbookInfo ", MainCon, adOpenDynamic
  While Not recSet.EOF
    CmbID.AddItem recSet!id
  
  recSet.MoveNext
  Wend
End If
End Sub
Private Sub loadDataByID()
If Me.Tag = "New" Then
    CmbID.Text = "Auto"
ElseIf Me.Tag = "Edit" Or Me.Tag = "Delete" Then
'If CmbID.Text! = "Auto" Then
If recSet.State = 1 Then recSet.Close
recSet.CursorLocation = adUseClient
  recSet.Open "select * from AddressbookInfo where id='" & CmbID.Text & "'", MainCon, adOpenDynamic
  
  If recSet.RecordCount > 0 Then
     If recSet.EOF = True Then
     MsgBox ("End of Table")
     Else
        TxtName.Text = recSet!Name
        txtAddress.Text = recSet!Address
        txtMobile.Text = recSet!Mobile
        TxtPath.Text = recSet!Image
        On Error GoTo x
        ImgInput.Picture = LoadPicture(recSet!Image)
x:
        recSet.MoveNext
        End If
End If
'End If
End If
recSet.Close
End Sub

Private Sub Timer1_Timer()
LblTime.Caption = Time

End Sub
