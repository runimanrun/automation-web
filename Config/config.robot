*** Settings ***
Library    Selenium2Library

*** Keywords ***
Launch Browser
    [Arguments]     ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window
