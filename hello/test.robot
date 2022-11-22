

*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Andressa
    Should Be Equal     ${result}   Olá Andressa, bem vindo ao curso básico de Robot Framework!