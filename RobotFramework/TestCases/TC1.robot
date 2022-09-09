*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}    ff
${url}    https://demo.nopcommerce.com/

*** Test Cases ***

LoginTest
    open browser    ${url}  ${browser}
    Maximize Browser Window
    #open browser    https://demo.nopcommerce.com/   ff
    loginToApplication
    #click link    xpath://a[@class='ico-login']
    #input text    id:Email    pavanoltraining@gmail.com
    #input text    id:Password    Test@123
    #click element    xpath://button[@class='button-1 login-button']
    close browser

*** Keywords ***
loginToApplication
    click link    xpath://a[@class='ico-login']
    input text    id:Email    pavanoltraining@gmail.com
    input text    id:Password    Test@123
    click element    xpath://button[@class='button-1 login-button']

