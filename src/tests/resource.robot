*** Settings ***
Library  Browser

*** Variables ***
${SERVER}    localhost:5001
${DELAY}     500ms
${HOME_URL}  http://${SERVER}
${BROWSER}   chromium
${HEADLESS}  false
${HEADLESS}  false

*** Keywords ***
Open And Configure Browser
    IF  $HEADLESS == 'true'
        New Browser  browser=${BROWSER}  headless=True
    ELSE
        New Browser  browser=${BROWSER}  headless=${HEADLESS}  slowMo=${DELAY}
    END
    New Context
    New Page  about:blank
