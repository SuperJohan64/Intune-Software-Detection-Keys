@echo off

SET regKeyName=CompanyName
SET regValueName=SoftwareName
SET regKeyPath=HKLM\SOFTWARE\%regKeyName%
SET timeStamp=%date:~10,4%%date:~4,2%%date:~7,2%%time:~0,2%%time:~2,3%
SET timeStamp=%timeStamp::=%

reg add %regKeyPath% /v %regValueName% /t REG_SZ /d %timeStamp% /f

PAUSE
EXIT
