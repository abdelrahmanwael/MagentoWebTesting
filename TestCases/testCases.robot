*** Settings ***
Library           SeleniumLibrary
Resource    ../Resources/registrationPage.robot
Resource    ../Resources/homePage.robot
Resource    ../Resources/checkoutPage.robot
Resource    ../Resources/signInPage.robot

*** Variables ***
${Browser}      Chrome
${URL}          https://magento.softwaretestingboard.com
${firstName}    Abdelrahman
${lastName}     Wael
${email}        abdelrahman.wael@moj5.com
${password}     Dd#123456789
${searchItem}   bag
${address}      14 Test Street
${city}         test
${postal}       123456
${phone_No}     009623232321
${searchNikeItem}   Nike

*** Test Cases ***
Scenario 1 [P1]
    [Tags]    Smoke
    open browser    ${URL}      ${Browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${signIn_btn}
    Click Register Button
    Insert First Name   ${firstName}
    Insert Last Name    ${lastName}
    Insert Email Address    ${email}
    Insert Password    ${password}
    Insert Password Confrimation    ${password}
    Click Create Account Button
    Verify Successfull Registration
    Close My Browser

Scenario 2 [P2]
    [Tags]    Functional
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click SignIn Button
    Insert Email    ${email}
    Insert Pass    ${password}
    Click Sign_In
    Wait Until Page Contains Element    ${searchField}
    Search For Product    ${searchItem}
    Wait Until Page Contains Element    ${search_btn}
    Click Search Button
    Select First Product
    Add Product To Cart
    Wait Until Page Contains Element    ${addToCart_SuccessMsg}
    Verify Successfull Adding Product To Cart
    Click Shopping Cart Icon
    Procced To Checkout
    Sleep    10s
    Insert Street Address   ${address}
    Insert City     ${city}
    Insert State
    Insert Postal Code     ${postal}
    Insert Country
    Insert Phone Number     ${phone_No}
    Sleep    4s
    Select Shipping Method
    Sleep    4s
    Click Next Button
    Wait Until Page Contains Element    ${placeOrderBtn}
    Click Place Order Button
    Validate Successfull Purchasing
    Close My Browser



Scenario 3 [P3]
    [Tags]    Functional
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    ${searchField}
    Search For Nike Product    ${searchNikeItem}
    Wait Until Page Contains Element    ${search_btn}
    Click Search Button
    Validate Search Results
    Close My Browser
