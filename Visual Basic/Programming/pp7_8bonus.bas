Attribute VB_Name = "Module1"


'Declare Variables and arrays
    Public N As Integer, X As Integer, Y As Integer
    Public arrLastEnvironment() As Integer
    Public arrNewEnvironment() As Integer
    Public intGen As Integer
    Public Index As Integer
    Public strGen As String
  
Public Sub DisableButtons()
'Disable Buttons
    For Index = 0 To N * N - 1
        GameofLife.btnCell(Index).Enabled = False
    Next Index
End Sub

Public Sub RemoveButtons()
'Remove buttons from last game
        If N >= 1 Then
            For Index = 1 To N * N - 1
                Unload GameofLife.btnCell(Index)
            Next Index
        End If
End Sub
Public Sub EnableButtons()
'Enable buttons
    If N >= 1 Then
            GameofLife.btnCell(0).Enabled = True
    End If
    GameofLife.cmdNextGeneration.Enabled = True
End Sub

Public Sub FormShape()
'Set form height and width
    Select Case N
    Case Is >= 12
'Height
        GameofLife.Height = GameofLife.btnCell(N * N - 1).Top + GameofLife.btnCell(N * N - 1).Height + GameofLife.btnCell(N * N - 1).Height + GameofLife.btnCell(N * N - 1).Height
'Width
        GameofLife.Width = GameofLife.btnCell(N * N - 1).Left + GameofLife.btnCell(N * N - 1).Width + GameofLife.btnCell(N * N - 1).Width
    Case Is < 12
        GameofLife.Width = GameofLife.cmdNextGeneration.Left + GameofLife.cmdNextGeneration.Width + GameofLife.cmdNextGeneration.Width / 5
        GameofLife.Height = GameofLife.btnCell(N * N - 1).Top + GameofLife.btnCell(N * N - 1).Height + GameofLife.btnCell(N * N - 1).Height + GameofLife.btnCell(N * N - 1).Height
    Case Else
'Height
        GameofLife.Height = GameofLife.btnCell(N * N - 1).Top + GameofLife.btnCell(N * N - 1).Height + GameofLife.btnCell(N * N - 1).Height + GameofLife.btnCell(N * N - 1).Height
    End Select

End Sub

Public Sub SetCatches()
'Set catches for right and bottom sides
        For Index = 1 To N * N - 1
            If (Index + 1) / N = Round((Index + 1) / N) Then
                
                If Index = N * N - 1 Then
                    GameofLife.btnCell(Index).Top = GameofLife.btnCell(Index - 1).Top
                Else:
                    GameofLife.btnCell(Index + 1).Left = GameofLife.btnCell(0).Left
                    GameofLife.btnCell(Index + 1).Top = GameofLife.btnCell(Index + 1 - N).Top + GameofLife.btnCell(Index + 1 - N).Height
                End If
            End If
        Next Index
        For Index = N To N * N - 1
            If Index / N <> Round(Index / N) Then
                GameofLife.btnCell(Index).Left = GameofLife.btnCell(Index - 1).Left + 400
            End If
        Next Index

End Sub

Public Sub SetEnvironment()
'Initialize Environment by row
'Display prompt for intializing rows until N number of boxes have been displayed
    'Vertical shift in table
'Display Input box
        GameofLife.btnCell(0).Visible = True
'Place input boxes for next game
        For Index = 1 To N * N - 1
            Load GameofLife.btnCell(Index)
            GameofLife.btnCell(Index).Visible = True
            GameofLife.btnCell(Index).Left = GameofLife.btnCell(Index - 1).Left + 400
        Next Index
        For Index = 1 To N - 1
            GameofLife.btnCell(Index).Top = GameofLife.btnCell(0).Top
        Next Index
        For Index = N To N * N - 1
            GameofLife.btnCell(Index).Top = GameofLife.btnCell(Index - N).Top + GameofLife.btnCell(Index - N).Height
        Next Index

End Sub


Public Sub Apocalypse()
'Count for Apocalypse
    intTotal = 0
    For X = 1 To N
        For Y = 1 To N
            intTotal = intTotal + arrNewEnvironment(X, Y)
        Next Y
    Next X
'Apocalypse statement
    If intTotal = 0 And N >= 1 Then
        GameofLife.lblGeneration.Caption = ""
        GameofLife.lblGeneration.Caption = "You have reached the Apocalypse!"
        If intGen = 1 Then
            GameofLife.lblGeneration.Caption = "You have reached the Apocalypse!  After" + " " + strGen + " " + "Generation."
        Else:
            GameofLife.lblGeneration.Caption = "After" + " " + strGen + " " + "Generations."
        End If
        GameofLife.cmdNextGeneration.Enabled = False
    End If

End Sub

Public Sub NewtoOld()
'New becomes Old
    For X = 1 To N
        For Y = 1 To N
            arrLastEnvironment(X, Y) = arrNewEnvironment(X, Y)
        Next Y
    Next X

End Sub

Public Sub SetFirst()
If N = 0 Then
    MsgBox "Set the Environment First", , "Attention!"
End If
End Sub

Public Sub DisplayGeneration()
'Display Generation
    intGen = intGen + 1
    strGen = Val(intGen)
    If N >= 1 Then
        GameofLife.lblGeneration.Caption = "Generation" + strGen
    End If
        For X = 1 To N
            For Y = 1 To N
                If arrNewEnvironment(X, Y) = 0 Then
                    GameofLife.btnCell(Y - 1 + N * (X - 1)).Caption = "0"
                Else:
                    GameofLife.btnCell(Y - 1 + N * (X - 1)).Caption = "1"
                End If
            Next Y
        Next X

End Sub
Public Sub GetInput()
'Take value of user's input
    Do
    N = Val(InputBox("Enter the length/width of the environment", "Input"))
        If N = 0 Then
            MsgBox "Please enter a number", , "Prompt"
        End If
     Loop Until N > 0

End Sub

Public Sub SetLasttoZero()
'Initialize Array
    For X = 1 To N
        For Y = 1 To N
            arrLastEnvironment(X, Y) = 0
            arrNewEnvironment(X, Y) = 0
        Next Y
    Next X
End Sub

Public Sub CheckNeighbors()
'Declare Variables
    Dim R As Integer, C As Integer

'Check each space for a habitant by Systematically going through the 2-d array and check for neighbors
'If a space then run spacecheck for value
'If a habitant then run habitantcheck for value and - 1
'For corners, if arrEnvironment(X,Y) = "" then arrEnvironment(X,Y) = 0
'Run checks
For X = 1 To N
    For Y = 1 To N
        arrNewEnvironment(X, Y) = TotalNeighbors
    Next Y
Next X
End Sub



Public Sub SetOuterCells()


'N + 1 elements
    For X = 0 To N + 1
        arrLastEnvironment(X, N + 1) = 0
            For Y = 0 To N + 1
                arrLastEnvironment(N + 1, 0) = 0
            Next Y
    Next X
End Sub

Public Sub DisplayEnvironment()
'Display Generation 0
    intGen = 0
    strGen = Val(intGen)
    GameofLife.lblGeneration.Caption = "Generation" + strGen
End Sub

Private Function TotalNeighbors()
'Total Neighbors
    TotalNeighbors = 0
        'Check each cell for neighbors
            '1.Check upper-lefthand corner
            '2.Check above
            '3.Check upper-rigthand corner
            '4.Check left
            '5.Check right
            '6.Check bottom-lefthand corner
            '7.Check below
            '8.Check bottom-righthand corner
    For R = X - 1 To X + 1
        For C = Y - 1 To Y + 1
            TotalNeighbors = TotalNeighbors + arrLastEnvironment(R, C)
        Next C
    Next R
'If neighbors =3 then a habitant is born(space becomes a 1)
'If neighbors is =2 or =3 then habitant survives (remains in table)
'If neighbors is >3 or <2 then habitant dies (becomes a space)
    'If 1 then habitant dies
    'If 2 then habitant lives
    'If 3 then habitant lives
    'If 4 then habitant dies
    'If a habitant then run habitantcheck for value and - 1
    If (arrLastEnvironment(X, Y) = 0 And TotalNeighbors = 3) Or (arrLastEnvironment(X, Y) = 1 And ((TotalNeighbors - 1) = 2 Or (TotalNeighbors - 1) = 3)) Then
            TotalNeighbors = 1
    Else

        TotalNeighbors = 0
    
    End If
End Function


