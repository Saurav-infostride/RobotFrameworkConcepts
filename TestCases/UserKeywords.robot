*** Settings ***
Library   SeleniumLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${url}      https://www.google.com/
${browser}    ff
#${browser}    Chrome

*** Test Cases ***
TC1
    ${PageTitle}=   launchBrowser    ${url}    ${browser}
    Log To Console    ${PageTitle}

# Here I am calling the keyword from Resources folder to achieve reusability
#*** Keywords ***
#launchBrowser
    #[Arguments]    ${url}   ${browser}
    #Open Browser    ${url}   ${browser}
    #Maximize Browser Window
    #${title}=   Get Title
    #[Return]    ${title}
    #
