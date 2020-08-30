*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
click from page
    [Arguments]  ${element}
    Click Element  ${element}

Send text to element
    [Arguments]  ${element}  ${text}
    Input Text  ${element}  ${text}

scroll to element
    [Arguments]  ${element}
    Scroll Element Into View   ${element}



