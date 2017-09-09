VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4725
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtPercentage 
      Height          =   285
      Left            =   2760
      TabIndex        =   8
      Text            =   "10"
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox txtAmount 
      Height          =   285
      Left            =   2760
      TabIndex        =   7
      Text            =   "1000"
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox txtOccupation 
      Height          =   285
      Left            =   2760
      TabIndex        =   6
      Text            =   "Whore"
      Top             =   1320
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1095
      Left            =   0
      ScaleHeight     =   1035
      ScaleWidth      =   4635
      TabIndex        =   2
      Top             =   120
      Width           =   4695
   End
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "New Person"
      Height          =   495
      Left            =   3480
      TabIndex        =   1
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label lblPercentage 
      Caption         =   "Enter the percentage tip"
      Height          =   255
      Left            =   960
      TabIndex        =   5
      Top             =   2040
      Width           =   1815
   End
   Begin VB.Label lblBill 
      Caption         =   "Enter the amount of the bill"
      Height          =   255
      Left            =   840
      TabIndex        =   4
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label lblOccupation 
      Caption         =   "Enter the person's occupation"
      Height          =   255
      Left            =   600
      TabIndex        =   3
      Top             =   1320
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Gary Huband Section B
'Chapter 4.1 exercise 54
'Due Oct 3

Private Sub cmdClearScreen_Click()
picDisplay.Cls
txtOccupation = ""
txtPercentage = ""
txtAmount = ""
End Sub

Private Sub cmdDisplay_Click()
    'Safe Catch
        If txtOccupation.Text = "" Or txtAmount.Text = "" Or txtPercentage.Text = "" Then
        MsgBox "You left out an input", , "YO!"
        Else
    'Declare Variables
        Dim strOccupation As String
        Dim dblAmount As Double
        Dim sglPercentage As Single
        Dim strTip As String
    'Gather Input
        Call Gather(strOccupation, dblAmount, sglPercentage)
    'Calculate Figures
        Call Figure(dblAmount, sglPercentage, strTip)
    'Display Answer
        Call Display(strOccupation, strTip)
End If
End Sub

Private Sub Gather(strOccupation As String, dblAmount As Double, sglPercentage As Single)
    'Declare values
        strOccupation = txtOccupation.Text
        dblAmount = txtAmount.Text
        sglPercentage = txtPercentage.Text
End Sub

Private Sub Figure(dblAmount As Double, sglPercentage As Single, strTip As String)
    'Formula for a Tip
        strTip = FormatCurrency(dblAmount * (sglPercentage / 100))
End Sub

Private Sub Display(strOccupation As String, strTip As String)
    'Display
        picDisplay.Print "Tip the "; strOccupation; " "; strTip; "."
End Sub

