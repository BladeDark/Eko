*** Settings ***
Library           Selenium2Library
Resource          ../Resources/Variable.robot

*** Variables ***

*** Keywords ***
begin_web_test
    open browser    ${variable_URL}    ${variable_Browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    20

end_web_test
    Close Browser