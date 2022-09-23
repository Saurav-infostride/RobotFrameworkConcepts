*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}    ff

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}    ${browser}
    Set Selenium Speed    2

    # First Frame
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame

    # Second Frame
    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame

    # Third Frame
    Select Frame    classFrame
    Click Link    Help
    Unselect Frame