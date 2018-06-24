*** Settings ***
Library           Selenium2Library


*** Variables ***

*** Keywords ***
click_create_icon
    wait until keyword succeeds  10     1       Click Button    xpath=//button[@type='button']

click_skip_on_banner
    wait until keyword succeeds  10     1       Click Element   xpath=//a[text()='Skip']

click_group_chat
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-dropdown ant-dropdown-placement-bottomLeft']/ul/li[2]

click_direct_message
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-dropdown ant-dropdown-placement-bottomLeft']/ul/li[1]

set_name
    [Arguments]    ${value}
    Input text    xpath=//div[@class='ant-modal-body']//input[@type='search']    ${value}

click_searched_name
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-modal-content']/div[2]/div/div/div[2]/div/div

click_setting
    wait until keyword succeeds  10     1       Click Element   xpath=//button[@class='ant-dropdown-trigger sc-fVHxE kXBRzd']

click_logout
    Wait Until Element Is Visible   xpath=//li[text()='Log out']
    wait until keyword succeeds  10     1       Click Element   xpath=//li[text()='Log out']

click member name
    [Arguments]    ${value}
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-modal-body']//h4[text()='${value}']

click next
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-modal-footer sc-TuwoP dHtEUr']/div/button[2]

set_groupchat_name
    [Arguments]    ${value}
    Input text    xpath=//div[@class='ant-form-item-control-wrapper']/div/input   ${value}

check_name_in_chat_list
    [Arguments]    ${value}
    Wait Until Element Is Visible   xpath=//div[@class='sc-hzDkRC fzkjjA']/div/div[@title='${value}']

click_chat_name_in_chat_list
    [Arguments]    ${value}
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='sc-hzDkRC fzkjjA']/div/div[@title='${value}']

invisible_group_chat_name
    [Arguments]    ${value}
    Wait Until Element Is Not Visible   xpath=//div[@class='sc-hzDkRC fzkjjA']/div/div[@title='${value}']

