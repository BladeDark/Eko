*** Settings ***
Resource  ../Page objects/Chat_Page.robot


*** Keywords ***
I input message as
    [Arguments]    ${value}
    Chat_Page.set chat message    ${value}
    Chat_Page.click_send

I check last message as:
    [Arguments]    ${value}
     Chat_Page.check_last_message     ${value}

I check second message from last:
    [Arguments]    ${value}
    Chat_Page.check_second_last_message      ${value}

I click topics menu
    Chat_Page.click_topics

I click members menu
    Chat_Page.click_members

I input topic name
    [Arguments]    ${value}
    Chat_Page.set_topic_name    ${value}

I click submit
    Chat_Page.click submit

I check topic name
    [Arguments]    ${value}
    Chat_Page.check_topic_name  ${value}

I remove member from the group chat
    Chat_Page.Remove_member_in_member_menu

I click leave group chat
    Chat_Page.click_leave_chat




