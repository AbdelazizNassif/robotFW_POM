*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String

*** Variables ***
#Global var for Asisstance in test data generation
@{JOB_TITLES}    Elect Engineer  Software Tester  Quality Control Engineer  Teacher  Doctor  Vet  Freelancer  Civil Eng  HR Manager

*** Keywords ***
generateRandomPhoneNumber
    ${a}=    Set Variable   010
    ${b}=    Generate Random String 	8 	[NUMBERS]
    ${phone_num}=    Set Variable   ${a}${b}
    Log To Console  ${phone_num}
    [return]    ${phone_num}

generateRandomPersonName
    [Arguments]  ${numberOfLetters}
    ${a}=    Generate Random String     1   [UPPER]
    ${b}=    Generate Random String 	${numberOfLetters} 	[LOWER]
    ${name}=    Set Variable   ${a}${b}
    [return]    ${name}

#'''Method to generate random password containing all upper and lower case letters and also numbers with limit of 8 characters'''
generateRandomPassword
    ${a}=    Generate Random String     2   [UPPER]
    ${b}=    Generate Random String 	3 	[LOWER]
    ${c}=    Generate Random String 	3 	[NUMBERS]
    ${password}=    Set Variable   ${a}${b}${c}
    [return]    ${password}

generateRandomEmail
    ${a}=    Generate Random String     5   [LOWER]
    ${b}=    Set Variable  .
    ${c}=    Generate Random String 	5 	[LOWER]
    ${d}=    Generate Random String 	2 	[NUMBERS]
    ${e}=    Set Variable  @testDomain.ext
    ${email}=    Set Variable   ${a}${b}${c}${d}${e}
    [return]    ${email}

generateRandomJobTitle
    ${list_size}=  Get Length  ${JOB_TITLES}
    ${random_number}=    Evaluate    random.randint(0, ${list_size}-1)   random
    ${random_title} = 	Get From List 	${JOB_TITLES} 	${random_number}
    [return]    ${random_title}

addReviewOrComment
    [Arguments]  ${name}  ${email}  ${service_name}  ${reviewContnet}
    ${review}=  Set Variable   Hello my name  ${name} my email is ${email} and I want to review ${service_name} review content: ${reviewContnet}
    [return]    ${review}







