forFiles /P C:\Teste\Folder /S /M * /D -30 /C "cmd /c echo @file has more than 30 days and will be deleted!" & forFiles /P C:\Teste\Folder /S /M * /D -30 /C "cmd /c del @file"