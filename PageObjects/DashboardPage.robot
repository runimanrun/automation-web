*** Settings ***
Library     Selenium2Library

*** Variables ***
${dashboardHeader}      xpath=//*[contains(@class,'Header-item')]
${headerAddButton}      xpath=//*[@class='Header-item position-relative d-none d-md-flex']
${createGistLink}       xpath=//a[contains(text(),'New gist')]

*** Keywords ***
Verify Github Dashboard Page
    wait until element is visible   ${dashboardHeader}
    page should contain element     ${headerAddButton}

Click on Header Add Button
    wait until element is visible   ${headerAddButton}
    click element                   ${headerAddButton}

Click on Create Gist Link
    wait until element is visible   ${createGistLink}
    click element                   ${createGistLink}
