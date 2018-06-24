*** Settings ***
Library           Selenium2Library


*** Variables ***

*** Keywords ***

set chat message
    [Arguments]    ${value}
    Input text    id=message    ${value}

click_send
    Click Button    xpath=//button[@type='submit']

 check_last_message
    [Arguments]    ${value}
    Wait Until Page Contains Element    xpath=//div[@style='padding-bottom: 30px;']/div/div/div/div/p/span[1]
    Sleep   1s
    ${size}=    Get matching xpath count    //div[@style='padding-bottom: 30px;']/div/div/div/div/p/span[1]
    ${size}=    evaluate    ${size} + 1
    ${get_last_text}=   Get text    //div[@style='padding-bottom: 30px;']/div[${size}]/div/div/div/p/span[1]
    Should Contain      ${get_last_text}    ${value}


 check_second_last_message
    [Arguments]    ${value}
    Wait Until Page Contains Element    xpath=//div[@style='padding-bottom: 30px;']/div/div/div/div/p/span[1]
    Sleep   1s
    ${size}=    Get matching xpath count    //div[@style='padding-bottom: 30px;']/div/div/div/div/p/span[1]
    ${get_last_two_text}=   Get text    //div[@style='padding-bottom: 30px;']/div[${size}]/div/div/div/p/span[1]
    Should Contain      ${get_last_two_text}     ${value}

click_topics
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-tabs-nav ant-tabs-nav-animated']/div[3]

click_members
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-tabs-nav ant-tabs-nav-animated']/div[4]

set_topic_name
    [Arguments]    ${value}
    Input text    xpath=//div[@class='sc-cBrjTV iGGLDy sc-htoDjs btMmqC']/div/form/div/div/span/input    ${value}

click submit
    wait until keyword succeeds  10     1       Click Element   xpath=//button[@type='submit']

check_topic_name
    [Arguments]    ${value}
    Wait Until Element Is Visible   xpath=//div[@class='sc-hzDkRC fzkjjA']/div/div[@title='${value}'][1]




Remove_member_in_member_menu
    ${name}=    Get Text    xpath=//div[@class='sc-cEvuZC bXbwNb']/div[3]/a/div[3]
    Wait Until Element Is Visible   xpath=//div[@class='sc-cEvuZC bXbwNb']/div[3]/a/div[1]/div/span
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='sc-cEvuZC bXbwNb']/div[3]/a/div[1]/div/span
    Wait Until Element Is Visible   xpath=//a[@href='#remove']
    wait until keyword succeeds  10     1       Click Element   xpath=//a[@href='#remove']
    Wait Until Element Is Visible   xpath=//div[@class='ant-confirm-btns']//button[2]
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-confirm-btns']//button[2]
    Wait Until Element Is Not Visible   xpath=//h6[text()='${name}']


click_leave_chat
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='sc-hZSUBg bHECWA']/span[2]/button
    wait until keyword succeeds  10     1       Click Element   xpath=//span[text()='leave']
    Wait Until Element Is Visible   xpath=//div[@class='ant-confirm-btns']//button[2]
    wait until keyword succeeds  10     1       Click Element   xpath=//div[@class='ant-confirm-btns']//button[2]




