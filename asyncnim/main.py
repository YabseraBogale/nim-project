from random import randint
from database import Ethio
import asyncio

ethio=Ethio()

## testing threading
x=30
y=40
async def AddisAbeba():
    
    number=randint(x,y)
    print("EthioTele Regsisted at Addis Ababa number is",number)
    await ethio.Insert(number)
    

async def Jimma():
    
    number=randint(x,y)
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
