*** Settings ***
Resource    seleniumBF.robot

*** Variables ***
${careerFromBar}=  //section[@class='footerlinks p-y-lg hidden-xs']//a[@href='/egypt/career' and contains(text(), 'Careers')]
${feedbackFromBar}=  //section[@class='footerlinks p-y-lg hidden-xs']//a[@href='/egypt/feedback' and contains(text(), 'Feedback')]

*** Keywords ***
click career link
    Scroll Element Into View  ${careerFromBar}
    click from page  ${careerFromBar}

click feedback link
    Scroll Element Into View  ${feedbackFromBar}
    click from page  ${feedbackFromBar}

