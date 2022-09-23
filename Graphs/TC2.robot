*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
*** Variables ***
${Locator}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(74,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-1"])
${Locator1}=    ((//*[local-name()='svg']//*[local-name()='g' and @transform="translate(74,71) scale(1 1)"])//*[name()='path' and @class="highcharts-point highcharts-color-0"])
*** Test Cases ***
open browser
     Set Selenium Speed    2
     Open Browser    https://www.highcharts.com/docs/chart-and-series-types/area-chart    ff     Maximize Browser Window
     Set Selenium Implicit Wait    10
     Click Element    //a[@id='CybotCookiebotDialogBodyButtonAccept']
     Reload Page
     Select Frame    //iframe[@title="Highcharts example"]
     ${count}    Get Element Count   ${Locator}
     Log To Console    ${count}
     Unselect Frame
     Reload Page
     Reload Page
     FOR  ${i}  IN RANGE  1  ${count}+1
        Select Frame    //iframe[@title="Highcharts example"]
#        Set Selenium Speed    1
        Mouse Over    ${Locator} [${i}]
#        ${Text}    Get Text    //*[local-name()='svg']//*[local-name()='g' and @data-z-index='8']//*[name()='text']
#        Log To Console    ${Text}
        Unselect Frame
     END
     Select Frame    //iframe[@title="Highcharts example"]
     ${count1}    Get Element Count   ${Locator1}
     Log To Console    ${count1}
     Unselect Frame
     Reload Page
     FOR  ${i}  IN RANGE  1   ${count1}+1
        Select Frame    //iframe[@title="Highcharts example"]
        Mouse Over    ${Locator1} [${i}]
        Set Selenium Implicit Wait    10
        # Mouse Out    ${Locator}
        Unselect Frame
     END
     Close All Browsers