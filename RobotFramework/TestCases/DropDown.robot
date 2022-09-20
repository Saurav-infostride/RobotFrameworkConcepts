*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   ff
${url}    https://www.techlistic.com/p/selenium-practice-form.html

*** Test Cases ***
Handling DropDowns and Lists
    # To get the speed of selenium script  - Here it will give speed of 0 seconds
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${time}    Get Selenium Timeout
    Log To Console    ${time}

    # Selenium Timeout
    Wait Until Page Contains    AUTOMATION PRACTICE ME   # Default time is 5 secs

    Set Selenium Speed    2

    # Implicit wait
    Set Selenium Implicit Wait    10 seconds
    Select From List By Label    Customer roles    Europe
    Select From List By Index    continents    6
    # List box
    Select From List By Label    selenium_commands    Browser Commands
    Select From List By Label    selenium_commands     WebElement Commands

    Unselect From List By Label    selenium_commands    Browser Commands
    # To get the speed of selenium script - Here it will give 2 seconds
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}

    Close Browser