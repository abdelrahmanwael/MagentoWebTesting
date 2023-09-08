*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/registrationPageLocators.py

*** Keywords ***
Insert First Name
    [Arguments]      ${firstName}
    Input Text    ${firstName_txtField}    ${firstName}

Insert Last Name
    [Arguments]      ${lastName}
    Input Text    ${lastName_txtField}    ${lastName}

Insert Email Address
    [Arguments]      ${email}
    Input Text    ${email_txtField}    ${email}

Insert Password
    [Arguments]      ${password}
    Input Text    ${password_txtField}    ${password}

Insert Password Confrimation
    [Arguments]      ${password}
    Input Text    ${confirmPassword_txtField}    ${password}


Click Create Account Button
    Click Button    ${createAccount_btn}

Verify Successfull Registration
     Element Text Should Be    ${successLogin}    My Account

Close My Browser
    Close All Browsers


