import mysql.connector
import main
conn=main.conn

def sup():
 cursorr=conn.cursor()
 print("This program is use to Enter details in Supplier Table:")
 h=1
 while h==1:
    try:
     fromula="INSERT INTO supplier (supplierID,supplierName,address,city,postal_code,country,phoneNO) values (%s,%s,%s,%s,%s,%s,%s)"
     supplierID=int(input("Enter Supplier ID:"))
     supplierName=input("Enter Supplier Name:")
     address=input("Enter address:")
     city=input("Enter City Name:")
     postal_code=input("Enter Postal Code:")
     country=input("Enter country Name:")
     phoneNO=input("Enter phone Number:")
     values=(supplierID,supplierName,address,city,postal_code,country,phoneNO)
     cursorr.execute(fromula,values)
    except ValueError:
      print("Enter numeric value where neede")
    except Exception as e:
      print("Excepion",e)
    else:
     conn.commit()
     print("Supplier Details are inserted Succesfully")
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
  print("All Supplier Details are:")
  cursorr.execute("SELECT * FROM supplier")
  result=cursorr.fetchall()
  for row in result:
    print(row)
  

def sup_detl():
  while True:
   try:
    cursorr=conn.cursor()
    supplierID=int(input("Enter Supplier ID to get details:"))
    cursorr.execute("select * from supplier where supplierID=%s",(supplierID,))
    result=cursorr.fetchone()
   except ValueError:
    print("Enter numecric value")
   except Exception as e:
    print("Excepion",e)
   if result:
    print("Supplier ID:",result[0])
    print("Supplier Name:",result[1])
    print("Supplier Address:",result[2])
    print("Supplier City:",result[3])
    print("Postal Code:",result[4])
    print("Country:",result[5])
    print("Phone Number:",result[6])
   else:
    print("Supplier not found")

   z=int(input("Enter 1 if you want details of another Supplier or any number for exit:"))
   if z!=1:
     break
  
