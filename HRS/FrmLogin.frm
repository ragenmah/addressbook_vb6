VERSION 5.00
Begin VB.Form FrmLogin 
   BackColor       =   &H80000015&
   Caption         =   "Log in Form"
   ClientHeight    =   3270
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5895
   LinkTopic       =   "Form1"
   ScaleHeight     =   3270
   ScaleWidth      =   5895
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TextPassword 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1800
      PasswordChar    =   "$"
      TabIndex        =   6
      Top             =   1440
      Width           =   3615
   End
   Begin VB.TextBox Textusername 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   5
      Top             =   840
      Width           =   3615
   End
   Begin VB.CommandButton BtnLogIn 
      Appearance      =   0  'Flat
      Caption         =   "&LogIN"
      Height          =   375
      Left            =   4440
      TabIndex        =   0
      Top             =   2640
      Width           =   975
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000015&
      Caption         =   "House Detail not filled yet? Click Here!"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000005&
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   2040
      Width           =   3255
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000015&
      Caption         =   "Log In"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000014&
      Height          =   375
      Left            =   2280
      TabIndex        =   3
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000015&
      Caption         =   "User Name"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000014&
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   900
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000015&
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000014&
      Height          =   375
      Left            =   480
      TabIndex        =   1
      Top             =   1500
      Width           =   1215
   End
End
Attribute VB_Name = "FrmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim username As String
Private Sub BtnLogIn_Click()
username = Textusername.Text
'Call fetchdata("select * from Housemaster where [UserName]='" + TxtUsename.Text + "' and [Password]'" & TxtPassword.Text & "'")
 Call fetchdata("select * from Housemaster where UserName = '" + Textusername.Text + "' and Password = '" & TextPassword.Text & "'")
 


 If rs.RecordCount > 0 Then
     If rs.EOF = True Then
     MsgBox ("End of Table")
     Else
       username = rs!username
    End If
   MsgBox "WelCome " & username & "  !"
   Unload Me
   MDIFormHRS.Show
  ElseIf rs.RecordCount = 0 Then
   MsgBox "Your username and password do not match"
  
End If
End Sub

Private Sub Label4_Click()
Unload Me
HouseMaster.Show
End Sub
