*** Settings ***
Resource  ../Page objects/Abstract_Page.robot

*** Keywords ***
I Open Eko website
    Abstract_Page.begin_web_test
I Close Eko website
    Abstract_Page.end_web_test