VERSION 5.00
Begin VB.Form FrmFlat 
   Caption         =   "Flat Master"
   ClientHeight    =   5220
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4785
   LinkTopic       =   "Form2"
   ScaleHeight     =   5220
   ScaleWidth      =   4785
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame FrameUp 
      Height          =   855
      Left            =   0
      TabIndex        =   16
      Top             =   0
      Width           =   4695
      Begin VB.CommandButton BtnNew 
         Caption         =   "&New"
         Height          =   375
         Left            =   240
         TabIndex        =   19
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnEdit 
         Caption         =   "&Edit"
         Height          =   375
         Left            =   1320
         TabIndex        =   18
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton BtnDelete 
         Caption         =   "&Delete"
         Height          =   375
         Left            =   2400
         TabIndex        =   17
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame FrameMid 
      Height          =   3255
      Left            =   0
      TabIndex        =   3
      Top             =   960
      Width           =   4695
      Begin VB.TextBox TxtFrmId 
         Height          =   285
         Left            =   1680
         TabIndex        =   9
         Top             =   480
         Width           =   2655
      End
      Begin VB.TextBox TxtHCustomerName 
         Height          =   285
         Left            =   1680
         TabIndex        =   8
         Top             =   840
         Width           =   2655
      End
      Begin VB.TextBox TxtAddress 
         Height          =   285
         Index           =   1
         Left            =   1680
         TabIndex        =   7
         Top             =   1200
         Width           =   2655
      End
      Begin VB.TextBox TxtContactNo 
         Height          =   285
         Left            =   1680
         TabIndex        =   6
         Top             =   1560
         Width           =   2655
      End
      Begin VB.TextBox TxtMobileNo 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1680
         TabIndex        =   5
         Top             =   1920
         Width           =   2655
      End
      Begin VB.TextBox TxtGuardianname 
         Height          =   765
         IMEMode         =   3  'DISABLE
         Index           =   0
         Left            =   1680
         MultiLine       =   -1  'True
         TabIndex        =   4
         Top             =   2280
         Width           =   2655
      End
      Begin VB.Label Label1 
         Caption         =   "Flat ID"
         Height          =   255
         Left            =   360
         TabIndex        =   15
         Top             =   480
         Width           =   975
      End
      Begin VB.Label Label2 
         Caption         =   "Flat Name"
         Height          =   255
         Left            =   360
         TabIndex        =   14
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label3 
         Caption         =   "No. of Room"
         Height          =   255
         Left            =   360
         TabIndex        =   13
         Top             =   1200
         Width           =   1455
      End
      Begin VB.Label Label4 
         Caption         =   "House "
         Height          =   255
         Left            =   360
         TabIndex        =   12
         Top             =   1560
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Rent Price"
         Height          =   255
         Left            =   360
         TabIndex        =   11
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label Label7 
         Caption         =   "Description"
         Height          =   255
         Left            =   360
         TabIndex        =   10
         Top             =   2280
         Width           =   1215
      End
   End
   Begin VB.Frame FrameBottom 
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   4320
      Width           =   4695
      Begin VB.CommandButton BtnSave 
         Caption         =   "&Save"
         Height          =   375
         Left            =   1800
         TabIndex        =   2
         Top             =   240
         Width           =   1455
      End
      Begin VB.CommandButton BtnCancel 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   3000
         TabIndex        =   1
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Label Label5 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   20
      Top             =   3120
      Width           =   735
   End
End
Attribute VB_Name = "FrmFlat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
