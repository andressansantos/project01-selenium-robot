*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionar por texto
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list      Scott Lang

Selecionar pelo valor
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown             6
