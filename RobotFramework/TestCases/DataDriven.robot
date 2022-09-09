*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginResources.robot
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid login

*** Test Cases ***        username                password
Right user empty pass    admin@yourstore.com    ${EMPTY}
Right user wrong pass    admin@yourstore.com    xyz
Wrong user right pass    adm@yourstore.com    admin
Wrong user empty pass    adm@yourstore.com    ${EMPTY}

*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Error message should be visible



