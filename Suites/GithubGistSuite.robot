*** Settings ***
Library     Selenium2Library        timeout=10
Resource    ../Variables/var.robot
Resource    ../Config/config.robot
Resource    ../Tests/LoginTest.robot
Resource    ../Tests/GistTest.robot

Suite Setup     Before Suite
Suite Teardown  Close All Browsers

*** Keywords ***
Before Suite
    Launch Browser      ${REMOTE_URL}       ${BROWSER}
    Login to Github Account         ${EMAIL}            ${PASSWORD}

*** Test Cases ***
User Create Gist
    Create Gist                     ${GIST_NAME}        ${GIST_DATA}

User View All Gists
    View All Gists

User View Gists Details
    View Gists Details

User Edit Gists
    Edit Gists                      ${GIST_DATA_UPDATE}

# User Delete Gists
#     Delete Gist
