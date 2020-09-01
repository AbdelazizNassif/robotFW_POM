*** Settings ***
Resource    ../pages/homePage.robot
Resource    ../pages/feedbackPage.robot
Resource    ../testDataGenerator/genTestData.robot
Resource    testBase.robot

Suite Setup  Run Keywords   Navigate To Homepage
Suite Teardown  Exit These Tests

*** Variables ***
#Test Environment
${review}=



*** Test Cases ***
Test clicking feedback link
    click feedback link
    Location Should Contain  feedback

Test filling feedback form without reCaptcha
    Generate feedback Test Data
    click from page  ${extremeSatisfac}
    click from page  ${effort_2}
    click from page  ${recommend_8}
    Send text to element  ${reviewBox}  ${review}
    scroll to element  ${submitButton}
    click from page  ${submitButton}
    Page Should Contain Element  ${reCap_ErrMsg}

*** Keywords ***
Generate feedback Test Data
    ${review}=  genTestData.addReviewOrComment  Fname  Fname@email.com  Mac.  The Service is good
    Set Global Variable  ${review}

Navigate To Homepage
    Open Browser  ${aut_Url}  ${browser}
    Maximize Browser Window
    configure selenium general options

Exit These Tests
    Close Browser



