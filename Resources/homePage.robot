*** Settings ***
Library           SeleniumLibrary
Variables         ../PageObjects/homePageLocators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${URL}      ${Browser}
    open browser    ${URL}      ${Browser}
    Maximize Browser Window

Click Register Button
    Click Element    ${createAcc_btn}

Click SignIn Button
    Click Element    ${signIn_btn}

Search For Product
    [Arguments]      ${searchItem}
    Input Text    ${searchField}    ${searchItem}

Select First Product
    Click Element    ${firstProduct}

Search For Nike Product
    [Arguments]      ${searchNikeItem}
    Input Text    ${searchField}    ${searchNikeItem}

Click Search Button
    Click Element    ${search_btn}

Add Product To Cart
    Click Element    ${addToCartBtn}

Verify Successfull Adding Product To Cart
     Element Should Contain    ${addToCart_SuccessMsg}    You added Push It Messenger Bag to your

Click Shopping Cart Icon
    Click Element    ${shoppingCartIcon}
    
Procced To Checkout
    Click Element    ${proceedToCheckOut}

Validate Search Results
     Element Should Be Visible    ${nike_search_result_MSG}


