import mysql.connector
database= mysql.connector.connect(host='localhost',user='root',password='',database='interests')
cur= database.cursor()

#Creating table Movies for the database Interests
query="CREATE TABLE movies(Movie_name varchar(20),Actor varchar(30),Actress varchar(30),Director varchar(30),YOR integer(4))"
cur.execute(query)