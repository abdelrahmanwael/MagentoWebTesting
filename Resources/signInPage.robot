*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/signInPageLocators.py

*** Keywords ***
Insert Email
    [Arguments]      ${email}
    Input Text    ${emailTextField}    ${email}

Insert Pass
    [Arguments]      ${password}
    Input Text    ${passwordTextField}    ${password}

Click Sign_In
    Click Button    ${signInButton}
