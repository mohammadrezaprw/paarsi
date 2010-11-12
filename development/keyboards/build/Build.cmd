@ECHO OFF

FOR %%F IN (US UK CA) DO (
	IF EXIST English-%%F-Paarsi.exe DEL English-%%F-Paarsi.exe
	IF EXIST English-%%F-Paarsi.7z   DEL English-%%F-Paarsi.7z

	CD "%~dp0English-%%F-Paarsi\"
	rem "c:\Program Files\7-Zip\7z.exe"  a -sfx7zss.sfx -y ..\English-%%F-Paarsi.exe *
	
	"c:\Program Files\7-Zip\7z.exe" a ..\English-%%F-Paarsi.7z *


	CD "%~dp0"
	COPY /b 7zSFXfiles\7zS.sfx + English-%%F-Paarsi.sfxConf + English-%%F-Paarsi.7z English-%%F-Paarsi.exe

	IF EXIST English-%%F-Paarsi.7z   DEL English-%%F-Paarsi.7z
)
PAUSE
