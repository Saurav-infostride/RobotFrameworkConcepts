*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${url}   ${browser}
    Open Browser    ${url}   ${browser}
    Maximize Browser Window
    ${title}=   Get Title
    [Return]    ${title}
    Close Browser