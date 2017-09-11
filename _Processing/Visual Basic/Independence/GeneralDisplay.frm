VERSION 5.00
Begin VB.Form frmGeneralDisplay 
   Caption         =   "General Display Window"
   ClientHeight    =   5535
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8325
   BeginProperty Font 
      Name            =   "Comic Sans MS"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form4"
   ScaleHeight     =   5535
   ScaleWidth      =   8325
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnGDDone 
      Caption         =   "Done"
      Height          =   255
      Left            =   3840
      TabIndex        =   2
      Top             =   5160
      Width           =   735
   End
   Begin VB.PictureBox picDisplay 
      Height          =   4455
      Left            =   0
      ScaleHeight     =   4395
      ScaleWidth      =   8235
      TabIndex        =   1
      Top             =   0
      Width           =   8295
   End
   Begin VB.CommandButton btnDisplay 
      Caption         =   "Display Count"
      Height          =   495
      Left            =   3600
      TabIndex        =   0
      Top             =   4560
      Width           =   1215
   End
End
Attribute VB_Name = "frmGeneralDisplay"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btnDisplay_Click()
'Display a Clear Screen
picDisplay.Cls
'Display All Information
picDisplay.Print Tab(10); "SM"; Tab(16); "OR"; Tab(22); "CM"; Tab(28); "EL"; Tab(34); "DE"; Tab(40); "TY"; Tab(46); "IG"; Tab(52); "NE"; Tab(58); "SB"; Tab(64); "TA"; Tab(70); "GM"; Tab(76); "MT"; Tab(82); "VO"; Tab(88); "AV"; Tab(94); "AI"; Tab(100); "DL"
picDisplay.Print "HQ1"; Tab(10); Squad(1, 1); Tab(16); Squad(1, 2); Tab(22); Squad(1, 3); Tab(28); Squad(1, 4); Tab(34); Squad(1, 5); Tab(40); Squad(1, 6); Tab(46); Squad(1, 7); Tab(52); Squad(1, 8); Tab(58); Squad(1, 9); Tab(64); Squad(1, 10); Tab(70); Squad(1, 11); Tab(76); Squad(1, 12); Tab(82); Squad(1, 13); Tab(88); Squad(1, 14); Tab(94); Squad(1, 15); Tab(100); Squad(1, 16); ""
picDisplay.Print "HQ2"; Tab(10); Squad(2, 1); Tab(16); Squad(2, 2); Tab(22); Squad(2, 3); Tab(28); Squad(2, 4); Tab(34); Squad(2, 5); Tab(40); Squad(2, 6); Tab(46); Squad(2, 7); Tab(52); Squad(2, 8); Tab(58); Squad(2, 9); Tab(64); Squad(2, 10); Tab(70); Squad(2, 11); Tab(76); Squad(2, 12); Tab(82); Squad(2, 13); Tab(88); Squad(2, 14); Tab(94); Squad(2, 15); Tab(100); Squad(2, 16)
picDisplay.Print "T1"; Tab(10); Squad(3, 1); Tab(16); Squad(3, 2); Tab(22); Squad(3, 3); Tab(28); Squad(3, 4); Tab(34); Squad(3, 5); Tab(40); Squad(3, 6); Tab(46); Squad(3, 7); Tab(52); Squad(3, 8); Tab(58); Squad(3, 9); Tab(64); Squad(3, 10); Tab(70); Squad(3, 11); Tab(76); Squad(3, 12); Tab(82); Squad(3, 13); Tab(88); Squad(3, 14); Tab(94); Squad(3, 15); Tab(100); Squad(3, 16)
picDisplay.Print "T2"; Tab(10); Squad(4, 1); Tab(16); Squad(4, 2); Tab(22); Squad(4, 3); Tab(28); Squad(4, 4); Tab(34); Squad(4, 5); Tab(40); Squad(4, 6); Tab(46); Squad(4, 7); Tab(52); Squad(4, 8); Tab(58); Squad(4, 9); Tab(64); Squad(4, 10); Tab(70); Squad(4, 11); Tab(76); Squad(4, 12); Tab(82); Squad(4, 13); Tab(88); Squad(4, 14); Tab(94); Squad(4, 15); Tab(100); Squad(4, 16)
picDisplay.Print "T3"; Tab(10); Squad(5, 1); Tab(16); Squad(5, 2); Tab(22); Squad(5, 3); Tab(28); Squad(5, 4); Tab(34); Squad(5, 5); Tab(40); Squad(5, 6); Tab(46); Squad(5, 7); Tab(52); Squad(5, 8); Tab(58); Squad(5, 9); Tab(64); Squad(5, 10); Tab(70); Squad(5, 11); Tab(76); Squad(5, 12); Tab(82); Squad(5, 13); Tab(88); Squad(5, 14); Tab(94); Squad(5, 15); Tab(100); Squad(5, 16)
picDisplay.Print "T4"; Tab(10); Squad(6, 1); Tab(16); Squad(6, 2); Tab(22); Squad(6, 3); Tab(28); Squad(6, 4); Tab(34); Squad(6, 5); Tab(40); Squad(6, 6); Tab(46); Squad(6, 7); Tab(52); Squad(6, 8); Tab(58); Squad(6, 9); Tab(64); Squad(6, 10); Tab(70); Squad(6, 11); Tab(76); Squad(6, 12); Tab(82); Squad(6, 13); Tab(88); Squad(6, 14); Tab(94); Squad(6, 15); Tab(100); Squad(6, 16)
picDisplay.Print "T5"; Tab(10); Squad(7, 1); Tab(16); Squad(7, 2); Tab(22); Squad(7, 3); Tab(28); Squad(7, 4); Tab(34); Squad(7, 5); Tab(40); Squad(7, 6); Tab(46); Squad(7, 7); Tab(52); Squad(7, 8); Tab(58); Squad(7, 9); Tab(64); Squad(7, 10); Tab(70); Squad(7, 11); Tab(76); Squad(7, 12); Tab(82); Squad(7, 13); Tab(88); Squad(7, 14); Tab(94); Squad(7, 15); Tab(100); Squad(7, 16)
picDisplay.Print "T6"; Tab(10); Squad(8, 1); Tab(16); Squad(8, 2); Tab(22); Squad(8, 3); Tab(28); Squad(8, 4); Tab(34); Squad(8, 5); Tab(40); Squad(8, 6); Tab(46); Squad(8, 7); Tab(52); Squad(8, 8); Tab(58); Squad(8, 9); Tab(64); Squad(8, 10); Tab(70); Squad(8, 11); Tab(76); Squad(8, 12); Tab(82); Squad(8, 13); Tab(88); Squad(8, 14); Tab(94); Squad(8, 15); Tab(100); Squad(8, 16)
picDisplay.Print "E1"; Tab(10); Squad(9, 1); Tab(16); Squad(9, 2); Tab(22); Squad(9, 3); Tab(28); Squad(9, 4); Tab(34); Squad(9, 5); Tab(40); Squad(9, 6); Tab(46); Squad(9, 7); Tab(52); Squad(9, 8); Tab(58); Squad(9, 9); Tab(64); Squad(9, 10); Tab(70); Squad(9, 11); Tab(76); Squad(9, 12); Tab(82); Squad(9, 13); Tab(88); Squad(9, 14); Tab(94); Squad(9, 15); Tab(100); Squad(9, 16)
picDisplay.Print "E2"; Tab(10); Squad(10, 1); Tab(16); Squad(10, 2); Tab(22); Squad(10, 3); Tab(28); Squad(10, 4); Tab(34); Squad(10, 5); Tab(40); Squad(10, 6); Tab(46); Squad(10, 7); Tab(52); Squad(10, 8); Tab(58); Squad(10, 9); Tab(64); Squad(10, 10); Tab(70); Squad(10, 11); Tab(76); Squad(10, 12); Tab(82); Squad(10, 13); Tab(88); Squad(10, 14); Tab(94); Squad(10, 15); Tab(100); Squad(10, 16)
picDisplay.Print "E3"; Tab(10); Squad(11, 1); Tab(16); Squad(11, 2); Tab(22); Squad(11, 3); Tab(28); Squad(11, 4); Tab(34); Squad(11, 5); Tab(40); Squad(11, 6); Tab(46); Squad(11, 7); Tab(52); Squad(11, 8); Tab(58); Squad(11, 9); Tab(64); Squad(11, 10); Tab(70); Squad(11, 11); Tab(76); Squad(11, 12); Tab(82); Squad(11, 13); Tab(88); Squad(11, 14); Tab(94); Squad(11, 15); Tab(100); Squad(11, 16)
picDisplay.Print "FA1"; Tab(10); Squad(12, 1); Tab(16); Squad(12, 2); Tab(22); Squad(12, 3); Tab(28); Squad(12, 4); Tab(34); Squad(12, 5); Tab(40); Squad(12, 6); Tab(46); Squad(12, 7); Tab(52); Squad(12, 8); Tab(58); Squad(12, 9); Tab(64); Squad(12, 10); Tab(70); Squad(12, 11); Tab(76); Squad(12, 12); Tab(82); Squad(12, 13); Tab(88); Squad(12, 14); Tab(94); Squad(12, 15); Tab(100); Squad(12, 16)
picDisplay.Print "FA2"; Tab(10); Squad(13, 1); Tab(16); Squad(13, 2); Tab(22); Squad(13, 3); Tab(28); Squad(13, 4); Tab(34); Squad(13, 5); Tab(40); Squad(13, 6); Tab(46); Squad(13, 7); Tab(52); Squad(13, 8); Tab(58); Squad(13, 9); Tab(64); Squad(13, 10); Tab(70); Squad(13, 11); Tab(76); Squad(13, 12); Tab(82); Squad(13, 13); Tab(88); Squad(13, 14); Tab(94); Squad(13, 15); Tab(100); Squad(13, 16)
picDisplay.Print "FA3"; Tab(10); Squad(14, 1); Tab(16); Squad(14, 2); Tab(22); Squad(14, 3); Tab(28); Squad(14, 4); Tab(34); Squad(14, 5); Tab(40); Squad(14, 6); Tab(46); Squad(14, 7); Tab(52); Squad(14, 8); Tab(58); Squad(14, 9); Tab(64); Squad(14, 10); Tab(70); Squad(14, 11); Tab(76); Squad(14, 12); Tab(82); Squad(14, 13); Tab(88); Squad(14, 14); Tab(94); Squad(14, 15); Tab(100); Squad(14, 16)
picDisplay.Print "HS1"; Tab(10); Squad(15, 1); Tab(16); Squad(15, 2); Tab(22); Squad(15, 3); Tab(28); Squad(15, 4); Tab(34); Squad(15, 5); Tab(40); Squad(15, 6); Tab(46); Squad(15, 7); Tab(52); Squad(15, 8); Tab(58); Squad(15, 9); Tab(64); Squad(15, 10); Tab(70); Squad(15, 11); Tab(76); Squad(15, 12); Tab(82); Squad(15, 13); Tab(88); Squad(15, 14); Tab(94); Squad(15, 15); Tab(100); Squad(15, 16)
picDisplay.Print "HS2"; Tab(10); Squad(16, 1); Tab(16); Squad(16, 2); Tab(22); Squad(16, 3); Tab(28); Squad(16, 4); Tab(34); Squad(16, 5); Tab(40); Squad(16, 6); Tab(46); Squad(16, 7); Tab(52); Squad(16, 8); Tab(58); Squad(16, 9); Tab(64); Squad(16, 10); Tab(70); Squad(16, 11); Tab(76); Squad(16, 12); Tab(82); Squad(16, 13); Tab(88); Squad(16, 14); Tab(94); Squad(16, 15); Tab(100); Squad(16, 16)
picDisplay.Print "HS3"; Tab(10); Squad(17, 1); Tab(16); Squad(17, 2); Tab(22); Squad(17, 3); Tab(28); Squad(17, 4); Tab(34); Squad(17, 5); Tab(40); Squad(17, 6); Tab(46); Squad(17, 7); Tab(52); Squad(17, 8); Tab(58); Squad(17, 9); Tab(64); Squad(17, 10); Tab(70); Squad(17, 11); Tab(76); Squad(17, 12); Tab(82); Squad(17, 13); Tab(88); Squad(17, 14); Tab(94); Squad(17, 15); Tab(100); Squad(17, 16)
'Totals
Army(1) = Squad(1, 1) + Squad(2, 1) + Squad(3, 1) + Squad(4, 1) + Squad(5, 1) + Squad(6, 1) + Squad(7, 1) + Squad(8, 1) + Squad(9, 1) + Squad(10, 1) + Squad(11, 1) + Squad(12, 1) + Squad(13, 1) + Squad(14, 1) + Squad(15, 1) + Squad(16, 1) + Squad(17, 1)
Army(2) = Squad(1, 2) + Squad(2, 2) + Squad(3, 2) + Squad(4, 2) + Squad(5, 2) + Squad(6, 2) + Squad(7, 2) + Squad(8, 2) + Squad(9, 2) + Squad(10, 2) + Squad(11, 2) + Squad(12, 2) + Squad(13, 2) + Squad(14, 2) + Squad(15, 2) + Squad(16, 2) + Squad(17, 2)
Army(3) = Squad(1, 3) + Squad(2, 3) + Squad(3, 3) + Squad(4, 3) + Squad(5, 3) + Squad(6, 3) + Squad(7, 3) + Squad(8, 3) + Squad(9, 3) + Squad(10, 3) + Squad(11, 3) + Squad(12, 3) + Squad(13, 3) + Squad(14, 3) + Squad(15, 3) + Squad(16, 3) + Squad(17, 3)
Army(4) = Squad(1, 4) + Squad(2, 4) + Squad(3, 4) + Squad(4, 4) + Squad(5, 4) + Squad(6, 4) + Squad(7, 4) + Squad(8, 4) + Squad(9, 4) + Squad(10, 4) + Squad(11, 4) + Squad(12, 4) + Squad(13, 4) + Squad(14, 4) + Squad(15, 4) + Squad(16, 4) + Squad(17, 4)
Army(5) = Squad(1, 5) + Squad(2, 5) + Squad(3, 5) + Squad(4, 5) + Squad(5, 5) + Squad(6, 5) + Squad(7, 5) + Squad(8, 5) + Squad(9, 5) + Squad(10, 5) + Squad(11, 5) + Squad(12, 5) + Squad(13, 5) + Squad(14, 5) + Squad(15, 5) + Squad(16, 5) + Squad(17, 5)
Army(6) = Squad(1, 6) + Squad(2, 6) + Squad(3, 6) + Squad(4, 6) + Squad(5, 6) + Squad(6, 6) + Squad(7, 6) + Squad(8, 6) + Squad(9, 6) + Squad(10, 6) + Squad(11, 6) + Squad(12, 6) + Squad(13, 6) + Squad(14, 6) + Squad(15, 6) + Squad(16, 6) + Squad(17, 6)
Army(7) = Squad(1, 7) + Squad(2, 7) + Squad(3, 7) + Squad(4, 7) + Squad(5, 7) + Squad(6, 7) + Squad(7, 7) + Squad(8, 7) + Squad(9, 7) + Squad(10, 7) + Squad(11, 7) + Squad(12, 7) + Squad(13, 7) + Squad(14, 7) + Squad(15, 7) + Squad(16, 7) + Squad(17, 7)
Army(8) = Squad(1, 8) + Squad(2, 8) + Squad(3, 8) + Squad(4, 8) + Squad(5, 8) + Squad(6, 8) + Squad(7, 8) + Squad(8, 8) + Squad(9, 8) + Squad(10, 8) + Squad(11, 8) + Squad(12, 8) + Squad(13, 8) + Squad(14, 8) + Squad(15, 8) + Squad(16, 8) + Squad(17, 8)
Army(9) = Squad(1, 9) + Squad(2, 9) + Squad(3, 9) + Squad(4, 9) + Squad(5, 9) + Squad(6, 9) + Squad(7, 9) + Squad(8, 9) + Squad(9, 9) + Squad(10, 9) + Squad(11, 9) + Squad(12, 9) + Squad(13, 9) + Squad(14, 9) + Squad(15, 9) + Squad(16, 9) + Squad(17, 9)
Army(10) = Squad(1, 10) + Squad(2, 10) + Squad(3, 10) + Squad(4, 10) + Squad(5, 10) + Squad(6, 10) + Squad(7, 10) + Squad(8, 10) + Squad(9, 10) + Squad(10, 10) + Squad(11, 10) + Squad(12, 10) + Squad(13, 10) + Squad(14, 10) + Squad(15, 10) + Squad(16, 10) + Squad(17, 10)
Army(11) = Squad(1, 11) + Squad(2, 11) + Squad(3, 11) + Squad(4, 11) + Squad(5, 11) + Squad(6, 11) + Squad(7, 11) + Squad(8, 11) + Squad(9, 11) + Squad(10, 11) + Squad(11, 11) + Squad(12, 11) + Squad(13, 11) + Squad(14, 11) + Squad(15, 11) + Squad(16, 11) + Squad(17, 11)
Army(12) = Squad(1, 12) + Squad(2, 12) + Squad(3, 12) + Squad(4, 12) + Squad(5, 12) + Squad(6, 12) + Squad(7, 12) + Squad(8, 12) + Squad(9, 12) + Squad(10, 12) + Squad(11, 12) + Squad(12, 12) + Squad(13, 12) + Squad(14, 12) + Squad(15, 12) + Squad(16, 12) + Squad(17, 12)
Army(13) = Squad(1, 13) + Squad(2, 13) + Squad(3, 13) + Squad(4, 13) + Squad(5, 13) + Squad(6, 13) + Squad(7, 13) + Squad(8, 13) + Squad(9, 13) + Squad(10, 13) + Squad(11, 13) + Squad(12, 13) + Squad(13, 13) + Squad(14, 13) + Squad(15, 13) + Squad(16, 13) + Squad(17, 13)
Army(14) = Squad(1, 14) + Squad(2, 14) + Squad(3, 14) + Squad(4, 14) + Squad(5, 14) + Squad(6, 14) + Squad(7, 14) + Squad(8, 14) + Squad(9, 14) + Squad(10, 14) + Squad(11, 14) + Squad(12, 14) + Squad(13, 14) + Squad(14, 14) + Squad(15, 14) + Squad(16, 14) + Squad(17, 14)
Army(15) = Squad(1, 15) + Squad(2, 15) + Squad(3, 15) + Squad(4, 15) + Squad(5, 15) + Squad(6, 15) + Squad(7, 15) + Squad(8, 15) + Squad(9, 15) + Squad(10, 15) + Squad(11, 15) + Squad(12, 15) + Squad(13, 15) + Squad(14, 15) + Squad(15, 15) + Squad(16, 15) + Squad(17, 15)
Army(16) = Squad(1, 16) + Squad(2, 16) + Squad(3, 16) + Squad(4, 16) + Squad(5, 16) + Squad(6, 16) + Squad(7, 16) + Squad(8, 16) + Squad(9, 16) + Squad(10, 16) + Squad(11, 16) + Squad(12, 16) + Squad(13, 16) + Squad(14, 16) + Squad(15, 16) + Squad(16, 16) + Squad(17, 16)

'Display Totals
picDisplay.Print "Total"; Tab(10); Army(1); Tab(16); Army(2); Tab(22); Army(3); Tab(28); Army(4); Tab(34); Army(5); Tab(40); Army(6); Tab(46); Army(7); Tab(52); Army(8); Tab(58); Army(9); Tab(64); Army(10); Tab(70); Army(11); Tab(76); Army(12); Tab(82); Army(13); Tab(88); Army(14); Tab(94); Army(15); Tab(100); Army(16)
End Sub

Private Sub btnGDDone_Click()
frmGeneralDisplay.Hide
End Sub


