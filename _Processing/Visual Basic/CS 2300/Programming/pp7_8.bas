Attribute VB_Name = "Module1"


'Declare Variables and arrays
    Public N As Integer, X As Integer, Y As Integer
    Public arrLastEnvironment() As Integer
    Public arrNewEnvironment() As Integer
    Public intGen As Integer
    



Private Function spacecheck() As Integer
'Check each space for neighbors
        '1.Check upper-lefthand corner
        '2.Check above
        '3.Check upper-rigthand corner
        '4.Check left
        '5.Check right
        '6.Check bottom-lefthand corner
        '7.Check below
        '8.Check bottom-righthand corner
'Declare Variables
    Dim intTotal As Integer, R As Integer, C As Integer
'Total Neighbors
    intTotal = 0
   
    For R = X - 1 To X + 1
        For C = Y - 1 To Y + 1
            intTotal = intTotal + arrLastEnvironment(R, C)
        Next C
    Next R
'If neighbors =3 then a habitant is born(space becomes a 1)
    If intTotal = 3 Then
        spacecheck = 1
    Else
        spacecheck = 0
    End If
End Function

Private Function habitantcheck() As Integer
'Check each habitant for neighbors
        '1.Check upper-lefthand corner
        '2.Check above
        '3.Check upper-rigthand corner
        '4.Check left
        '5.Check right
        '6.Check bottom-lefthand corner
        '7.Check below
        '8.Check bottom-righthand corner
'Declare Variables
    Dim intTotal As Integer, R As Integer, C As Integer
'Total Neighbors
    intTotal = 0

    For R = X - 1 To X + 1
        For C = Y - 1 To Y + 1
            intTotal = intTotal + arrLastEnvironment(R, C)
        Next C
    Next R
'If a habitant then run habitantcheck for value and - 1
    intTotal = intTotal - 1
'If neighbors is =2 or =3 then habitant survives (remains in table)
'If neighbors is >3 or <2 then habitant dies (becomes a space)
    'If 1 then habitant dies
    'If 2 then habitant lives
    'If 3 then habitant lives
    'If 4 then habitant dies
Select Case intTotal
    Case Is <= 1
        habitantcheck = 0
    Case Is = 2
        habitantcheck = 1
    Case Is = 3
        habitantcheck = 1
    Case Is > 3
        habitantcheck = 0
End Select
End Function

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
        GameofLife.picDisplay.Cls
        GameofLife.picDisplay.Print "You have reached the Apocalypse!"
        If intGen = 1 Then
            GameofLife.picDisplay.Print "After"; intGen; "Generation."
        Else:
            GameofLife.picDisplay.Print "After"; intGen; "Generations."
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

Public Sub DisplayGeneration()
    intGen = intGen + 1
    GameofLife.picDisplay.Cls
    If N >= 1 Then
        GameofLife.picDisplay.Print "Generation"; intGen
    End If
        For X = 1 To N
            Y = 1
                If arrNewEnvironment(X, Y) = 0 Then
                    GameofLife.picDisplay.Print Tab(Y); "-";
                Else:
                    GameofLife.picDisplay.Print Tab(Y); "|";
                End If
            For Y = 2 To N - 1
                If arrNewEnvironment(X, Y) = 0 Then
                    GameofLife.picDisplay.Print Tab(Y); "-";
                Else:
                    GameofLife.picDisplay.Print Tab(Y); "|";
                End If
            Next Y
                Y = N
                If arrNewEnvironment(X, Y) = 0 Then
                    GameofLife.picDisplay.Print Tab(Y); "-"
                Else:
                    GameofLife.picDisplay.Print Tab(Y); "|"
                End If
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

Public Sub SettoInput()
'Initialize Environment by row
'Display prompt for intializing rows until N number of boxes have been displayed
    'Vertical shift in table
    For X = 1 To N
    'Display Input box
    strEnvironment = (InputBox("Please enter a 0 for each space and a 1 for each habitant in the row.", "Initialize"))
        'Horizontal shift in table
        For Y = 1 To N
            'X,Y is equal to the Yth column's value for the row
            arrLastEnvironment(X, Y) = Val(Mid(strEnvironment, Y, 1))
            'create a space in value
                Select Case arrLastEnvironment(X, Y)
                Case Is < 1
                    arrLastEnvironment(X, Y) = 0
            'create a habitant in value
                Case Is >= 1
                    arrLastEnvironment(X, Y) = 1
                End Select
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
    GameofLife.picDisplay.Cls
    GameofLife.picDisplay.Print "Generation"; intGen
        
        For X = 1 To N
            Y = 1
                If arrLastEnvironment(X, Y) = 0 Then
                    GameofLife.picDisplay.Print Tab(Y); "-";
                Else:
                    GameofLife.picDisplay.Print Tab(Y); "|";
                End If
            For Y = 2 To N - 1
                If arrLastEnvironment(X, Y) = 0 Then
                    GameofLife.picDisplay.Print Tab(Y); "-";
                Else:
                    GameofLife.picDisplay.Print Tab(Y); "|";
                End If
            Next Y
                Y = N
                If arrLastEnvironment(X, Y) = 0 Then
                    GameofLife.picDisplay.Print Tab(Y); "-"
                Else:
                    GameofLife.picDisplay.Print Tab(Y); "|"
                End If
        Next X
End Sub

