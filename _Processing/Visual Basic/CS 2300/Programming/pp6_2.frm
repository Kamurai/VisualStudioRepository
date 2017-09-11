VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5685
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   5685
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "Clear Screen"
      Height          =   195
      Left            =   2760
      TabIndex        =   2
      Top             =   2880
      Width           =   1215
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display Sale Prices"
      Height          =   195
      Left            =   240
      TabIndex        =   1
      Top             =   2880
      Width           =   1575
   End
   Begin VB.PictureBox picDisplay 
      Height          =   2655
      Left            =   1560
      ScaleHeight     =   2595
      ScaleWidth      =   3195
      TabIndex        =   0
      Top             =   120
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "George Washington's Birthday Sale!!!"
      Height          =   735
      Left            =   240
      TabIndex        =   3
      Top             =   360
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'CSCI 1230, Section C
'Programming Project Chapter 6, #2
'Due November 7, 2001

Private Sub cmdClearScreen_Click()
picDisplay.Cls
End Sub

'PSUEDOCODE
    'Start Program
    'Declare Variables
    'Prompt to display prices for George Washington's Birthday Sale
    'Get datafile
    'Read datafile
    'Initialize original prices of all items
    'Compute neccessary changes in price (function)
        'Reduce by 10 %, round up to the nearest dollar, and subtract 1 cent
        'If the new price is greater than the old price, then the old price is used as the sale price
    'Display Prices (old and new)
    'Close datafile
    'End Program


Private Sub cmdDisplay_Click()
    'Declare Variables
        Dim sglNum As Single
    'Initialize Variables
    'Computation function required to
    'Display Prices
        'Open file
        'Read data from file
            picDisplay.Print "Item"; Tab(20); "Old Price"; Tab(30); "Sale Price"
            Open InputBox("Enter filename in query.", "Prompt") For Input As #1
                Do While Not EOF(1)
                    Input #1, strNom, sglNum
                    picDisplay.Print strNom; Tab(20); FormatCurrency(sglNum); Tab(30); FormatCurrency(Discount(sglNum))
                Loop
            Close #1
End Sub

Private Function Discount(sglNum As Single) As Single
    'Reduce by 10%, round up to the nearest dollar, and subtract 1 cent
        Discount = Round((sglNum - (sglNum * 0.1) + 0.5)) - 0.01
    'If discount price is higher, then use old price
        If Discount > sglNum Then
        Discount = sglNum
        End If
End Function



