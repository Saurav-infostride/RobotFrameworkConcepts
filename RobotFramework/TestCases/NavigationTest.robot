*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   ff
${url1}    https://www.bing.com/
${url2}    https://www.google.com/


*** Test Cases ***
MultipleBrowsers
    Set Selenium Speed    2

    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    ${loc}=    Get Location
    Log To Console    ${loc}

    Go To    ${url2}
    ${loc}=    Get Location
    Log To Console    {$loc}

    Go Back
    Close Browser
