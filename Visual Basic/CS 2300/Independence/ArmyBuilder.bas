Attribute VB_Name = "Module1"
'Checking
'Clicking makes checked.
    'If mnuObjectARSQD.Checked = False Then
        'mnuObjectARSQD.Checked = True
'Clicking makes unchecked
    'Else: mnuObjectARSQD.Checked = True
        'mnuObjectARSQD.Checked = False
    'End If
    
'For value setting:
    'Set Value, Group, and Squad at the
    'beginning of the event procedure
    
'Declare ALL Variable
            'Army
Public Army(1 To 16) As Integer
             'Squad,  Army
Public Squad(1 To 17, 1 To 16) As Integer
             'Group,   Squad,     Army
Public Group(1 To 10, 1 To 17, 1 To 16) As Integer
    'HQ has 7 Groups, 2 Squads
    'Troops has 5 Groups, 6 Squads
    'Elites has 5 Groups, 3 Squads
    'FastAttack has 4 Groups, 3 Squads
    'HeavySupport has 4 Groups, 3 Squads
     Public ActiveValue As Integer
     Public ActiveGroup As Integer
     Public ActiveSquad As Integer
     Public ActiveArmy As Integer
     
Public Sub AddValueToGroup()
    Group(ActiveGroup, ActiveSquad, ActiveArmy) = Group(ActiveGroup, ActiveSquad, ActiveArmy) + ActiveValue
End Sub
Public Sub RemoveValueFromGroup()
    Group(ActiveGroup, ActiveSquad, ActiveArmy) = Group(ActiveGroup, ActiveSquad, ActiveArmy) - ActiveValue
End Sub
Public Sub AddGroupToSquad()
    Squad(ActiveSquad, ActiveArmy) = Squad(ActiveSquad, ActiveArmy) + Group(ActiveGroup, ActiveSquad, ActiveArmy)
End Sub
Public Sub RemoveGroupFromSquad()
    Squad(ActiveSquad, ActiveArmy) = Squad(ActiveSquad, ActiveArmy) - Group(ActiveGroup, ActiveSquad, ActiveArmy)
End Sub
Public Sub AddSquadToArmy()
    Army(ActiveArmy) = Army(ActiveArmy) + Squad(ActiveSquad, ActiveArmy)
End Sub
Public Sub RemoveSquadFromArmy()
    Army(ActiveArmy) = Army(ActiveArmy) - Squad(ActiveSquad, ActiveArmy)
End Sub
