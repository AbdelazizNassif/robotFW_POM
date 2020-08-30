*** Settings ***
Resource    ../pages/homePage.robot
Resource    ../pages/feedbackPage.robot

Suite Setup  Run Keywords   Navigate To Homepage
Suite Teardown  Exit These Tests

*** Variables ***
#Test Environment
${aut_Url}=  https://www.otlob.com/egypt
${browser}=  chrome
${imp_wait}=  10

#Test Data
${extremeSatisfac}=  //div[@class='exp extreme']//button[contains(text(), 'Extremely Satisfied')]
${effort_2}=  //html//body//section//div[2]//div//div[1]//section[2]//div[2]//div[2]//button
${recommend_8}=  //html//body//section//div[2]//div//div[1]//section[3]//div[2]//div[9]//button
${reviewBox}=  //textarea[@id='feedback-text']
${submitButton}=  //button[@id='submit-feedback']
${reCap_ErrMsg}=  //p[@id='feedback-recaptcha-error']


*** Test Cases ***
Test clicking feedback link
    click feedback link
    Location Should Contain  feedback

Test filling feedback form without reCaptcha
    click from page  ${extremeSatisfac}
    click from page  ${effort_2}
    click from page  ${recommend_8}
    click from page  ${reviewBox}
    click from page  ${submitButton}
    Page Should Contain Element  ${reCap_ErrMsg}

*** Keywords ***
Navigate To Homepage
    Open Browser  ${aut_Url}  ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait 	${imp_wait}

Exit These Tests
    Close Browser