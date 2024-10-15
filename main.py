import mysql.connector
#change password according to your mysql password
while True:
  try:
   print("Enter your Credentials")
   global hos
   hos=input("Enter Host Name:")
   global passwor
   passwor=input("Enter Password:")
   global use
   use=input("Enter User Name:")
   conn=mysql.connector.connect(host=hos,password=passwor,user=use,database='inventory_management_sys')
   cursorr=conn.cursor()
  except mysql.connector.Error as err:
    print("Error while connecting my sql")
    print(err)
    continue
  except Exception as e:
    print("Exception",e)
    continue
  
  if conn.is_connected():
    print("Connection Successful")
    break
  else:
    print("Invalid Credentials")


    



     
 

    
