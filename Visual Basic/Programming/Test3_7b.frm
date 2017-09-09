VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picDisplay 
      Height          =   2055
      Left            =   120
      ScaleHeight     =   1995
      ScaleWidth      =   4155
      TabIndex        =   2
      Top             =   120
      Width           =   4215
   End
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "Clear Screen"
      Height          =   255
      Left            =   3120
      TabIndex        =   1
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   2760
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdDisplay_Click()
'Declare Variables
    Dim sglNum As Single, sglCounter As Single, sglTotal As Single
'Call Openit, originally on test as Open, VB will not allow
    Call Openit
'Call Read
    Call Read(sglNum, sglTotal, sglCounter)
'Close File
    Call Closeit
'Display Averages
    Call Display(sglTotal, sglCounter)
End Sub

Private Sub Openit()
Open InputBox("Please entry file in query", "Grade File") For Input As #1
End Sub

Private Sub Read(sglNum As Single, sglTotal As Single, sglCounter As Single)
sglNum = 0
sglTotal = 0
sglCounter = 0
Do While Not EOF(1)
    'Originally # 1, sglNum (forgot Input # 1)
    Input #1, sglNum
    sglTotal = sglNum + sglTotal
    sglCounter = sglCounter + 1
Loop
End Sub

Private Sub Closeit()
Close #1
End Sub

Private Sub Display(sglTotal As Single, sglCounter As Single)
picDisplay.Print "This person's Average is "; sglTotal / sglCounter; "."
End Sub
'Forgot to put this code on the test
Private Sub cmdClearScreen_Click()
'Clear Screen
    picDisplay.Cls
End Sub

