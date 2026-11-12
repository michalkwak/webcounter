*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter

*** Test Cases ***
When a value is set the counter shows that value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 10 kertaa

Pressing the button after setting a value increments from that value
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  5
    Click  button >> text=aseta
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 6 kertaa
