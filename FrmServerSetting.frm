VERSION 5.00
Begin VB.Form FrmServerSetting 
   Caption         =   "Server Setting"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   Icon            =   "FrmServerSetting.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FrameServer 
      Height          =   2895
      Left            =   240
      TabIndex        =   0
      Top             =   0
      Width           =   4095
      Begin VB.TextBox txtDatabasename 
         Height          =   285
         Left            =   1560
         TabIndex        =   8
         Text            =   "MyData"
         Top             =   1560
         Width           =   2175
      End
      Begin VB.TextBox TxtUsername 
         Height          =   285
         Left            =   1560
         TabIndex        =   6
         Text            =   "sa"
         Top             =   840
         Width           =   2175
      End
      Begin VB.TextBox TxtPassword 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1560
         PasswordChar    =   "*"
         TabIndex        =   4
         Text            =   "#$W@$/K753#*D@/@!B@$E#"
         Top             =   1200
         Width           =   2175
      End
      Begin VB.TextBox TxtServerName 
         Height          =   285
         Left            =   1560
         TabIndex        =   2
         Text            =   ".\ram"
         Top             =   480
         Width           =   2175
      End
      Begin VB.CommandButton CmdOk 
         Caption         =   "&OK"
         Height          =   255
         Left            =   1800
         TabIndex        =   1
         Top             =   2280
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "Database Name"
         Height          =   375
         Left            =   240
         TabIndex        =   9
         Top             =   1560
         Width           =   1815
      End
      Begin VB.Label Label3 
         Caption         =   "Server Username"
         Height          =   375
         Left            =   240
         TabIndex        =   7
         Top             =   840
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "Server Password"
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   1200
         Width           =   1575
      End
      Begin VB.Label Label1 
         Caption         =   "Server Name"
         Height          =   375
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Width           =   975
      End
   End
End
Attribute VB_Name = "FrmServerSetting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CmdOk_Click()
Call connectDatabase(TxtServerName.Text, TxtUsername.Text, TxtPassword.Text, txtDatabasename.Text)
If MainCon.State = 1 Then
Unload Me
FrmAddressBook.Show
End If
End Sub
