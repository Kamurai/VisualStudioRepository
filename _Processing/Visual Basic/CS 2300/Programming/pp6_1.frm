VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3345
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4440
   LinkTopic       =   "Form1"
   ScaleHeight     =   3345
   ScaleWidth      =   4440
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox picDisplay 
      Height          =   2535
      Left            =   120
      ScaleHeight     =   2475
      ScaleWidth      =   4155
      TabIndex        =   2
      Top             =   120
      Width           =   4215
   End
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "Clear Screen"
      Height          =   255
      Left            =   2400
      TabIndex        =   1
      Top             =   2880
      Width           =   1095
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   255
      Left            =   1080
      TabIndex        =   0
      Top             =   2880
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Gary Huband, Section C
'PP6_1, page 298
'Due Oct. 31, 2001

Private Sub cmdClearScreen_Click()
    'Clear Screen
        picDisplay.Cls
End Sub

Private Sub cmdDisplay_Click()
    'Declare Variables
        Dim strName As String, strTitle As String
        Dim sglRate As Single, sglHours As Single
        Dim dblTotal As Double
        Dim strFilename As String
    'Initialize Total
        Call Initialize(dblTotal, strFilename)
    'Data file
           
    'Open the file
        Open strFilename For Input As #1
    'Read the file
        Input #1, strTitle
    'Display Title
        picDisplay.Print strTitle
        picDisplay.Print
    'Required to loop this
        Do While Not EOF(1)
        Input #1, strName, sglRate, sglHours
    
    'Call Counter
        Call Counter(dblTotal, sglHours, sglRate)
    'Call Display
        Call Display(strName, sglRate, sglHours)
        
        Loop
    'Close the file
        Close #1
    'Display Total
        picDisplay.Print
        picDisplay.Print "Final Total "; Tab(14); FormatCurrency(dblTotal)
End Sub

Private Sub Initialize(dblTotal As Double, strFilename As String)
    'Initialize Filename
        strFilename = InputBox("Enter the filename for the payroll", "File Name")
    'Initialize Total
        dblTotal = 0
End Sub

Private Function Gross(ByVal sglHours As Single, ByVal sglRate As Single) As Double
    'Time Formula
        Gross = sglRate * sglHours
    'Overtime Formula
        If sglHours - 40 > 0 Then
            Gross = (sglHours - 40) * sglRate * 0.5 + Gross
        End If
End Function

Private Sub Display(strName As String, sglRate As Single, sglHours As Single)
    'Display person's information
        picDisplay.Print strName, FormatCurrency(sglRate), sglHours, FormatCurrency(Gross(sglHours, sglRate))
End Sub

Private Sub Counter(dblTotal As Double, sglHours As Single, sglRate As Single)
    'Add Gross to total
        dblTotal = dblTotal + Gross(sglHours, sglRate)
End Sub
