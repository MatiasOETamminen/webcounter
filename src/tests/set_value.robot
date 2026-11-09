*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When value is set the value becomes the value
   Go To   ${HOME_URL}
   Click  button >> text=Nollaa
   Fill Text  input[name="set_value"]  10
   Click  button >> text=aseta
   Get Text  body  *=  nappia painettu 10 kertaa