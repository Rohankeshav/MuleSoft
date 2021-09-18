import mysql.connector
database= mysql.connector.connect(host='localhost',user='root',password='',database='interests')
cur= database.cursor()

#insertion of data to the table
f1= input("Enter the Movie name: ")
f2=input("Enter the Actor's name: ")
f3= input("Enter the Actress's name: ")
f4=input("Enter the Director's name: ")
f5=input("Enter the Year of Release: ")

query="INSERT INTO movies(Movie_name,Actor,Actress,Director,YOR) VALUES (%s,%s,%s,%s,%s)"
s=(f1,f2,f3,f4,f5)
cur.execute(query,s)

#retrieving all rows
print ("\n{:<30} {:<25}{:<25} {:<25} {:<20}".format('Movie','Actor','Actress','Director','Year Of Release'))
query1="SELECT * FROM movies"
cur.execute(query1)
result=cur.fetchall()
for i in result:
    Movie_name,Actor,Actress,Director,YOR=i
    print("{:<30} {:<25}{:<25} {:<25} {:<20}".format(Movie_name,Actor,Actress,Director,YOR))

#retrieving rows by particular parameter
f1=input("\nEnter the Movie name: ")
f1_data=(f1,)
query2=("SELECT * FROM Movies WHERE Movie_name= %s")
cur.execute(query2,f1_data)
res=cur.fetchall()
print ("\n{:<30} {:<25}{:<25} {:<25} {:<20}".format('Movie','Actor','Actress','Director','Year Of Release'))
for i in res:
    Movie_name,Actor,Actress,Director,YOR=i
    print("{:<30} {:<25}{:<25} {:<25} {:<20}".format(Movie_name,Actor,Actress,Director,YOR))    


database.commit()