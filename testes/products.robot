*** Settings ***
Resource   resource1.robot

*** Test Cases ***
List Products After Login
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Page Should Contain    Sauce Labs Backpack
    Page Should Contain    Sauce Labs Bike Light

View Product Details
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Click Element    class=inventory_item_name

Sort Products By Name A-Z
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Select From List By Value    class=product_sort_container    az

Sort Products By Name Z-A
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Select From List By Value    class=product_sort_container    za
    
Sort Products By Price (low to high)
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Select From List By Value    class=product_sort_container    lohi
    
Sort Products By Price (high to low)
    Open Browser To Login Page
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Select From List By Value    class=product_sort_container    hilo