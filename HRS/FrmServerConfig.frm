VERSION 5.00
Begin VB.Form FrmServerConfig 
   BackColor       =   &H80000015&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3165
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6150
   DrawMode        =   12  'Nop
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2.198
   ScaleMode       =   5  'Inch
   ScaleWidth      =   4.271
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox TxtSeverNamee 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
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
      Left            =   2040
      TabIndex        =   9
      Text            =   "DESKTOP-00Q7TUT"
      Top             =   600
      Width           =   3615
   End
   Begin VB.CommandButton CmdClose 
      Appearance      =   0  'Flat
      BackColor       =   &H000000FF&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Yu Gothic UI"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5640
      TabIndex        =   8
      Top             =   0
      Width           =   495
   End
   Begin VB.CommandButton CmdConnect 
      Caption         =   "&Connect"
      Height          =   375
      Left            =   4755
      TabIndex        =   7
      Top             =   2595
      Width           =   975
   End
   Begin VB.TextBox TxtDbName 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
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
      Left            =   2040
      TabIndex        =   6
      Text            =   "DBHomeRentalSystem"
      Top             =   2040
      Width           =   3615
   End
   Begin VB.TextBox TxtPassword 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
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
      Left            =   2040
      PasswordChar    =   "$"
      TabIndex        =   5
      Text            =   "#$W@$/K753#*D@/@!B@$E#"
      Top             =   1560
      Width           =   3615
   End
   Begin VB.TextBox TxtUsername 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
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
      Left            =   2040
      TabIndex        =   4
      Text            =   "sa"
      Top             =   1080
      Width           =   3615
   End
   Begin VB.Label Label4 
      BackColor       =   &H80000015&
      Caption         =   "Server Password"
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
      TabIndex        =   3
      Top             =   1620
      Width           =   1695
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000015&
      Caption         =   "Database Name"
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
      TabIndex        =   2
      Top             =   2100
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000015&
      Caption         =   "Server User Name"
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
      Left            =   240
      TabIndex        =   1
      Top             =   1140
      Width           =   1815
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000015&
      Caption         =   "Server Name"
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
      Left            =   600
      TabIndex        =   0
      Top             =   660
      Width           =   1455
   End
End
Attribute VB_Name = "FrmServerConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CmdClose_Click()
Unload Me
End Sub

Private Sub CmdConnect_Click()
Call connectDatabase(TxtSeverNamee.Text, TxtUserName.Text, TxtPassword.Text, TxtDbName.Text)
If MainCon.State = 1 Then
Unload Me
HouseMaster.Show
'MDIFormHRS.Show
End If
End Sub

