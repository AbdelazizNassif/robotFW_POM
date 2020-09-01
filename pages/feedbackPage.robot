*** Settings ***
Resource    ../pages/homePage.robot

*** Variables ***
#Page Contents
${extremeSatisfac}=  //div[@class='exp extreme']//button[contains(text(), 'Extremely Satisfied')]
${effort_2}=  //html//body//section//div[2]//div//div[1]//section[2]//div[2]//div[2]//button
${recommend_8}=  //html//body//section//div[2]//div//div[1]//section[3]//div[2]//div[9]//button
${reviewBox}=  //textarea[@id='feedback-text']
${submitButton}=  //button[@id='submit-feedback']
${reCap_ErrMsg}=  //p[@id='feedback-recaptcha-error']

*** Keywords ***
upload cv to career form
    Choose File 	${cv_uploader} 	${cv_path}


