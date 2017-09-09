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
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear Screen"
      Height          =   495
      Left            =   1680
      TabIndex        =   4
      Top             =   2640
      Width           =   1215
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Show New Balance"
      Height          =   495
      Left            =   3000
      TabIndex        =   2
      Top             =   2640
      Width           =   1575
   End
   Begin VB.TextBox txtInput 
      Height          =   495
      Left            =   3240
      TabIndex        =   1
      Top             =   2040
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1695
      Left            =   120
      ScaleHeight     =   1635
      ScaleWidth      =   4395
      TabIndex        =   0
      Top             =   120
      Width           =   4455
   End
   Begin VB.Label lblOne 
      Caption         =   "Enter the fixed amount that is entered into the bank account monthly"
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   2040
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Example of how to be an idiot while calculating
'a new balance in the bank

Private Sub cmdClear_Click()
picDisplay.Cls
End Sub

Private Sub cmdDisplay_Click()
    'Dim Variables
        Dim sglFamount As Single
        Dim sglPrebal As Single
        Dim intCount As Integer
    
    'Get Inputs
        Call GetFamount(sglFamount)
    'Calculate Formula
    'Display once for each month
        Call Newbal(sglFamount, sglPrebal, intCount)
        Call Newbal(sglFamount, sglPrebal, intCount)
        Call Newbal(sglFamount, sglPrebal, intCount)
        Call Newbal(sglFamount, sglPrebal, intCount)
End Sub

Private Sub GetFamount(sglFamount As Single)
    'Value of sglFamount
        sglFamount = Val(txtInput.Text)
End Sub

Private Sub Newbal(sglFamount As Single, sglPrebal As Single, intCount As Integer)
    'Formula
        sglPrebal = 1.005 * sglPrebal + sglFamount
    'Count
        intCount = intCount + 1
    'Display
        picDisplay.Print "The balance for month"; intCount; "is"; sglPrebal
        End Sub

