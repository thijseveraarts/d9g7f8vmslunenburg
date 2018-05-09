@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Xampp\ingres\scripts\ctl.bat (start /MIN /B C:\Xampp\ingres\scripts\ctl.bat START)
if exist C:\Xampp\mysql\scripts\ctl.bat (start /MIN /B C:\Xampp\mysql\scripts\ctl.bat START)
if exist C:\Xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\Xampp\postgresql\scripts\ctl.bat START)
if exist C:\Xampp\apache\scripts\ctl.bat (start /MIN /B C:\Xampp\apache\scripts\ctl.bat START)
if exist C:\Xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\Xampp\openoffice\scripts\ctl.bat START)
if exist C:\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Xampp\apache-tomcat\scripts\ctl.bat START)
if exist C:\Xampp\resin\scripts\ctl.bat (start /MIN /B C:\Xampp\resin\scripts\ctl.bat START)
if exist C:\Xampp\jboss\scripts\ctl.bat (start /MIN /B C:\Xampp\jboss\scripts\ctl.bat START)
if exist C:\Xampp\jetty\scripts\ctl.bat (start /MIN /B C:\Xampp\jetty\scripts\ctl.bat START)
if exist C:\Xampp\subversion\scripts\ctl.bat (start /MIN /B C:\Xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Xampp\lucene\scripts\ctl.bat (start /MIN /B C:\Xampp\lucene\scripts\ctl.bat START)
if exist C:\Xampp\third_application\scripts\ctl.bat (start /MIN /B C:\Xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Xampp\third_application\scripts\ctl.bat (start /MIN /B C:\Xampp\third_application\scripts\ctl.bat STOP)
if exist C:\Xampp\lucene\scripts\ctl.bat (start /MIN /B C:\Xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Xampp\subversion\scripts\ctl.bat (start /MIN /B C:\Xampp\subversion\scripts\ctl.bat STOP)
if exist C:\Xampp\jetty\scripts\ctl.bat (start /MIN /B C:\Xampp\jetty\scripts\ctl.bat STOP)
if exist C:\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Xampp\jboss\scripts\ctl.bat (start /MIN /B C:\Xampp\jboss\scripts\ctl.bat STOP)
if exist C:\Xampp\resin\scripts\ctl.bat (start /MIN /B C:\Xampp\resin\scripts\ctl.bat STOP)
if exist C:\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\Xampp\openoffice\scripts\ctl.bat STOP)
if exist C:\Xampp\apache\scripts\ctl.bat (start /MIN /B C:\Xampp\apache\scripts\ctl.bat STOP)
if exist C:\Xampp\ingres\scripts\ctl.bat (start /MIN /B C:\Xampp\ingres\scripts\ctl.bat STOP)
if exist C:\Xampp\mysql\scripts\ctl.bat (start /MIN /B C:\Xampp\mysql\scripts\ctl.bat STOP)
if exist C:\Xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\Xampp\postgresql\scripts\ctl.bat STOP)

:end

