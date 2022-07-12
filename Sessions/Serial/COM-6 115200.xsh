[CONNECTION:PROXY]
Proxy=
StartUp=0
[CONNECTION:SERIAL]
BaudRate=12
StopBits=0
FlowCtrl=0
Parity=0
DataBits=3
ComPort=5
[SessionInfo]
Version=7.1
Description=Xshell session file
[TRACE]
SockConn=1
SshLogin=0
SshTunneling=0
SshPacket=0
TelnetOptNego=0
[CONNECTION:SSH]
LaunchAuthAgent=1
KeyExchange=
SSHCiphers=chacha20-poly1305@openssh.com:1,aes128-ctr:1,aes192-ctr:1,aes256-ctr:1,aes128-gcm@openssh.com:1,aes256-gcm@openssh.com:1,aes128-cbc:1,aes192-cbc:1,aes256-cbc:1,3des-cbc:1,blowfish-cbc:1,cast128-cbc:1,arcfour:1,rijndael128-cbc:1,rijndael192-cbc:1,rijndael256-cbc:1,rijndael-cbc@lysator.liu.se:1,arcfour128:1,arcfour256:1
ForwardToXmanager=1
AgentForwarding=0
Compression=0
KeyExchangeList=ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group-exchange-sha1,diffie-hellman-group14-sha1,diffie-hellman-group1-sha1
NoTerminal=0
CipherList=aes128-cbc,3des-cbc,blowfish-cbc,cast128-cbc,arcfour,aes192-cbc,aes128-gcm@openssh.com,aes256-gcm@openssh.com,aes256-cbc,rijndael128-cbc,rijndael192-cbc,rijndael256-cbc,aes256-ctr,aes192-ctr,aes128-ctr,rijndael-cbc@lysator.liu.se,arcfour128,arcfour256
UseAuthAgent=0
MAC=
SSHMACs=hmac-sha2-256-etm@openssh.com:1,hmac-sha2-512-etm@openssh.com:1,hmac-sha1-etm@openssh.com:1,hmac-sha2-256:1,hmac-sha2-512:1,hmac-sha1:1,hmac-sha1-96:1,hmac-md5:1,hmac-md5-96:1,hmac-ripemd160:1,hmac-ripemd160@openssh.com:1,umac-64@openssh.com:1,umac-128@openssh.com:1,hmac-sha1-96-etm@openssh.com:1,hmac-md5-etm@openssh.com:1,hmac-md5-96-etm@openssh.com:1,umac-64-etm@openssh.com:1,umac-128-etm@openssh.com:1
InitRemoteDirectory=
ForwardX11=0
VexMode=0
Cipher=
Display=localhost:0.0
FwdReqCount=0
InitLocalDirectory=
MACList=hmac-sha2-256-etm@openssh.com,hmac-sha2-512-etm@openssh.com,hmac-sha1-etm@openssh.com,hmac-sha2-256,hmac-sha2-512,hmac-sha1,hmac-sha1-96,hmac-md5,hmac-md5-96,hmac-ripemd160,hmac-ripemd160@openssh.com,hmac-sha1-96-etm@openssh.com,hmac-md5-etm@openssh.com,hmac-md5-96-etm@openssh.com
SSHKeyExchanges=curve25519-sha256@libssh.org:1,ecdh-sha2-nistp256:1,ecdh-sha2-nistp384:1,ecdh-sha2-nistp521:1,diffie-hellman-group-exchange-sha256:1,diffie-hellman-group-exchange-sha1:1,diffie-hellman-group18-sha512:1,diffie-hellman-group16-sha512:1,diffie-hellman-group14-sha256:1,diffie-hellman-group14-sha1:1,diffie-hellman-group1-sha1:1
NoConnFileManager=1
RemoteCommand=
SaveHostKey=0
[BELL]
FilePath=
RepeatTime=3
FlashWindow=0
BellMode=1
IgnoreTime=3
[USERINTERFACE]
NoQuickButton=0
QuickCommand=Opensync
[CONNECTION:FTP]
Passive=1
InitRemoteDirectory=
InitLocalDirectory=
[TRANSFER]
FolderMethod=0
DropXferHandler=2
XmodemUploadCmd=rx
ZmodemUploadCmd=rz -E
FolderPath=
YmodemUploadCmd=rb -E
AutoZmodem=1
SendFolderPath=
DuplMethod=0
XYMODEM_1K=0
[CONNECTION]
PasteDelay=0
Port=22
Host=
Protocol=SERIAL
AutoReconnect=0
AutoReconnectLimit=0
Description=
AutoReconnectInterval=30
FtpPort=21
UseNaglesAlgorithm=0
IPV=0
[TERMINAL]
Rows=24
CtrlAltIsAltGr=1
InitOriginMode=0
InitReverseMode=0
DisableBlinkingText=0
CodePage=65001
InitAutoWrapMode=1
Cols=80
InitEchoMode=0
Type=xterm
DisableAlternateScreen=0
CJKAmbiAsWide=0
ScrollBottomOnKeyPress=0
PauseScrollBottom=0
DisableTitleChange=0
ForceEraseOnDEL=0
InitInsertMode=0
ShiftForcesLocalUseOfMouse=1
FontLineCharacter=1
ScrollbackSize=20000
InitCursorMode=0
BackspaceSends=2
FixedCols=0
UseAltAsMeta=0
UseInitSize=0
UseLAltAsMeta=0
UseRAltAsMeta=0
AltKeyMapPath=
DeleteSends=0
DisableTermPrinting=0
IgnoreResizeRequest=1
ScrollBottomOnTermOutput=0
FontPowerLine=1
UseAppMouse=1
ScrollErasedText=1
KeyMap=0
RecvLLAsCRLF=0
MoveToWorkFolder=1
EraseWithBackgroundColor=1
InitNewlineMode=0
InitKeypadMode=0
TerminalNameForEcho=Xshell
[TERMINAL:WINDOW]
ColorScheme=XTerm
FontQuality=0
LineSpace=0
CursorColor=65280
CursorBlinkInterval=600
TabColorType=0
FontStyle=0
CursorAppearance=0
TabColorOther=0
FontSize=14
CursorBlink=0
AsianFontSize=14
BoldMethod=2
BGImageFile=
CursorTextColor=0
BGImagePos=0
AsianFont=Monaco
FontFace=Monaco
CharSpace=0
AsianFontStyle=0
MarginBottom=5
MarginLeft=5
MarginTop=5
MarginRight=5
[CONNECTION:TELNET]
XdispLoc=1
NegoMode=0
CharMode=0
Display=$PCADDR:0.0
[HIGHLIGHT]
HighlightSet=OK and ERROR definition
[CONNECTION:AUTHENTICATION]
Pkcs11Pin=
Library=0
Passphrase=
Delegation=0
UseInitScript=0
Pkcs11Middleware=
TelnetLoginPrompt=ogin:
CapiPin=
Password=
RloginPasswordPrompt=assword:
UseExpectSend=0
TelnetPasswordPrompt=assword:
ExpectSend_Count=0
CapiKey=
Method=0
AuthMethodList=01,10,20,30,40,50
ScriptPath=
UserKey=
UserName=
[LOGGING]
FilePath=%n_%Y-%m-%d_%t.log
Overwrite=1
WriteFileTimestamp=0
Encoding=2
TimestampFormat=[%a] 
TermCode=0
AutoStart=0
Timestamp=0
Prompt=0
WriteTermTimestamp=0
[ADVANCED]
WaitPrompt=
PromptMax=0
SendLineDelayType=0
SendLineDelayInterval=0
SendCharDelayInterval=0
[CONNECTION:RLOGIN]
TermSpeed=38400
[CONNECTION:KEEPALIVE]
SendKeepAliveInterval=60
KeepAliveInterval=60
TCPKeepAlive=0
KeepAliveString=
SendKeepAlive=0
KeepAlive=1
