import mysql.connector
import main
conn=main.conn

def cus():
 cursorr=conn.cursor()
 print("This program is use to Enter details in Customer Table:")
 h=1
 while h==1:
    formula="INSERT INTO customer (customerID,customerName,address,city,postalcode,country,phoneNO) values (%s,%s,%s,%s,%s,%s,%s)"
    customerID=int(input("Enter Customer ID:"))
    customerName=input("Enter Customer Name:")
    address=input("Enter Address:")
    city=input("Enter city:")
    postalcode=input("Enter Postal Code:")
    country=input("Enter Country:")
    phoneNO=input("Enter Phone Number:")
    values=(customerID,customerName,address,city,postalcode,country,phoneNO)
    cursorr.execute(formula,values)
    conn.commit()
    print("Customer Details are inserted Succesfully")
    z=int(input("Enter 1 for another record and 2 for exit:"))
    if z==1:
      h=1
    elif z==2:
      h=0
    else:
      print("Invalid choice")
      h=0


def sel_all():
  cursorr=conn.cursor()
  print("All Customer Details are:")
  cursorr.execute("SELECT * FROM customer")
  result=cursorr.fetchall()
  for row in result:
    print(row)
  

def cus_detl():
  cursorr=conn.cursor()
  customerID=int(input("Enter Customer ID to get details:"))
  cursorr.execute("select * from customer where customerID=%s",(customerID,))
  result=cursorr.fetchone()
  if result:
    print("Customer ID:",result[0])
    print("Customer Name:",result[1])
    print("Address of Customer:",result[2])
    print("City of Customer:",result[3])
    print("Postal Code:",result[4])
    print("Country:",result[5])
    print("Phone NO:",result[6])
    z=int(input("Enter 1 To find another Customer details or any number for exit:"))
    if z==1:
      cus_detl()
  
      
    

  


      
