VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2505
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4590
   LinkTopic       =   "Form1"
   ScaleHeight     =   2505
   ScaleWidth      =   4590
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display"
      Height          =   495
      Left            =   1680
      TabIndex        =   1
      Top             =   1920
      Width           =   1215
   End
   Begin VB.PictureBox picDisplay 
      Height          =   1815
      Left            =   120
      ScaleHeight     =   1755
      ScaleWidth      =   4275
      TabIndex        =   0
      Top             =   0
      Width           =   4335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Gary Huband, Section 9
'Chapter 3.5, exercise 50
'Due September 19, 2001
Private Sub cmdDisplay_Click()
    'Declare Variables
        Dim strCollege1 As String, strCollege2 As String, strCollege3 As String
        Dim intTotal1 As Integer
        Dim intTotal2 As Integer
        Dim dblEnroll1 As Double, dblEnroll2 As Double, dblEnroll3 As Double
        Dim intFaculty1 As Single, intFaculty2 As Single, intFaculty3 As Single
    'Open DataFile(.txt)
        Open "D:\House\classes\Basic Programming\Programming\Population.txt" For Input As #1
    'Read DataFile(.txt)
        Input #1, strCollege1, dblEnroll1, intFaculty1
        Input #1, strCollege2, dblEnroll2, intFaculty2
        Input #1, strCollege3, dblEnroll3, intFaculty3
    'Close DataFile(.txt)
        Close #1
    'Calculate Ratios
        dblTotal1 = dblEnroll1 + dblEnroll2 + dblEnroll3
        intTotal2 = intFaculty1 + intFaculty2 + intFaculty3
    'Display Ratios, etc.
        picDisplay.Print "Enrollment to Faculty Ratio"
        picDisplay.Print strCollege1, , dblEnroll1 / intFaculty1
        picDisplay.Print strCollege2, dblEnroll2 / intFaculty2
        picDisplay.Print strCollege3, , dblEnroll3 / intFaculty3
        picDisplay.Print "Total Ratio", , dblTotal1 / intTotal2
End Sub
