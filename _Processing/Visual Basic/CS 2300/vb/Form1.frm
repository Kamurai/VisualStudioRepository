VERSION 5.00
Begin VB.Form frmEmployee 
   Caption         =   "Employee Information"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   6510
   ScaleWidth      =   9480
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.ComboBox cboState 
      Height          =   315
      IntegralHeight  =   0   'False
      ItemData        =   "Form1.frx":0000
      Left            =   1320
      List            =   "Form1.frx":001C
      Sorted          =   -1  'True
      Style           =   2  'Dropdown List
      TabIndex        =   26
      Top             =   1980
      Width           =   1275
   End
   Begin VB.ListBox lstHealth 
      Height          =   1410
      IntegralHeight  =   0   'False
      ItemData        =   "Form1.frx":0040
      Left            =   1320
      List            =   "Form1.frx":0056
      Style           =   1  'Checkbox
      TabIndex        =   25
      Top             =   3840
      Width           =   1755
   End
   Begin VB.PictureBox picMail 
      AutoSize        =   -1  'True
      Height          =   540
      Left            =   5940
      Picture         =   "Form1.frx":00AC
      ScaleHeight     =   480
      ScaleWidth      =   480
      TabIndex        =   23
      Top             =   120
      Width           =   540
   End
   Begin VB.Frame fraBenefits 
      Caption         =   "Benefits"
      Height          =   1455
      Left            =   5280
      TabIndex        =   19
      Top             =   1920
      Width           =   1515
      Begin VB.CheckBox Check3 
         Caption         =   "Bonus Program"
         Height          =   195
         Left            =   60
         TabIndex        =   22
         Top             =   1200
         Width           =   1395
      End
      Begin VB.CheckBox Check2 
         Caption         =   "401K"
         Height          =   195
         Left            =   60
         TabIndex        =   21
         Top             =   780
         Width           =   1275
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Health Plan"
         Height          =   195
         Left            =   60
         TabIndex        =   20
         Top             =   360
         Width           =   1275
      End
   End
   Begin VB.Frame fraSex 
      Caption         =   "Sex"
      Height          =   1455
      Left            =   3780
      TabIndex        =   16
      Top             =   1920
      Width           =   1455
      Begin VB.OptionButton optFemale 
         Caption         =   "Female"
         Height          =   315
         Left            =   180
         TabIndex        =   18
         Top             =   840
         Width           =   1095
      End
      Begin VB.OptionButton optMale 
         Caption         =   "Male"
         Height          =   315
         Left            =   180
         TabIndex        =   17
         Top             =   360
         Width           =   1035
      End
   End
   Begin VB.CommandButton cmdSave 
      Caption         =   "&Save"
      Default         =   -1  'True
      Height          =   495
      Left            =   4560
      TabIndex        =   15
      Top             =   3420
      Width           =   1215
   End
   Begin VB.CommandButton cmdClose 
      Cancel          =   -1  'True
      Caption         =   "&Close"
      Height          =   495
      Left            =   5760
      TabIndex        =   14
      Top             =   3420
      Width           =   1215
   End
   Begin VB.TextBox txtSSN 
      Height          =   495
      Left            =   1320
      MaxLength       =   11
      TabIndex        =   13
      Top             =   3360
      Width           =   1815
   End
   Begin VB.TextBox txtPhone 
      Height          =   495
      Left            =   1320
      MaxLength       =   14
      TabIndex        =   12
      Top             =   2880
      Width           =   1455
   End
   Begin VB.TextBox txtZip 
      Height          =   495
      Left            =   1320
      MaxLength       =   10
      TabIndex        =   11
      Top             =   2400
      Width           =   795
   End
   Begin VB.TextBox txtCity 
      Height          =   495
      Left            =   1320
      MaxLength       =   35
      TabIndex        =   10
      Top             =   1440
      Width           =   1875
   End
   Begin VB.TextBox txtAddress 
      Height          =   495
      Left            =   1320
      MaxLength       =   50
      TabIndex        =   9
      Top             =   960
      Width           =   2715
   End
   Begin VB.TextBox txtLast 
      Height          =   495
      Left            =   1320
      MaxLength       =   25
      TabIndex        =   8
      Top             =   480
      Width           =   2715
   End
   Begin VB.TextBox txtFirst 
      Height          =   495
      Left            =   1320
      MaxLength       =   20
      TabIndex        =   7
      Top             =   0
      Width           =   1875
   End
   Begin VB.Label lblLabel 
      Caption         =   "State"
      Height          =   495
      Index           =   3
      Left            =   60
      TabIndex        =   27
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Health Care Choices"
      Height          =   495
      Index           =   8
      Left            =   60
      TabIndex        =   24
      Top             =   3840
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "First Name"
      Height          =   435
      Index           =   7
      Left            =   60
      TabIndex        =   6
      Top             =   0
      Width           =   1275
   End
   Begin VB.Label lblLabel 
      Caption         =   "Social Security #"
      Height          =   375
      Index           =   0
      Left            =   60
      TabIndex        =   5
      Top             =   3420
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "City"
      Height          =   435
      Index           =   4
      Left            =   60
      TabIndex        =   4
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Zip Code"
      Height          =   435
      Index           =   2
      Left            =   60
      TabIndex        =   3
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Address"
      Height          =   495
      Index           =   5
      Left            =   60
      TabIndex        =   2
      Top             =   900
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Home Phone"
      Height          =   495
      Index           =   1
      Left            =   60
      TabIndex        =   1
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Label lblLabel 
      Caption         =   "Last Name"
      Height          =   435
      Index           =   6
      Left            =   60
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Begin VB.Menu mnuFOpen 
         Caption         =   "&Open"
      End
      Begin VB.Menu mnuFExit 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnutEdit 
      Caption         =   "&Edit"
      Begin VB.Menu mnuECut 
         Caption         =   "Cu&t"
      End
      Begin VB.Menu mnuECopy 
         Caption         =   "&Copy"
      End
      Begin VB.Menu mnuEPaste 
         Caption         =   "&Paste"
      End
   End
   Begin VB.Menu mnutView 
      Caption         =   "&View"
      Begin VB.Menu mnuVStatus 
         Caption         =   "&Status Bar"
      End
      Begin VB.Menu mnuVToolbar 
         Caption         =   "&Toolbar"
      End
   End
End
Attribute VB_Name = "frmEmployee"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()

End Sub

Private Sub Combo1_Change()

End Sub

Private Sub cboState_Change()
cmdSave.Enabled = True
End Sub

Private Sub cboState_Click()
cmdSave.Enabled = True
End Sub

Private Sub Check1_Click()
cmdSave.Enabled = True
End Sub

Private Sub Check2_Click()
cmdSave.Enabled = True
End Sub

Private Sub Check3_Click()
cmdSave.Enabled = True
End Sub

Private Sub cmdClose_Click()
   Unload Me
End Sub

Private Sub cmdSave_Click()
' Perform your Save routine here

cmdSave.Enabled = True
End Sub

Private Sub Form_Activate()
cmdClose.Enabled = True
End Sub

Private Sub Form_Deactivate()
cmdClose.Enabled = False
End Sub

Private Sub Form_Load()
mnuVToolbar.Enabled = False
mnuVStatus.Enbaled = False
cmdSave.Enabled = False
End Sub

Private Sub Form_Resize()
Me.Height = Me.Height + 100
End Sub

Private Sub lstHealth_Click()
   MsgBox "The item Selected Is " & _
                  lstHealth.List(lstHealth.ListIndex)
End Sub

Private Sub lstHealth_ItemCheck(Item As Integer)
   MsgBox "The Item Selected Is " & _
                  lstHealth.List(Item)
End Sub

Private Sub mnuEdit_Click()

End Sub

Private Sub mnuFExit_Click()
   Unload Me
End Sub

Private Sub optFemale_Click()
cmdSave.Enabled = True
End Sub

Private Sub optMale_Click()
cmdSave.Enabled = True
End Sub

Private Sub picMail_Click()
' Send Email here
frmEMail.Show
End Sub

Private Sub txtAddress_Change()
cmdSave.Enabled = True
End Sub

Private Sub txtCity_Change()
cmdSave.Enabled = True
End Sub

Private Sub txtFirst_Change()
cmd.Enabled = True
End Sub

Private Sub txtLast_Change()
cmdSave.Enabled = True
End Sub

Private Sub txtPhone_Change()
cmdSave.Enabled = True
End Sub

Private Sub txtSSN_Change()
cmdSave.Enabled = True
End Sub

Private Sub txtZip_Change()
cmdSave.Enabled = True
End Sub
