*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://admin-demo.nopcommerce.com
${browser}    ff

*** Keywords ***
Open My Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${url}

Input username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}

Input pwd
    [Arguments]    ${password}
    Input Text    id:Password    ${password}
    
Click login button
    Click Element    xpath://button[contains(text(),'Log in')]
    
Click logout link
    Click Element    xpath://a[contains(text(),'Logout')]

Error message should be visible
    Page Should Contain    Login was unsuccessful

Dashboard should be visible
    Page Should Contain    Dashboard
