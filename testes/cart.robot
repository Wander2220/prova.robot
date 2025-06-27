*** Settings ***
Resource   resource1.robot

*** Test Cases ***
Add And Remove Product From Cart
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Add Product To Cart
    Go To Cart
    Sleep    2s
    Page Should Contain    Sauce Labs Backpack
    Click Element    (//button[normalize-space(text())='REMOVE'])[1]
    Sleep    0.5s
    Page Should Not Contain    Sauce Labs Backpack