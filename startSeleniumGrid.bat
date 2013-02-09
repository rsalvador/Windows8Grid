@ECHO OFF
START "Selenium Grid Hub" java\jre1.7.0_13\bin\java.exe -jar selenium\selenium-server-standalone-2.29.0.jar -role hub
ECHO Started Selenium Grid Hub
START "Selenium Grid Node" java\jre1.7.0_13\bin\java.exe -Dwebdriver.ie.driver=selenium/IEDriverServer_x64_2.29.1/IEDriverServer.exe -Dwebdriver.chrome.driver=selenium/chromedriver_win_26.0.1383.0/chromedriver.exe -jar selenium\selenium-server-standalone-2.29.0.jar -role node -hub http://localhost:4444/grid/register
ECHO Started Selenium Grid Node