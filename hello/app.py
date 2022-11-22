
from cgitb import reset
from unittest import result


def welcome(name):
    return "Olá " + name + ", bem vindo ao curso básico de Robot Framework!"

result = welcome("Andressa")
print(result)

