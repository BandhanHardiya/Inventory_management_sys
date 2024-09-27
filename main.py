import mysql.connector
#change password according to your mysql password
print("Enter your Credentials")
hos=input("Enter Host Name:")
passwor=input("Enter Password:")
use=input("Enter User Name:")
conn=mysql.connector.connect(host=hos,password=passwor,user=use,database='inventory_management_sys')
cursorr=conn.cursor()

if conn.is_connected():
    print("Connection Successful")
else:
    print("Invalid Credentials")


    



     
 

    
