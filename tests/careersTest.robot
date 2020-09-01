*** Settings ***
Resource    ../pages/homePage.robot
Resource    ../pages/careerPage.robot
Resource    ../testDataGenerator/genTestData.robot
Resource    testBase.robot

Suite Setup  Run Keywords   Navigate To Homepage
Suite Teardown  Exit These Tests

*** Variables ***
#Test Data Variables
${firstNameData}=  Set Variable  Empty
${lastNameData}=  Set Variable  Empty
${jobTitleData}=  Set Variable  Empty
${mobileNumberData}=  Set Variable  Empty
${emailData}=  Set Variable  Empty

*** Test Cases ***
Test clicking career link
    click career link
    Location Should Contain  career

fill career form without uploading CV
    Generate Test Data
    send text to element  ${firstNameBox}  ${firstNameData}
    send text to element  ${lastNameBox}  ${lastNameData}
    send text to element  ${mobileNumberBox}  ${jobTitleData}
    send text to element  ${jobTitleBox}  ${mobileNumberData}
    send text to element  ${emailBox}  ${emailData}
    click from page  ${submitButn}
    Page Should Contain Element  ${cv_ErrMsg}

fill career form and uploading CV
    Generate Test Data
    send text to element  ${firstNameBox}  ${firstNameData}
    send text to element  ${lastNameBox}  ${lastNameData}
    send text to element  ${mobileNumberBox}  ${jobTitleData}
    send text to element  ${jobTitleBox}  ${mobileNumberData}
    send text to element  ${emailBox}  ${emailData}
    upload cv to career form
    click from page  ${submitButn}
    Location Should Contain  ${firstNameData}

*** Keywords ***
Generate Test Data
    ${firstNameData}=  genTestData.generateRandomPersonName  7
    Set Global Variable  ${firstNameData}
    ${lastNameData}=  genTestData.generateRandomPersonName  5
    Set Global Variable  ${lastNameData}
    ${jobTitleData}=  genTestData.generateRandomJobTitle
    Set Global Variable  ${jobTitleData}
    ${mobileNumberData}=  genTestData.generateRandomPhoneNumber
    Set Global Variable  ${mobileNumberData}
    ${emailData}=   genTestData.generateRandomEmail
    Set Global Variable  ${emailData}
    #Set Global Variable  ${firstNameData}   ${lastNameData}  ${jobTitleData}   ${mobileNumberData}  ${emailData}


Navigate To Homepage
    Open Browser  ${aut_Url}  ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait 	${imp_wait}
    Set Selenium Speed  ${sele_speed}
    #Generate Test Data

Exit These Tests
    Close Browser



