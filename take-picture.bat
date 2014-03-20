@ECHO OFF

:while_i
	if 1 EQU 1 (
		rem seta variaveis com a saída de um comando :@ lixo.
		for /f "delims=" %%i in ('date /T') do set date=%%i
		for /f "delims=" %%i in ('time /T') do set time=%%i
		
		set timestampPlusRandom=%date:/=-%_%time::=-%_%RANDOM%
		
		rem echo "Date - Time %date%-%time%"
		
		nircmd.exe savescreenshotfull pictures\%timestampPlusRandom: =%.png
		echo savescreenshotfull pictures\picture%timestampPlusRandom: =%.png
		rem "sleep"
		ping -n %1 127.0.0.1 > NUL
		goto :while_i
	)