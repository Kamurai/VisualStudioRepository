VERSION 5.00
Begin VB.Form GameofLife 
   Caption         =   "Game of Life"
   ClientHeight    =   1500
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5055
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   ScaleHeight     =   1500
   ScaleWidth      =   5055
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnCell 
      Caption         =   "0"
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.CommandButton cmdNextGeneration 
      Caption         =   "     Next Generation"
      Height          =   495
      Left            =   3960
      TabIndex        =   1
      Top             =   480
      Width           =   975
   End
   Begin VB.CommandButton cmdSet 
      Caption         =   "    Set the Environment"
      Height          =   495
      Left            =   2760
      TabIndex        =   0
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label lblGeneration 
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   480
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   $"pp7_8Bonus.frx":0000
      Height          =   495
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   5055
   End
End
Attribute VB_Name = "GameofLife"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Huband CSCI 1230, section C
'Chapter 7 Programming Project 8 (Game of Life) with Bonus
'Due Dec 5, 2001
'WITH BONUS: CONTROL ARRAY


'PsuedoCode
'Start (Beginning generation)
'Prompt user for a numer (n)
'Create an n by n table
'All cells are dashes (spaces)
'Prompt user for initial inhabitants (notated by a 1 in a cell)
    'Game (Changing generation)
    'Check each space for a habitant
    'Check each habitant for neighbors
        '1.Check upper-lefthand corner
        '2.Check above
        '3.Check upper-rigthand corner
        '4.Check left
        '5.Check right
        '6.Check bottom-lefthand corner
        '7.Check below
        '8.Check bottom-righthand corner
    'If neighbors is =2 or =3 then habitant survives (remains in table)
    'If neighbors is >3 or <2 then habitant dies (becomes a space)
        'If 1 then habitant dies
        'If 2 then habitant lives
        'If 3 then habitant lives
        'If 4 then habitant dies
    'Check each space for neighbors
        '1.Check upper-lefthand corner
        '2.Check above
        '3.Check upper-rigthand corner
        '4.Check left
        '5.Check right
        '6.Check bottom-lefthand corner
        '7.Check below
        '8.Check bottom-righthand corner
    'If neighbors =3 then habitant is born (space becomes a habitant)
        'If all spaces are empty Display: you have entered the Apocalypse



Private Sub btnCell_Click(Index As Integer)
    Select Case btnCell(Index).Caption
'Create a habitant
    Case Is = "0"
        btnCell(Index).Caption = "1"
'Creat a space
    Case Is = "1"
        btnCell(Index).Caption = "0"
    End Select
For X = 1 To N
    For Y = 1 To N
        If btnCell(Y - 1 + N * (X - 1)).Caption = "0" Then
            arrLastEnvironment(X, Y) = 0
        Else:
            arrLastEnvironment(X, Y) = 1
        End If
    Next Y
Next X
End Sub

Private Sub cmdSet_Click()
'Declare Variables
    Dim strEnvironment As String
'Remove buttons
    RemoveButtons
'Enable buttons
    EnableButtons
'Get Input
    GetInput
'ReDim
    ReDim arrLastEnvironment(0 To N + 1, 0 To N + 1) As Integer
    ReDim arrNewEnvironment(0 To N + 1, 0 To N + 1) As Integer
'Set Arrays to Zero
    SetLasttoZero
'Set Environment
    SetEnvironment
'Set catches for right and bottom sides
    SetCatches
'Set Outer Cells
    SetOuterCells
'Display Generation 0
    DisplayEnvironment
'Set the form's shape
    FormShape

End Sub

'Changing Generations
Private Sub cmdNextGeneration_Click()
'Declare Variables
    Dim intTotal As Integer
'Make sure Environment is Set
    SetFirst
'Disable Buttons
    DisableButtons
'Check Neighboring Cells
    CheckNeighbors
'Display Generation
    DisplayGeneration
'Check for Apocalypse
    Apocalypse
'New becomes Old
    NewtoOld
End Sub



