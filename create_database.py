import mysql.connector
database= mysql.connector.connect(host='localhost',user='root',password='')
cur= database.cursor()

#Creating a Database
cur.execute("CREATE DATABASE interests")

