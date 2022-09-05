*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}   ff
${url1}    https://www.techlistic.com/p/selenium-practice-form.html
${url2}    https://www.saucedemo.com/

*** Test Cases ***
Checking Closing Of Single And Multiple Browsers
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window

    Open Browser    ${url2}    ${browser}
    Maximize Browser Window

    # Close the latest browser
    #Close Browser

    Close All Browsers