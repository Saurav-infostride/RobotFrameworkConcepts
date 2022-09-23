*** Settings ***
Library     SeleniumLibrary
Library    XML


*** Variables ***
${browser}  ff
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    click Link    xpath://a[@class='ico-login']
    # Capturing or storing the element into some variable
    ${"email_txt"}  Set Variable    id:Email

    Element Should Be Visible    ${"email_txt"}

    Element Should Be Enabled    ${"email_txt"}
    input text    ${"email_txt"}    pavanoltraining@gmail.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    3
    #input text    id:Password    Test@123
    #click element    xpath://button[@class='button-1 login-button']
    Close Browser

*** Keywords ***