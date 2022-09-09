*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginResources.robot
Library    DataDriver  ../TestData/Login.csv

Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login

*** Test Cases ***
LoginTestWithExcelSheet using  ${username} and ${password}


*** Keywords ***
Invalid Login
    Set Selenium Speed    2
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input pwd  ${password}
    Click login button
    Error message should be visible