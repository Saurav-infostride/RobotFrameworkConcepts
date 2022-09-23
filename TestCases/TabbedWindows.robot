*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   ff
${url}    https://demo.automationtesting.in/Windows.html

*** Test Cases ***
TabbedWindowsTest
    Open Browser    ${url}    ${browser}
    Set Selenium Speed    2
    Click Element    xpath://a//button[contains(text(),'click')]
    Switch Window    title:Selenium
    Click Element    xpath://*[@id="main_navbar"]/ul/li[4]/a/span
    Close Browser