VERSION 5.00
Begin VB.Form frm_About 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "About FilmDev"
   ClientHeight    =   3210
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2310
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   182.128
   ScaleMode       =   0  'User
   ScaleWidth      =   89.6
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      Caption         =   "Thanks to: "
      Height          =   1935
      Left            =   0
      TabIndex        =   3
      Top             =   720
      Width           =   2295
      Begin VB.Label lbl_Credits 
         Caption         =   "Horst Burkhardt"
         Height          =   1575
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.CommandButton btn_OK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   840
      TabIndex        =   1
      Top             =   2760
      Width           =   615
   End
   Begin VB.Label lbl_ReleaseData 
      Alignment       =   2  'Center
      Caption         =   "Version goes where?"
      Height          =   255
      Left            =   360
      TabIndex        =   2
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label lbl_AboutHeader 
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
      Height          =   405
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   1995
   End
End
Attribute VB_Name = "frm_About"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
frm_About.Width = 160 * Screen.TwipsPerPixelX
frm_About.Height = 240 * Screen.TwipsPerPixelY
' The final solution to the question of the Twips.
Me.Caption = "About " & App.Title 'this shouldn't need to change, but maybe someone is dumb
lbl_ReleaseData.Caption = "Release " & App.Major & "." & App.Minor & " Mod " & App.Revision
' Versioning is important for debugging!
lbl_AboutHeader.Caption = App.Title
' Also when people remember the name of your product.
lbl_Credits.Caption = "- Horst Burkhardt" + vbCrLf + "- Andrew Wilcox" + vbCrLf + "- Your Mother" + vbCrLf + "   (thanks for the cookies)" + vbCrLf + vbCrLf + "   and to digitaltruth photo" + vbCrLf + "for the Massive Dev Chart"
End Sub

Private Sub btn_OK_Click()
' Obviously the user needs a way out
Unload Me 'that makes a bit more sense
End Sub
