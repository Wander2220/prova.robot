*** Settings ***
Resource  resource1.robot

*** Test Cases ***
Login With Valid Credentials
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Page Should Contain    Products

Login With Invalid Credentials
    Open Browser To Login Page
    Login With Credentials    ${INVALID_USER}    ${INVALID_PASS}
    Wait Until Page Contains    Epic sadface: Username and password do not match any user in this service

Logout After Successful Login
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Sleep    1s
    Logout
    Page Should Contain Element    id=login-button