from random import randint
from database import Ethio
import asyncio

ethio=Ethio()

## testing threading

async def AddisAbeba():
    print("EthioTele Regsisted at Addis Ababa")
    number=randint(0,10)
    print("EthioTele Regsisted at Addis Ababa number is",number)
    ethio.Insert(number)
    print("ok")

async def Jimma():
    print("EthioTele Regsisted at Jimma")
    number=randint(0,10)
    print("EthioTele Regsisted at Jimma number is",number)
    ethio.Insert(number)
    print("ok")


async def main():
    maindatabase=await asyncio.gather(
        AddisAbeba,
        Jimma
    )

for i in range(0,10):
    try:
        asyncio.run(main())
        print("Running",i,"times")
    except Exception as e:
        print(e)