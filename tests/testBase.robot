*** Settings ***
Library  SeleniumLibrary

Suite Setup  Run Keywords   Navigate To Homepage
Suite Teardown  Exit Selenium

*** Keywords ***
Navigate To Homepage
    Open Browser  https://www.otlob.com/egypt  chrome