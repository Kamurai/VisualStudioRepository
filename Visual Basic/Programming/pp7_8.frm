VERSION 5.00
Begin VB.Form GameofLife 
   Caption         =   "Game of Life"
   ClientHeight    =   4830
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4665
   LinkTopic       =   "Form1"
   ScaleHeight     =   4830
   ScaleWidth      =   4665
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdNextGeneration 
      Caption         =   "Next Generation"
      Default         =   -1  'True
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   600
      Width           =   2175
   End
   Begin VB.PictureBox picDisplay 
      Height          =   3495
      Left            =   240
      ScaleHeight     =   3435
      ScaleWidth      =   4035
      TabIndex        =   1
      Top             =   1200
      Width           =   4095
   End
   Begin VB.CommandButton cmdSet 
      Caption         =   "Set Initial Environment"
      Height          =   375
      Left            =   2160
      TabIndex        =   0
      Top             =   120
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   $"pp7_8.frx":0000
      Height          =   975
      Left            =   120
      TabIndex        =   3
      Top             =   0
      Width           =   2055
   End
End
Attribute VB_Name = "GameofLife"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'Huband CSCI 1230, section C
'Chapter 7 Programming Project 8 (Game of Life)
'Due Dec 5, 2001



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



Private Sub cmdSet_Click()
'Declare Variables
    Dim strEnvironment As String
'Get Input
    GetInput
'ReDim Variables
    ReDim arrLastEnvironment(0 To N + 1, 0 To N + 1) As Integer
    ReDim arrNewEnvironment(0 To N + 1, 0 To N + 1) As Integer
'Set array to zero
    SetLasttoZero
'Set array by input
    SettoInput
'Set outside cells
    SetOuterCells
'Display Environment
    DisplayEnvironment
'Enable Next Generation
    cmdNextGeneration.Enabled = True
End Sub

'Changing Generations
Private Sub cmdNextGeneration_Click()
'Declare Variables
    Dim intTotal As Integer
'Set Environment First
    SetFirst
'Check Neighbors
    CheckNeighbors
'Display Generation
    DisplayGeneration
'Employ Apocalypse
    Apocalypse
'NewtoOld
    NewtoOld
End Sub


