*** Settings ***
Library     Selenium2Library
Resource    ../Variables/var.robot

*** Variables ***
${gistCreateCopy}       Instantly share code, notes, and snippets.
${gistDiscoverCopy}     Discover gists
${gistFileNameInput}    xpath=//input[@name='gist[contents][][name]']
${gistFileDataInput}    xpath=//*[@class='form-control file-editor-textarea js-blob-contents js-code-textarea ']
${addFileButton}        xpath=//*[contains(text(), 'Add file')]
${selectOptionGist}     xpath=//*[@class='details-reset details-overlay select-menu BtnGroup-parent position-relative']
${publicGistOption}     xpath=//div[@class='select-menu-item-text']/span[contains(text(), 'Create public gist')]
${createGistButton}     xpath=//button[@class='btn btn-primary BtnGroup-item hx_create-pr-button js-sync-select-menu-button']
${allGistsButton}       xpath=//a[contains(text(), 'All gists')]
${editGistButton}       xpath=//ul[contains(@class, 'pagehead-actions')]/li/a
${deleteGistButton}     xpath=//ul[contains(@class, 'pagehead-actions')]/li/form/button
${olderPage}            xpath=//*[contains(text(), 'Older')]
${myGistName}           xpath=//*[contains(text(), '${GIST_NAME}')]
${updateButton}         xpath=//button[contains(text(), 'Update')]

*** Keywords ***
Verify Gist Create Page
    wait until element is visible   ${addFileButton}
    page should contain element     ${gistFileNameInput}
    page should contain element     ${gistFileDataInput}

Verify Gist Detail Page
    [Arguments]     ${name}         ${data}
    wait until element is visible   ${editGistButton}
    page should contain element     ${deleteGistButton}
    page should contain             ${name}
    page should contain             ${data}

Verify Discover Gists Page
    wait until page contains        ${gistDiscoverCopy}
    scroll element into view        ${olderPage}

Type on Gist File Name
    [Arguments]     ${inputValue}
    wait until element is visible   ${gistFileNameInput}
    input text                      ${gistFileNameInput}        ${inputValue}

Type on Gist Data
    [Arguments]     ${inputValue}
    Execute JavaScript              document.getElementsByClassName("form-control file-editor-textarea js-blob-contents js-code-textarea ")[0].value = "${inputValue}"

Confirm Delete Gists
    handle alert                    action=ACCEPT

Click on Public Gist Button
    click element                   ${selectOptionGist}
    click element                   ${publicGistOption}
    click element                   ${createGistButton}

Click All Gists Button
    click element                   ${allGistsButton}

Click on My Gists
    scroll element into view        ${myGistName}
    click element                   ${myGistName}

Click on Edit Button
    click element                   ${editGistButton}

Click on Delete Button
    click element                   ${deleteGistButton}

Click on Update Button
    click element                   ${updateButton}