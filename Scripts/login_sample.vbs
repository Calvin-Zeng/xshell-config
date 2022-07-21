Sub Main
    '*** WaitForString ***
    xsh.Screen.Send(VbCr)
    xsh.Screen.WaitForString("ogin:")        ' input "login" in Terminal
    
    '*** Send ***
    xsh.Screen.Send("root")
    xsh.Screen.Send(VbCr)
    '*** WaitForString ***
    xsh.Screen.WaitForString("assword:")     ' input "password" in Terminal
    xsh.Session.Sleep(500)
    xsh.Screen.Send("root")
    xsh.Screen.Send(VbCr)
End Sub