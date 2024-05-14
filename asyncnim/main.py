from random import randint
from database import Ethio
from threading import Thread 

ethio=Ethio()

## testing threading

def RandomNumberTest():
    return randint(0,10)

def RandomNumber():
    return ethio.Insert(randint(0,10))


insertdatabasethread=Thread(target=RandomNumber)
