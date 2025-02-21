*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}      10

*** Test Cases ***
New Tab test
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Call Method    ${options}    add_argument    --disable-gpu
    Open Browser    about:blank    ${BROWSER}    options=${options}
    Wait Until Element Is Visible    xpath=//mat-icon[@class="mat-icon    timeout=5
    Click Element    xpath=//mat-icon[@class="mat-icon
    Wait Until Element Is Visible    xpath=//button[@class="mat-mdc-menu-item    timeout=5
    Click Element    xpath=//button[@class="mat-mdc-menu-item
    Wait Until Element Is Visible    xpath=//button[@class="btn-primary"]    timeout=5
    Click Element    xpath=//button[@class="btn-primary"]
    Close Browser
