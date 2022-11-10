*** Settings ***
Documentation   Test #1 from https://testpages.herokuapp.com/
Suite Setup     Open Browser    https://www.google.com/  Chrome
Suite Teardown  Close Browser
Library         SeleniumLibrary

*** Variables ***


*** Test Cases ***
Web Page Has The Correct Text Content
    [Tags]                        webpage1
    ${url}                        Set Variable  https://testpages.herokuapp.com/styled/basic-web-page-test.html
    Go To                         ${url}
    Wait Until Element Contains   xpath://h1  Basic Web Page Example
    Wait Until Element Contains   xpath://*[@id="para1"]  A paragraph of text
    Wait Until Element Contains   xpath://*[@id="para2"]  Another paragraph of text
    Sleep  3s
