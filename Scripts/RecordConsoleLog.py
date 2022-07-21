import time

def Main():
	Log_name = xsh.Dialog.Prompt ("Insert log name?", "Prompt Dialog", "log", 0)					# unit: Minutes
	Log_time = int(xsh.Dialog.Prompt ("Insert single logging time?", "Prompt Dialog", "60", 0))		# unit: Minutes
	Record_times = int(xsh.Dialog.Prompt ("Insert Number of records?", "Prompt Dialog", "1", 0))	# Number of records, Total record time is 'Log_time' * 'Record_times' minutes.
	xsh.Screen.Synchronous = True		# True or False
	# xsh.Session.Sleep(500)
	for i in range(Record_times):
		#*** StartLog, StopLog ***
		t = time.localtime()
		datetime = time.strftime("%Y_%m_%d-%H_%M_%S", t)

		xsh.Session.LogFilePath = "D:\\Documents\\NetSarang Computer\\7\\Xshell\\Logs\\" + Log_name + "_" + str(i) + "_" + datetime + ".log"
		xsh.Session.StartLog()
		xsh.Session.Sleep(Log_time * 60 * 1000)
		
		# xsh.Session.Close()
		xsh.Session.StopLog()
	xsh.Dialog.MsgBox("Record Log finished.")
