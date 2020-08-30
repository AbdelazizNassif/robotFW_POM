*** Settings ***
Resource    ../pages/homePage.robot

*** Variables ***
#Test Variables
${firstNameBox}=  //input[@id='firstname']
${lastNameBox}=   //input[@id='lastname']
${jobTitleBox}=  //input[@id='jobtitle']
${mobileNumberBox}=  //input[@id='mobile']
${emailBox}=  //input[@id='email']
${submitButn}=  //button[@class='btn p-x-lg green text-uppercase' and contains(text(),'Submit' )]
${cv_uploader}=  //input[@id='cvfile']
${cv_path}=  C:\\Users\\AbdElAziz\\PycharmProjects\\POM_robotFW\\uploads\\emptyCV.txt
${cv_ErrMsg}=  //label[@id='cvfile-error' and contains(text(), 'This field is required.')]


*** Keywords ***
upload cv to career form
    Choose File 	${cv_uploader} 	${cv_path}


