import mysql.connector
import main
conn=main.conn

def ord():
 
 print("This program is use to Enter details in Orders Table:")
 h=1
 while h==1:
    try:
     cursorr=conn.cursor()
     formula="INSERT INTO orders (orderID,productID,customerID,orderDate,shipDate,shipAddress,shipcity,shipPostalCode,shipCountry) values (%s,%s,%s,%s,%s,%s,%s,%s,%s)"
     orderID=int(input("Enter order ID:"))
     productID=int(input("Enter Product ID:"))
     customerID=int(input("Enter Customer ID:"))
     orderDate=input("Enter Ordre Date (yyyy/mm/dd):")
     shipDate=input("Enter order ship date (yyyy/mm/dd):")
     shipAddress=input("Enter order shipped address:")
     shipCity=input("Enter order shipped city:")
     shipPostalCode=input("Enter order shipped postal code:")
     shipCountry=input("Enter ordr shipped Country:")
     values=(orderID,productID,customerID,orderDate,shipDate,shipAddress,shipCity,shipPostalCode,shipCountry)
     cursorr.execute(formula,values)
    except ValueError:
      print("Enter Numeric value")
    except Exception as e:
      print("Exception",e)
    else:  
     conn.commit()
     print("Orders Details are inserted Succesfully")
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
  print("All Orders Details are:")
  cursorr.execute("SELECT * FROM orders")
  result=cursorr.fetchall()
  for row in result:
    print(row)
  

def ord_detl():
  while True:
   try:
    cursorr=conn.cursor()
    orderRID=int(input("Enter Order ID to get details:"))
    cursorr.execute("select * from orders where orderID=%s",(orderRID,))
    result=cursorr.fetchone()
    if result:
     print("Order ID:",result[0])
     print("Product ID:",result[1])
     print("Customer ID:",result[2])
     print("Order Date:",result[3])
     print("Ship Date:",result[4])
     print("Ship Address:",result[5])
     print("Ship City:",result[6])
     print("Ship Postal Code",result[7])
     print("Ship Contry:",result[8])
    else:
      print("Invalid Order ID")
   except ValueError:
    print("Enter Numeric value")
   except Exception as e:
    print("Exception",e)

   z=int(input("Enter 1 for another Order details or any number for exit:"))
   if z!=1:
    break
   

    
