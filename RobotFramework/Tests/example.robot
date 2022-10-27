*** Settings ***
Documentation    Providing some info on this whole suite and why I'm running it
Library          SeleniumLibrary


*** Variables ***

*** Test Cases ***
Should be able to add a customer
    [Documentation]    This is some basic info about the test
    [Tags]             1006    Smoke    Contacts
    Log                Starting the test case!
    Open Browser       https://www.lastensatumetsa.fi/    chrome
    Sleep              3 s
    Close Browser      


*** Keywords ***