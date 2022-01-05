set workFolder=c:\temp
set lFile=testJar1.jar
set rFile=testJar2.jar
set srcFolder=D:\workspace\BC4Compare

cd /d %workFolder%
md %workFolder%\%lFile%
md %workFolder%\%rFile%
cd /d %workFolder%\%lFile% 
jar xf %srcFolder%\%lFile%
cd /d %workFolder%\rFile 
jar xf %srcFolder%\%rFile%
pause
"C:\Program Files\Beyond Compare 4\BCompare.exe" /silent @diff_to_html.txt %workFolder%\%lFile%\1.txt %workFolder%\%rFile%\1.txt D:\workspace\BC4Compare\my_report.html
pause