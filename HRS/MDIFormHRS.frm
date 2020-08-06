VERSION 5.00
Begin VB.MDIForm MDIFormHRS 
   BackColor       =   &H80000010&
   Caption         =   "House Rent System"
   ClientHeight    =   7920
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   15750
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Align           =   1  'Align Top
      Height          =   10000
      Left            =   0
      ScaleHeight     =   9945
      ScaleWidth      =   15690
      TabIndex        =   0
      Top             =   0
      Width           =   15750
      Begin VB.Image Image1 
         Height          =   10000
         Left            =   0
         Picture         =   "MDIFormHRS.frx":0000
         Stretch         =   -1  'True
         Top             =   0
         Width           =   24000
      End
   End
   Begin VB.Menu File 
      Caption         =   "File"
      Begin VB.Menu MenuExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu master 
      Caption         =   "Master"
      Begin VB.Menu MenuHM 
         Caption         =   "House Master"
      End
      Begin VB.Menu Menufkoor 
         Caption         =   "Floor Master"
      End
      Begin VB.Menu MenuRoomMaster 
         Caption         =   "Room Master"
      End
      Begin VB.Menu MenuCm 
         Caption         =   "Customer Master"
      End
      Begin VB.Menu MenuGL 
         Caption         =   "General ledger"
      End
   End
End
Attribute VB_Name = "MDIFormHRS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MenuCm_Click()
FrmCustomerMaster.Show
End Sub

Private Sub MenuExit_Click()
Unload Me
End Sub



Private Sub Menufkoor_Click()
FrmFlat.Show
End Sub

Private Sub MenuHM_Click()
HouseMaster.Show
End Sub


Private Sub MenuRoomMaster_Click()
FrmRoom.Show
End Sub
