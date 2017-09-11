VERSION 5.00
Begin VB.Form ExampleDataFile 
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
      Height          =   2175
      Left            =   0
      ScaleHeight     =   2115
      ScaleWidth      =   4635
      TabIndex        =   1
      Top             =   0
      Width           =   4695
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   495
      Left            =   1680
      TabIndex        =   0
      Top             =   2280
      Width           =   1215
   End
End
Attribute VB_Name = "ExampleDataFile"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdDisplay_Click()
Dim strState1 As String, strstring2 As String, strstate3 As String
Dim intAvgPopulation As Integer
Dim intDiff1 As Integer, intDiff2 As Integer, intDiff3 As Integer

Open "d:\House\Classes\Basic Programming\Programming\states.txt" For Input As #1

Input #1, strState1, intDiff1
Input #1, strState2, intDiff2
Input #1, strstate3, intDiff3

Close #1

intAvgPopulation = (intDiff1 + intDiff2 + intDiff3) / 3

intDiff1 = intAvgPopulation - intDiff1
intDiff2 = intAvgPopulation - intDiff2
intDiff3 = intAvgPopulation - intDiff3

picDisplay.Print "State Name", "Population Difference"
picDisplay.Print strState1, intDiff1
picDisplay.Print strState2, intDiff2
picDisplay.Print strstate3, intDiff3
picDisplay.Print "The average population is"; intAvgPopulation

End Sub
