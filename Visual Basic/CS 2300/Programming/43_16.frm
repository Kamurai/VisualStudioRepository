VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5970
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   5970
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display THR"
      Height          =   495
      Left            =   3360
      TabIndex        =   3
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox txtAge 
      Height          =   495
      Left            =   1800
      TabIndex        =   2
      Top             =   1920
      Width           =   1215
   End
   Begin VB.TextBox txtRHR 
      Height          =   495
      Left            =   1800
      TabIndex        =   1
      Top             =   2640
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1695
      Left            =   120
      ScaleHeight     =   1635
      ScaleWidth      =   5715
      TabIndex        =   0
      Top             =   120
      Width           =   5775
   End
   Begin VB.Label lblRHR 
      Caption         =   "Input subject's Resting Heart Rate"
      Height          =   495
      Left            =   240
      TabIndex        =   5
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label lblAge 
      Caption         =   "Input subject's age."
      Height          =   255
      Left            =   240
      TabIndex        =   4
      Top             =   2160
      Width           =   1455
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
'Declare Variables
    Dim sglRHR As Single
    Dim sglAge As Single
    Dim sglTHR As Single
    
'Gather the input
    Call Gather(sglRHR, sglAge)
'Caculate the data
    Call Compute(sglRHR, sglAge, sglTHR)
'Display the data
    Call Display(sglAge, sglRHR, sglTHR)
End Sub
Private Sub Gather(sglRHR As Single, sglAge As Single)
'Declare Values
    sglRHR = txtRHR.Text
    sglAge = txtAge.Text
End Sub
Private Sub Compute(sglRHR As Single, sglAge As Single, sglTHR As Single)
'Use Heart Function
sglTHR = Heart(sglAge, sglRHR)
End Sub
Private Function Heart(sglAge As Single, sglRHR As Single) As Single
Heart = ((220 - sglAge) - sglRHR) * 0.6 + sglRHR
End Function
Private Sub Display(sglAge As Single, sglRHR As Single, sglTHR As Single)
'Display
    picDisplay.Print "The Training Hear Rate for a person of"; sglAge; "with a Resting Heart Rate of"; sglRHR; "is"; sglTHR
End Sub
