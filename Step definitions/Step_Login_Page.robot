*** Settings ***
Resource  ../Page objects/Abstract_Page.robot
Resource  ../Page objects/Login_Page.robot

*** Keywords ***
I Login with admin user
    Login_Page.set_Username    lek@ekoapp.com
    Login_Page.set_Password    password
    Login_Page.click_Login

I Login with staff user 1
    Login_Page.set_Username    narongsak
    Login_Page.set_Password    password
    Login_Page.click_Login

I Login with staff user 2
    Login_Page.set_Username    sakulchaikeaw
    Login_Page.set_Password    password
    Login_Page.click_Login
