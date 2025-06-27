*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${NAME}          Wander
${LASTNAME}      Matheus
${CEP}           72035511
${URL}           https://www.saucedemo.com/v1/
${BROWSER}       chrome
${VALID_USER}    standard_user
${VALID_PASS}    secret_sauce
${INVALID_USER}  fake_user
${INVALID_PASS}  wrong_pass

*** Keywords ***

Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text    id=user-name    ${username}
    Input Text    id=password     ${password}
    Click Button  id=login-button

Logout
    Click Element    class=bm-burger-button
    Wait Until Element Is Visible    id=logout_sidebar_link    timeout=5s
    Click Element    id=logout_sidebar_link

Add Product To Cart
   Click Element    (//button[contains(text(), 'ADD TO CART')])[1]
    Sleep    0.5s

Go To Cart
    Click Link    class=shopping_cart_link
    
Go To Checkout
    Click Element    css:.btn_action
    Sleep    3s

Fill in Checkout Data
    Input Text    id:first-name    ${name}
    Input Text    id:last-name     ${lastname}
    Input Text    id:postal-code   ${cep}
    Sleep    2s

Click on the checkout button
    Click Element    css:.btn_primary.cart_button

Check Purchase Summary
    Wait Until Page Contains Element    class=summary_info    timeout=5s
    Element Should Contain              class=summary_info    Payment Information:

Click on the close purchase button
    Click Element    css:.btn_action.cart_button

Check purchase success
    Wait Until Page Contains Element    class=complete-header    timeout=5s
    Element Should Contain              class=complete-header    THANK YOU FOR YOUR ORDER
    Sleep    2s



