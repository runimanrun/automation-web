*** Settings ***
Library     Selenium2Library

*** Variables ***
${loginPageCopy}        Sign in to GitHub
${usernameInput}        id=login_field
${passwordInput}        id=password
${loginSignInButton}    name=commit

*** Keywords ***
Verify Github Login Page
    wait until page contains        ${loginPageCopy}
    page should contain element     ${usernameInput}
    page should contain element     ${passwordInput}

Type on Username
    [Arguments]     ${inputValue}
    wait until element is visible   ${usernameInput}
    input text                      ${usernameInput}        ${inputValue}

Type on Password
    [Arguments]     ${inputValue}
    wait until element is visible   ${passwordInput}
    input password                  ${passwordInput}        ${inputValue}

Click on Sign In Button
    wait until element is visible   ${loginSignInButton}
    click element                   ${loginSignInButton}
