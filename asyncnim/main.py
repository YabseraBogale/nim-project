from random import randint
from database import Ethio
import asyncio

ethio=Ethio()

## testing threading

async def AddisAbeba():
    
    number=randint(11,20)
    print("EthioTele Regsisted at Addis Ababa number is",number)
    await ethio.Insert(number)
    

async def Jimma():
    
    number=randint(11,20)
    print("EthioTele Regsisted at Jimma number is",number)
    await ethio.Insert(number)



async def main():
    maindatabase=await asyncio.gather(
        AddisAbeba(),
        Jimma(),
    )

for i in range(0,10):
    try:
        asyncio.run(main())
    except Exception as e:
        print(e)
