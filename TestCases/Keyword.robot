*** Settings ***
Library     SeleniumLibrary
Library    ../Resources/Custom_Lib.py
Library    ../Resources/CreatingKeywords.py

*** Variables ***
${browser}    ff
${url}  https://www.google.com

*** Test Cases ***
Testing Keyword
    Open Browser    ${url}    ${browser}
    ${search}=    Get Current Time As String    self
    Input Text    name=q    ${search}
    Log To Console    ${search}
    Close Browser

Signing In To Sauce Demo
    Open Browser    https://www.saucedemo.com/    ff

