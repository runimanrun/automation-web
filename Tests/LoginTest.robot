*** Settings ***
Library     Selenium2Library
Resource    ../PageObjects/LandingPage.robot
Resource    ../PageObjects/LoginPage.robot
Resource    ../PageObjects/DashboardPage.robot
Resource    ../PageObjects/GistPage.robot

*** Keywords ***
Login to Github Account
    [Arguments]     ${username}     ${password}
    Verify Github Landing Page
    Click on Landing Sign In Button
    Verify Github Login Page
    Type on Username                ${username}
    Type on Password                ${password}
    Click on Sign In Button
    Verify Github Dashboard Page
    Click on Header Add Button
    Click on Create Gist Link
    Verify Gist Create Page
