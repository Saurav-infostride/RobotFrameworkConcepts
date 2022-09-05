*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.automationtesting.in/Alerts.html
${browser}    ff

*** Test Cases ***
Handling Alerts
    Open Browser    ${url}    ${browser}
    Set Selenium Speed    2
    Click Button    xpath://button[@class='btn btn-danger']     # opens alert

    # To accept the alert
    #Handle Alert    accept

    # To dismiss alert box
    #Handle Alert    dismiss

    # To stay on the alert window for some time
    #Handle Alert    Leave

    #To assert something present in alert box
    Alert Should Be Present    I am an alert box!
    
