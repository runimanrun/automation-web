*** Settings ***
Library     Selenium2Library
Resource    ../PageObjects/GistPage.robot

*** Keywords ***
Create Gist
    [Arguments]     ${name}     ${data}
    Verify Gist Create Page
    Type on Gist File Name      ${name}
    Type on Gist Data           ${data}
    Click on Public Gist Button
    Verify Gist Detail Page     ${name}     ${data}

View All Gists
    Click All Gists Button
    Verify Discover Gists Page

View Gists Details
    Click on My Gists
    Verify Gist Detail Page     ${GIST_NAME}     ${GIST_DATA}

Edit Gists
    [Arguments]     ${data}
    Click on Edit Button
    Type on Gist Data           ${data}
    Click on Update Button
    Verify Gist Detail Page     ${GIST_NAME}     ${data}

Delete Gist
    Click on Delete Button
    Confirm Delete Gists