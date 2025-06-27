*** Settings ***
Resource    resource1.robot

*** Test Cases ***
Checkout Purchase Successfully
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Add Product To Cart
    Go To Cart
    Go To Checkout
    Fill In Checkout Data
    Click on the checkout button
    Check Purchase Summary
    Click on the close purchase button
    Check purchase success
