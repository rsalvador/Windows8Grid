Windows8Grid provides an easy way of installing an IEDriverServer plus a Selenium
Grid on Windows 8 to allow running remotely WebDriver tests on Internet Explorer 10.

Setup
-----

1) Install "GitHub for Windows" from http://windows.github.com. (select "Skip Setup" if you don't have a GitHub account)

2) Launch the "Git Shell" desktop shortcut.

3) Execute the following commands in the "Windows PowerShell" that just opened: `git clone git://github.com/rsalvador/Windows8Grid.git`.

4) Create a desktop shortcut to `Windows8Grid\startSeleniumGrid.bat`.

Usage
-----

To start the grid launch the `startSeleniumGrid` shortcut, two windows named "Selenium Grid Hub" and "Selenium Grid Node" should open.

You can check that the grid is running by browsing to http://mywindows8:4444/grid.

To run WebDriver tests on the grid point them to http://mywindows8:4444/wd/hub, i.e.:

    URL remoteAddress = new URL("http://mywindows8:4444/wd/hub");
    WebDriver driver = new RemoteWebDriver (remoteAddress, DesiredCapabilities.internetExplorer());
    driver.get("http://www.google.com");
    assertEquals("Google", driver.getTitle());
    driver.quit();
    
To stop the grid close the two "Selenium Grid ..." windows.
