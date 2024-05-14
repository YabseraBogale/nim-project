import sqlite3

class Ethio():
    def __init__(self) -> None:
        try:
            self.connection=sqlite3.Connection('ethio.db')
            self.ponter=self.connection.cursor()
            statment="create table if not exists ethio(phonenumber int not null primary key);"
            self.ponter.execute(statment)
            self.connection.commit()
            print("ok")
        except Exception as e:
            print(e)
    def Insert(self,phonenumber)->bool:
        try:
            statment="Insert into ethio(phonenumber) values(?)"
            self.ponter.execute(statment,(phonenumber,))
            self.connection.commit()
            return "ok"
        except Exception as e:
            print(phonenumber,"is already on the database")
    def CloseConnection(self):
        try:
            self.connection.close()
            return "ok"
        except Exception as e:
            return e

    def Dropethio(self):
        try:
            statment="drop table ethio"
            self.ponter.execute(statment)
            self.connection.commit()
            print("dropped ethio table ...")
        except Exception as e:
            print(e)


