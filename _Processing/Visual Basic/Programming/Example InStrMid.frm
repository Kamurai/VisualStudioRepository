VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2010
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   2010
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "Clear Screen"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   1695
   End
   Begin VB.TextBox txtInput 
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1695
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   495
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   1695
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1695
      Left            =   1920
      ScaleHeight     =   1635
      ScaleWidth      =   2595
      TabIndex        =   0
      Top             =   120
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDisplay_Click()
    'Assume the name is entered
    'Last, First Middle
    'Dim Variables
        Dim strInput As String
        Dim strFirst As String
        Dim strMiddle As String
        Dim strLast As String
    'Get Value
        strInput = txtInput.Text
    'Get Initials
        strLast = Left(strInput, 1)
    'This is the fucking problem right here!!!!
        strMiddle = Mid(strInput, Mid(strInput, InStr(strInput, " ") + 1, 1))
        
        strFirst = Mid(strInput, InStr(strInput, " ") + 1, 1)
    'Display Initials in First, Middle, Last
        picDisplay.Print strFirst; strMiddle; strLast
    

End Sub

Private Sub cmdClearScreen_Click()
picDisplay.Cls
End Sub

