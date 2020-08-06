VERSION 5.00
Begin VB.Form FrmCustomerMaster 
   Caption         =   "Customer"
   ClientHeight    =   5475
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6765
   LinkTopic       =   "Form1"
   ScaleHeight     =   5475
   ScaleWidth      =   6765
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FrameUp 
      Height          =   855
      Left            =   0
      TabIndex        =   18
      Top             =   0
      Width           =   6735
      Begin VB.CommandButton BtnNew 
         Caption         =   "&New"
         Height          =   375
         Left            =   240
         TabIndex        =   21
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnEdit 
         Caption         =   "&Edit"
         Height          =   375
         Left            =   1320
         TabIndex        =   20
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnDelete 
         Caption         =   "&Delete"
         Height          =   375
         Left            =   2400
         TabIndex        =   19
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame FrameMid 
      Height          =   3495
      Left            =   0
      TabIndex        =   3
      Top             =   960
      Width           =   6735
      Begin VB.Frame Frame5 
         Appearance      =   0  'Flat
         BackColor       =   &H80000016&
         ForeColor       =   &H80000008&
         Height          =   1815
         Left            =   4560
         TabIndex        =   25
         Top             =   480
         Width           =   1935
         Begin VB.Image ImgInput 
            Height          =   1695
            Left            =   0
            Stretch         =   -1  'True
            Top             =   120
            Width           =   1935
         End
      End
      Begin VB.ComboBox Combogender 
         DataMember      =   "Male,Female,Other"
         Height          =   315
         Left            =   1680
         Style           =   2  'Dropdown List
         TabIndex        =   23
         Top             =   3000
         Width           =   2655
      End
      Begin VB.TextBox TxtCustomerNo 
         Height          =   285
         Left            =   1680
         TabIndex        =   10
         Top             =   480
         Width           =   2655
      End
      Begin VB.TextBox TxtHCustomerName 
         Height          =   285
         Left            =   1680
         TabIndex        =   9
         Top             =   840
         Width           =   2655
      End
      Begin VB.TextBox TxtAddress 
         Height          =   285
         Index           =   1
         Left            =   1680
         TabIndex        =   8
         Top             =   1200
         Width           =   2655
      End
      Begin VB.TextBox TxtContactNo 
         Height          =   285
         Left            =   1680
         TabIndex        =   7
         Top             =   1560
         Width           =   2655
      End
      Begin VB.TextBox TxtMobileNo 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1680
         TabIndex        =   6
         Top             =   1920
         Width           =   2655
      End
      Begin VB.TextBox TxtGuardianname 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Index           =   0
         Left            =   1680
         TabIndex        =   5
         Top             =   2280
         Width           =   2655
      End
      Begin VB.TextBox TxtGuardContactNo 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1680
         TabIndex        =   4
         Top             =   2640
         Width           =   2655
      End
      Begin VB.Label Label11 
         Caption         =   "Gender"
         Height          =   255
         Left            =   360
         TabIndex        =   24
         Top             =   3000
         Width           =   1215
      End
      Begin VB.Label Label9 
         Caption         =   "Upload Customer Photo"
         Height          =   255
         Left            =   4680
         TabIndex        =   22
         Top             =   2400
         Width           =   1695
      End
      Begin VB.Label Label1 
         Caption         =   "Customer ID"
         Height          =   255
         Left            =   360
         TabIndex        =   17
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Customer Name"
         Height          =   255
         Left            =   360
         TabIndex        =   16
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label3 
         Caption         =   "Address"
         Height          =   255
         Left            =   360
         TabIndex        =   15
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label4 
         Caption         =   "Contact No."
         Height          =   255
         Left            =   360
         TabIndex        =   14
         Top             =   1560
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Mobile No."
         Height          =   255
         Left            =   360
         TabIndex        =   13
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label Label7 
         Caption         =   "Guardian Name"
         Height          =   255
         Left            =   360
         TabIndex        =   12
         Top             =   2280
         Width           =   1215
      End
      Begin VB.Label Label8 
         Caption         =   "Guardian C. No."
         Height          =   255
         Left            =   360
         TabIndex        =   11
         Top             =   2640
         Width           =   1215
      End
   End
   Begin VB.Frame FrameBottom 
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   4560
      Width           =   6735
      Begin VB.CommandButton BtnSave 
         Caption         =   "&Save"
         Height          =   375
         Left            =   4200
         TabIndex        =   2
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnCancel 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   5400
         TabIndex        =   1
         Top             =   240
         Width           =   975
      End
   End
End
Attribute VB_Name = "FrmCustomerMaster"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
