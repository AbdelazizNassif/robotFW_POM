*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#Test Environment
${aut_Url}=  https://www.otlob.com/egypt
${browser}=  chrome
${imp_wait}=  10
${sele_speed}=  0.15

*** Keywords ***
configure selenium general options
    Set Selenium Implicit Wait 	${imp_wait}
    Set Selenium Speed  ${sele_speed}