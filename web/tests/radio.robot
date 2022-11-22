*** Settings ***

Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Marcando opção com Id
    Go To                             ${url}/radios
    Select Radio Button               movies       cap 
    Radio Button Should Be Set To     movies       cap
    Sleep       2

Selecionando por value
    Go To                             ${url}/radios
    Select Radio Button               movies       guardians
    Radio Button Should Be Set To     movies       guardians
    Sleep       5
