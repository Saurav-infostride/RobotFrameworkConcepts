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

    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    
    Switch Browser    1
    ${title}=   Get Title
    Log To Console    ${title}

    Switch Browser    2
    ${title2}=   Get Title
    Log To Console    ${title2}
    Close Browser
