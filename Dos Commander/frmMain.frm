VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "DOS COMMAND EXECUTER"
   ClientHeight    =   2685
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3795
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2685
   ScaleWidth      =   3795
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   2280
      TabIndex        =   6
      Top             =   0
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Exit"
      Height          =   495
      Left            =   1800
      TabIndex        =   5
      Top             =   2160
      Width           =   1935
   End
   Begin VB.CommandButton Command3 
      Caption         =   "About"
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Send Commands To Command.com"
      Height          =   495
      Left            =   1800
      TabIndex        =   2
      Top             =   1560
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      Height          =   1095
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   360
      Width           =   3615
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Send Commands To FTP.exe"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "Enter Your Commands Here"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Text2.Text = "c:\windows\system32\ftp.exe"
loader
End Sub

Private Sub Command2_Click()
Text2.Text = "c:\windows\system32\command.com"
loader
 

End Sub


Private Sub Command3_Click()
frmAbout.Show

End Sub

Private Sub Command4_Click()
End
End Sub
Private Sub loader()
 Dim CommandWindowName As String
   Dim SendToDos As String
   Clipboard.Clear
   
   SendToDos = Text1.Text
   
   Clipboard.SetText SendToDos + Chr$(13)





Dim lFoundWindow As Long
Dim manu As Long
Dim lOK As Long
Dim lOK1 As Long
Dim X As Variant
z = Text2.Text
  Shell z, vbHide
     
lFoundWindow = FindWindow(vbNullString, z)
manu = FindWindow(vbNullString, "Form1")
      
        
       
            lOK1 = ShowWindow(lFoundWindow, 9)
            lOK1 = ShowWindow(lFoundWindow, 10)
              SendKeys "% ee", 1
              SendKeys "% ep", 1
              
      lOK = SetForegroundWindow(manu)
        
        lFoundWindow = 0
        lOK = 0
        lOK1 = 0

End Sub

