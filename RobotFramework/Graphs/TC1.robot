*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.highcharts.com/docs/chart-and-series-types/line-chart
${browser}    ff
${Locator}    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(81,71) scale(1 1)"])[2]//*[name()="path"])

*** Test Cases ***
Automating Graphs
    Set Selenium Speed    2
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    //a[@id='CybotCookiebotDialogBodyButtonAccept']
    Select Frame    //iframe[@title='Highcharts example']
    ${RetrievingText}    Get Text    //figure[@class='highcharts-figure']//*[name()="svg"]
    Log To Console    ${RetrievingText}
    ${RetrievingCount}    Get Element Count    ${Locator}
    FOR  ${i}  IN RANGE  1  ${RetrievingCount}+1
    Log To Console    ${RetrievingCount}
    Mouse Over    ${Locator} [${i}]
    Mouse Out    ${Locator}
    END
    Mouse Over    //figure[@class='highcharts-figure']//*[name()="svg"]
    Scroll Element Into View    //figure[@class='highcharts-figure']//*[name()="svg"]
    Close Browser

*** Keywords ***