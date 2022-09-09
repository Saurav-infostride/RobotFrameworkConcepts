*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    Open Browser    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${cols}

    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}

    Table Column Should Contain    xpath://table[@name='BookTable']    2    Author
    Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh
    Table Header Should Contain    xpath://table[@name='BookTable']        BookName

    Close Browser