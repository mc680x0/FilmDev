VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.2#0"; "comctl32.ocx"
Begin VB.Form frm_Main 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Film Development Magic Tool Thing"
   ClientHeight    =   4995
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6075
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   333
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   405
   StartUpPosition =   2  'CenterScreen
   Begin ComctlLib.TabStrip tbs_DBentry 
      Height          =   3375
      Left            =   120
      TabIndex        =   0
      Top             =   1560
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   5953
      _Version        =   327682
      BeginProperty Tabs {0713E432-850A-101B-AFC0-4210102A8DA7} 
         NumTabs         =   3
         BeginProperty Tab1 {0713F341-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Recipes"
            Key             =   "tab_Prog"
            Object.Tag             =   "1"
            Object.ToolTipText     =   "Pre-programmed film/chemistry times. "
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab2 {0713F341-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Chemistry"
            Key             =   "tab_Chem"
            Object.Tag             =   "2"
            Object.ToolTipText     =   "Chemical Formulae for Developers. "
            ImageVarType    =   2
         EndProperty
         BeginProperty Tab3 {0713F341-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Films"
            Key             =   "tab_Films"
            Object.Tag             =   "3"
            Object.ToolTipText     =   "Films for your processes. "
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton btn_About 
      Caption         =   "About"
      Height          =   375
      Left            =   4560
      TabIndex        =   4
      Top             =   960
      Width           =   615
   End
   Begin VB.CommandButton btn_Exit 
      Caption         =   "Exit"
      Height          =   375
      Left            =   5400
      TabIndex        =   3
      Top             =   960
      Width           =   615
   End
   Begin VB.Label lbl_Version 
      Alignment       =   2  'Center
      Caption         =   """Panatomic"""
      Height          =   255
      Left            =   4560
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.Label lbl_ProductName 
      Alignment       =   2  'Center
      Caption         =   "FilmDev"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4560
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
End
Attribute VB_Name = "frm_Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
frm_About.Width = 480 * Screen.TwipsPerPixelX
frm_About.Height = 360 * Screen.TwipsPerPixelY
lbl_Version.Caption = "Version " & App.Major & "." & App.Minor
End Sub

Private Sub btn_About_Click()
frm_About.Show
frm_About.Width = 160 * Screen.TwipsPerPixelX
frm_About.Height = 240 * Screen.TwipsPerPixelY
End Sub

Private Sub btn_Exit_Click()
End
End Sub
