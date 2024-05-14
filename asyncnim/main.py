import sqlite3

connection=sqlite3.Connection('ethio.db')


pointer=connection.cursor()

statement="""
    create table ethio(
        phonenumber int not null primary key
    );
"""

pointer.execute(statement)