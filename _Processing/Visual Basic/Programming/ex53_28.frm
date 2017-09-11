VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4695
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4695
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "Clear Screen"
      Height          =   255
      Left            =   0
      TabIndex        =   4
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   495
      Left            =   3480
      TabIndex        =   3
      Top             =   2640
      Width           =   1215
   End
   Begin VB.TextBox txtInput 
      Height          =   285
      Left            =   3120
      TabIndex        =   2
      Top             =   1920
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1815
      Left            =   0
      ScaleHeight     =   1755
      ScaleWidth      =   4635
      TabIndex        =   0
      Top             =   0
      Width           =   4695
   End
   Begin VB.Label lblCall 
      Caption         =   "What is the Call Number of the book?"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   2040
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Gary Huband, Section B
'Chapter 5.3, exercise 28
'Due Oct 24, 2001


Private Sub cmdDisplay_Click()
    'Safe Catch
        If txtInput.Text = "" Then
        MsgBox "Input Call Number", , "Error"
        End If
    'Declare Variables
        Dim intCall As Integer
    'Gather Input
        intCall = Val(txtInput.Text)
    'Select Case
        Select Case intCall
        Case 100 To 199
            picDisplay.Print "The book with call number"; intCall; "is located in the basement."
        Case 200 To 500, Is > 900
            picDisplay.Print "The book with call number"; intCall; "is located on the main floor."
        Case 501 To 699, 751 To 900
            picDisplay.Print "The book with call number"; intCall; "is located on the upper floor."
        Case 700 To 750
            picDisplay.Print "The book with call number"; intCall; "is located in the archives."
        Case Else
            picDisplay.Print "This is not a valid call number."
        End Select
End Sub

Private Sub cmdClearScreen_Click()
picDisplay.Cls
End Sub

