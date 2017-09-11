VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4575
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4575
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear Screen"
      Height          =   495
      Left            =   2880
      TabIndex        =   5
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   495
      Left            =   2880
      TabIndex        =   4
      Top             =   1800
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1455
      Left            =   120
      ScaleHeight     =   1395
      ScaleWidth      =   4275
      TabIndex        =   2
      Top             =   0
      Width           =   4335
   End
   Begin VB.TextBox txtInput 
      Height          =   285
      Left            =   360
      TabIndex        =   0
      Top             =   1920
      Width           =   1215
   End
   Begin VB.Label lblTwo 
      Caption         =   "a leap year?"
      Height          =   255
      Left            =   1680
      TabIndex        =   3
      Top             =   1920
      Width           =   975
   End
   Begin VB.Label lblOne 
      Caption         =   "Is"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   1920
      Width           =   135
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Gary Huband Section B
'Exercise 5.2, #38, Due Oct 17
'Objective: To accurately determine whether or not that the input year is a leap year

Private Sub cmdClear_Click()
picDisplay.Cls
End Sub

Private Sub cmdDisplay_Click()
    
    'Dim Variables
        Dim intInput As Integer
        Dim strAnswer As String
        
    'Enter Variables into Program
        intInput = txtInput.Text
        strAnswer = "is "
    'Calculate Variables
        'Fix division checks
        
        If intInput / 100 = Round(intInput / 100) = True And intInput / 400 = Round(intInput / 400) = False Then
        strAnswer = "is not "
        End If
        If intInput / 4 <> Round(intInput / 4) = True Then
        strAnswer = "is not "
        End If
        If intInput >= 1582 = False Then
        strAnswer = "is not "
        End If
    'Display Variables
        picDisplay.Print "The year"; intInput; strAnswer; "a leap year."
        
End Sub
