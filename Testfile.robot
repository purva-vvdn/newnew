*** Settings ***
Documentation     A test suite with a single test for New Tab
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
New Tab test
    Open Browser    chrome://newtab/    ${BROWSER}
    Click Element    //div[@class="o3j99 ikrT4e om7nvf"]
    Input Text    //textarea[@name="q"]    test

    Close Browser