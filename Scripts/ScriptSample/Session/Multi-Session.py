def Main():
	bSelect = xsh.Session.SelectTabName("1")

	if bSelect == 1:
		xsh.Screen.Send("pwd")
		xsh.Screen.Send('\r')