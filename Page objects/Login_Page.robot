*** Settings ***
Library           Selenium2Library

*** Variables ***

*** Keywords ***
set_Username
    [Arguments]    ${value}
    Input text    id=username    ${value}

set_Password
    [Arguments]    ${value}
    Input text    id=password    ${value}

click_Login
    Click Button    xpath=//button[@type='submit']