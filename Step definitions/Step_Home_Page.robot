*** Settings ***
Resource  ../Page objects/Home_Page.robot

*** Keywords ***
I click create icon
    Home_Page.click_create_icon

I click skip to close banner
    Home_Page.click_skip_on_banner

I click direct message
    Home_Page.click_direct_message

I click group chat
    Home_Page.click_group_chat

I input name in search box
    [Arguments]    ${value}
    Home_Page.set_name    ${value}

I click the searched name
    Home_Page.click_searched_name

I logout from current user
    Home_Page.click_setting
    Home_Page.click_logout

I clik member name
    [Arguments]    ${value}
    Home_Page.click member name     ${value}

I click next button
    Home_Page.click next

I input group chat name
    [Arguments]    ${value}
    Home_Page.set_groupchat_name    ${value}

I check name in the chat list
    [Arguments]    ${value}
    Home_Page.check_name_in_chat_list   ${value}

I click name in the chat list
    [Arguments]    ${value}
    Home_Page.click_chat_name_in_chat_list   ${value}

I check group chat name must not visible
    [Arguments]    ${value}
    Home_Page.invisible_group_chat_name     ${value}

