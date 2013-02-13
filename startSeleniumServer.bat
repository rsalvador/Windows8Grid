@ECHO OFF
START "Selenium Server" java\jre1.7.0_13\bin\java.exe -Dwebdriver.ie.driver=selenium/IEDriverServer_x64_2.29.1/IEDriverServer.exe -Dwebdriver.chrome.driver=selenium/chromedriver_win_26.0.1383.0/chromedriver.exe -jar selenium\selenium-server-standalone-2.29.0.jar
ECHO Started Selenium Server
