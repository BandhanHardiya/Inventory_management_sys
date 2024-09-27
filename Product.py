import mysql.connector
import main
conn=main.conn

def pro():
 cursorr=conn.cursor()
 print("This Program is use to Enter deatils in product table")
 h=1
 while h==1:
   formula="insert into product (productID,productName,categoryID,stock,prize,MRP,suppliersID) values (%s,%s,%s,%s,%s,%s,%s)"
   productID=int(input("Enter Product ID:"))
   productName=(input("Enter product Name:"))
   categoryID=int(input("Enter product Category ID:"))
   stock=int(input("Enter stock:"))
   prize=int(input("Enter prize:"))
   MRP=int(input("Enter MRP:"))
   suppliersID=int(input("Enter supplier ID:"))
   values=(productID,productName,categoryID,stock,prize,MRP,suppliersID)
   cursorr.execute(formula,values)
   conn.commit()
   print("Product Details are inserted Succesfully")
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
  print("All Product Details:")
  cursorr.execute("SELECT * FROM product")
  result=cursorr.fetchall()
  for row in result:
    print(row)
  


def pro_detl():
  cursorr=conn.cursor()
  print("Product Details:")
  productID=int(input("Enter Product ID to get Details:"))
  cursorr.execute("SELECT * FROM product WHERE productID=%s",(productID,))
  result=cursorr.fetchone()
  if result:
    print("Product ID:",result[0])
    print("Product Name:",result[1])
    print("Category ID:",result[2])
    print("Stock:",result[3])
    print("Prize:",result[4])
    print("MRP:",result[5])
    print("SuppliersID:",result[6])
    z=int(input("Enter 1 If you want Details of another product 2 for exit:"))
    if z==1:
      pro_detl()
    


def up_stock():
  cursorr=conn.cursor()
  print("Update Stock with Product ID")
  productID=int(input("Enter Product ID:"))
  stock=int(input("Enter stock:"))
  cursorr.execute("update product set stock=%s where productID=%s",(stock,productID,))  
  print("Stock Updated")
  cursorr.execute("select * from product where productID=%s",(productID,))
  result=cursorr.fetchone()
  if result:
    print("product ID:",result[0])
    print("product Name:",result[1])
    print("Stock:",result[3])
    z=int(input("Enter 1 for Updating Another product Stock 2 for exit:"))
    if z==1:
      up_stock()
 


