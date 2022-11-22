*** Settings ***

Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Variables ***
${check_thor}           id:thor
${check_iron}           css:input[value='iron-man']
${check_panther}        xpath://*[@id='checkboxes']/input[7]


*** Test Cases ***
Marcando opção com Id
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_thor}
    Checkbox Should Be Selected    ${check_thor}
    Sleep                           2


Marcando opção com CSS Selector
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_iron}
    Checkbox Should Be Selected    ${check_iron}
    Sleep                          2

Marcando opção com Xpath
    [tags]      ironman
    Go To                          ${url}/checkboxes
    Select Checkbox                ${check_panther}
    Checkbox Should Be Selected    ${check_panther}
    Sleep                           2

