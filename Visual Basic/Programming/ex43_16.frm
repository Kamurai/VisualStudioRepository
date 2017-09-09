VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6165
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   6165
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "Clear Screen"
      Height          =   495
      Left            =   2760
      TabIndex        =   4
      Top             =   2640
      Width           =   1455
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display Training Hear Rate"
      Height          =   495
      Left            =   2520
      TabIndex        =   3
      Top             =   2040
      Width           =   2055
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1935
      Left            =   120
      ScaleHeight     =   1875
      ScaleWidth      =   5955
      TabIndex        =   2
      Top             =   0
      Width           =   6015
   End
   Begin VB.TextBox txtAge 
      Height          =   285
      Left            =   840
      TabIndex        =   1
      Top             =   2880
      Width           =   1215
   End
   Begin VB.TextBox txtRHR 
      Height          =   285
      Left            =   840
      TabIndex        =   0
      Top             =   2280
      Width           =   1215
   End
   Begin VB.Label lblAge 
      Caption         =   "Enter Age"
      Height          =   255
      Left            =   1080
      TabIndex        =   6
      Top             =   2640
      Width           =   735
   End
   Begin VB.Label lblRHR 
      Caption         =   "Enter Resting Hear Rate"
      Height          =   255
      Left            =   480
      TabIndex        =   5
      Top             =   2040
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Gary Huband Section B
'Chapter 4.3, problem 16
'Due Oct. 10, 2001


Private Sub cmdDisplay_Click()
    'Safe-Catch
        If txtRHR.Text = "" Or txtAge.Text = "" Then
        MsgBox "Please enter missing data.", vbExclamation, "Error"
        Else
    
    'Declare Variables
        Dim sglRHR As Single, sglAge As Single
    'Gather the input
        Call Gather(sglRHR, sglAge)
    
    'Display the data
        Call Display(sglAge, sglRHR)
    
        End If
        
End Sub

Private Sub Gather(sglRHR As Single, sglAge As Single)
    'Declare Values
        sglRHR = Val(txtRHR.Text)
        sglAge = Val(txtAge.Text)
End Sub

Private Function Heart(sglAge As Single, sglRHR As Single) As Single
    'Function equals formula
        Heart = ((220 - sglAge) - sglRHR) * 0.6 + sglRHR
End Function
Private Sub Display(sglAge As Single, sglRHR As Single)
    'Display
        picDisplay.Print "The Training Heart Rate for a person of"; sglAge; "with a Resting Heart Rate of"; sglRHR; "is"; Heart(sglAge, sglRHR)
End Sub

Private Sub cmdClearScreen_Click()
    'Clear Screen
        picDisplay.Cls
End Sub

