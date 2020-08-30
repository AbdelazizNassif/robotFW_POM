*** Settings ***
Resource    ../pages/homePage.robot
Resource    ../pages/careerPage.robot

Suite Setup  Run Keywords   Navigate To Homepage
Suite Teardown  Exit These Tests

*** Variables ***
#Test Environment
${aut_Url}=  https://www.otlob.com/egypt
${browser}=  chrome
${imp_wait}=  10

#Test Data
${firstNameData}=  Ahmed
${lastNameData}=  Ali
${jobTitleData}=  Doctor
${mobileNumberData}=  010000
${emailData}=  AhmedAli@gmail.com


*** Test Cases ***
Test clicking career link
    click career link
    Location Should Contain  career

fill career form without uploading CV
    send text to element  ${firstNameBox}  ${firstNameData}
    send text to element  ${lastNameBox}  ${lastNameData}
    send text to element  ${mobileNumberBox}  ${jobTitleData}
    send text to element  ${jobTitleBox}  ${mobileNumberData}
    send text to element  ${emailBox}  ${emailData}
    click from page  ${submitButn}
    Page Should Contain Element  ${cv_ErrMsg}

fill career form and uploading CV
    send text to element  ${firstNameBox}  ${firstNameData}
    send text to element  ${lastNameBox}  ${lastNameData}
    send text to element  ${mobileNumberBox}  ${jobTitleData}
    send text to element  ${jobTitleBox}  ${mobileNumberData}
    send text to element  ${emailBox}  ${emailData}
    upload cv to career form
    click from page  ${submitButn}
    Location Should Contain  ${firstNameData}



*** Keywords ***
Navigate To Homepage
    Open Browser  ${aut_Url}  ${browser}
    Maximize Browser Window
    Set Selenium Implicit Wait 	${imp_wait}

Exit These Tests
    Close Browser