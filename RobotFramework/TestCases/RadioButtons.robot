*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   ff
${url}    https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
TestingRadioButtons and CheckBoxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2seconds

    # Selecting radio button
    Select Radio Button    sex    Male
    Select Radio Button    exp    1
    Select Radio Button    exp    2
    Select Radio Button    exp    3
    Select Radio Button    exp    4

    # Selecting Checkboxes
    Select Checkbox    Automation Tester
    Select Checkbox    Manual Tester

    # Unselect Checkboxes
    Unselect Checkbox    Manual Tester
    Close Browser
    
