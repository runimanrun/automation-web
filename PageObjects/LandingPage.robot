*** Settings ***
Library     Selenium2Library

*** Variables ***
${langdingPageCopy}     Where the world builds software
${signInButton}         xpath=//a[contains(text(), 'Sign in')]
${signUpButton}         xpath=//a[contains(text(), 'Sign in')]/parent::div/following-sibling::a[contains(text(), 'Sign up')]

*** Keywords ***
Verify Github Landing Page
    wait until page contains            ${langdingPageCopy}
    page should contain element         ${signInButton}
    page should contain element         ${signUpButton}

Click on Landing Sign In Button
    wait until element is visible       ${signInButton}
    click element                       ${signInButton}

Click on Landing Sign Up Button
    wait until element is visible       ${signUpButton}
    click element                       ${signUpButton}
