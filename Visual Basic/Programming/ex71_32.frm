VERSION 5.00
Begin VB.Form ex71_32 
   Caption         =   "Form1"
   ClientHeight    =   4935
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   4935
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtInput 
      Height          =   285
      Left            =   2640
      TabIndex        =   3
      Top             =   4080
      Width           =   1215
   End
   Begin VB.CommandButton cmdClearScreen 
      Caption         =   "Clear Screen"
      Height          =   255
      Left            =   3480
      TabIndex        =   2
      Top             =   4560
      Width           =   1095
   End
   Begin VB.CommandButton cmdDisplay 
      Caption         =   "Display Flight Number"
      Height          =   255
      Left            =   360
      TabIndex        =   1
      Top             =   4560
      Width           =   1695
   End
   Begin VB.PictureBox picDisplay 
      Height          =   3735
      Left            =   120
      ScaleHeight     =   3675
      ScaleWidth      =   4275
      TabIndex        =   0
      Top             =   120
      Width           =   4335
   End
   Begin VB.Label lblFlightNumber 
      Caption         =   "Enter flight number in question."
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   4080
      Width           =   2295
   End
End
Attribute VB_Name = "ex71_32"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Kemerait, Chris
'CSCI 1230, Section C
'ex71_32 Due November 14, 2001


'Psuedocode
    'load information FROM DATAFILE into arrays
    'ask user for flight number
    'find flight number
    'display information corresponding to flight number or nonexistent flight
  
'Dim Arrays
    Dim arrFlight() As String, arrOrigin() As String, arrDestination() As String, arrTime() As String

Private Sub cmdClearScreen_Click()
'Clear Screen
    picDisplay.Cls

End Sub

Private Sub cmdDisplay_Click()
'Dim Variables
    Dim strInput As String
'Dim Arrays
    
'Initialize Variables
    strInput = txtInput.Text
'Give input for flight number
    Select Case strInput
        Case Is = ""
            MsgBox "Please enter a Flight Number for query.", , "Missing Flight Number"
        Case Is = arrFlight(1)
            picDisplay.Print Tab(2); "Flight #"; Tab(14); "Origin"; Tab(25); "Destination"; Tab(40); "Departure Time"
            picDisplay.Print Tab(2); arrFlight(1); Tab(14); arrOrigin(1); Tab(25); arrDestination(1); Tab(40); arrTime(1)
        
        Case Is = arrFlight(2)
            picDisplay.Print Tab(2); "Flight #"; Tab(14); "Origin"; Tab(25); "Destination"; Tab(40); "Departure Time"
            picDisplay.Print Tab(2); arrFlight(2); Tab(14); arrOrigin(2); Tab(25); arrDestination(2); Tab(40); arrTime(2)

        Case Is = arrFlight(3)
            picDisplay.Print Tab(2); "Flight #"; Tab(14); "Origin"; Tab(25); "Destination"; Tab(40); "Departure Time"
            picDisplay.Print Tab(2); arrFlight(3); Tab(14); arrOrigin(3); Tab(25); arrDestination(3); Tab(40); arrTime(3)

        Case Is = arrFlight(4)
            picDisplay.Print Tab(2); "Flight #"; Tab(14); "Origin"; Tab(25); "Destination"; Tab(40); "Departure Time"
            picDisplay.Print Tab(2); arrFlight(4); Tab(14); arrOrigin(4); Tab(25); arrDestination(4); Tab(40); arrTime(4)

        Case Is = arrFlight(5)
            picDisplay.Print Tab(2); "Flight #"; Tab(14); "Origin"; Tab(25); "Destination"; Tab(40); "Departure Time"
            picDisplay.Print Tab(2); arrFlight(5); Tab(14); arrOrigin(5); Tab(25); arrDestination(5); Tab(40); arrTime(5)
        Case Else
            MsgBox "You have entered an unlisted Flight Number.  Please select a different Flight Number", , "Unlisted Flight Number"
    End Select

End Sub


Private Sub Form_Load()
'Dim Variables
    Dim intNum As Integer, intCount As Integer
'Open DataFile
    Open InputBox("Enter file to open for flight data.", "Prompt") For Input As #1
    'get number for loop and array
        Input #1, intNum
    'Redim array
        ReDim arrFlight(1 To intNum), arrOrigin(1 To intNum), arrDestination(1 To intNum), arrTime(1 To intNum)
    'Loop
        For intCount = 1 To intNum Step 1
            Input #1, arrFlight(intCount), arrOrigin(intCount), arrDestination(intCount), arrTime(intCount)
        Next intCount
    
End Sub
