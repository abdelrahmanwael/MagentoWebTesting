*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/checkoutPageLocators.py

*** Keywords ***
Insert Street Address
    [Arguments]      ${address}
    Input Text    ${addressTxtField}    ${address}

Insert City
    [Arguments]      ${city}
    Input Text    ${cityTxtField}    ${city}

Insert State
    Select From List By Index    ${stateDropDownMenu}   4

Insert Postal Code
    [Arguments]      ${postal}
    Input Text    ${postalCode}    ${postal}

Insert Country
    Select From List By Index    ${countryDropDownMenu}   3

Insert Phone Number
    [Arguments]      ${phone_No}
    Input Text    ${phoneNumber}    ${phone_No}

Select Shipping Method
     Click Element    ${shippingMethod}

Click Next Button
    Click Button    ${next_Btn}

Click Place Order Button
    Click Button    ${placeOrderBtn}

Validate Successfull Purchasing
     Element Text Should Be    ${orderConfirmation}    Thank you for your purchase!


