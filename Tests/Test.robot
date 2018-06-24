*** Settings ***

#Suite Setup       Run Keywords  I Open Eko website
#Suite Teardown    I Close Eko website
Test Setup  Run Keywords  I Open Eko website
Test Teardown   I Close Eko website
Resource  ../Step definitions/Step_Login_Page.robot  # necessary for Setup & Teardown
Resource  ../Step definitions/Step_Abstract_Page.robot
Resource  ../Step definitions/Step_Home_Page.robot
Resource  ../Step definitions/Step_Chat.robot

#Suite Setup  Open Eko website
#Suite Teardown  Close Eko website

# Copy/paste the below line to Terminal window to execute
# pybot -d results tests/amazon.robot

*** Test Cases ***
Scenario 1: Verify message can send successfully to another user
    [Tags]  First
    I Login with admin user
    I click skip to close banner
    I click create icon
    I click direct message
    I input name in search box  narongsak
    I click the searched name
    I input message as  Hi Narongsak !
    I input message as  Are you okay ?
    I logout from current user
    I Login with staff user 1
    I click skip to close banner
    I click create icon
    I click direct message
    I input name in search box  lek@ekoapp.com
    I click the searched name
    I check second message from last:   Hi Narongsak !
    I check last message as:    Are you okay ?
    I input message as  I'm fine

Scenario 2: Verify group chat creation
    [Tags]  Second
    I Login with admin user
    I click skip to close banner
    I click create icon
    I click group chat
    I clik member name  narongsak
    I clik member name  sakulchaikeaw
    I click next button
    I input group chat name     Lek Group Chat
    I click next button
    I check name in the chat list   Lek Group Chat

Scenario 3: Verify created topic in group chat
    [Tags]  Third
    I Login with admin user
    I click skip to close banner
    I click name in the chat list   Lek Group Chat
    I click topics menu
    I input topic name  Animal
    I click submit
    I check topic name  Animal
    I logout from current user
    I Login with staff user 1
    I click skip to close banner
    I click name in the chat list   Lek Group Chat
    I click topics menu
    I check topic name      Animal


Scenario 4: Verfy remove member in the group chat
    [Tags]  Fourth
    I Login with admin user
    I click skip to close banner
    I click name in the chat list   Lek Group Chat
    I click members menu
    I remove member from the group chat

Scenario 5: Verfy remove group chat
    [Tags]  Fifth
    I Login with admin user
    I click skip to close banner
    I click name in the chat list   Lek Group Chat
    I click leave group chat
    I check group chat name must not visible    Lek Group Chat

