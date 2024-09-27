import mysql.connector
import main
conn=main.conn

def cat():
 cursorr=conn.cursor()
 print("This Program is use to Enter deatils in Catergory table")
 h=1
 while h==1:
   formula="INSERT INTO category (categoryID,categoryName,description) values (%s,%s,%s)"
   categoryID=int(input("Enter Category ID:"))
   categoryName=input("Enter Category Name:")
   description=input("Enter description of product:")
   values=(categoryID,categoryName,description)
   cursorr.execute(formula,values)
   conn.commit()
   print("Category Details are inserted Succesfully")
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
  print("All Category Details are:")
  cursorr.execute("SELECT * FROM category")
  result=cursorr.fetchall()
  for row in result:
    print(row)
  

def cat_detl():
  cursorr=conn.cursor()
  categoryID=int(input("Enter Category ID to get details:"))
  cursorr.execute("select * from category where categoryID=%s",(categoryID,))
  result=cursorr.fetchone()
  if result:
    print("Category ID:",result[0])
    print("Category Name:",result[1])
    print("Description:",result[2])
    z=int(input("Enter 1 for another category details or any number for exit:"))
    if z==1:
      cat_detl()
   
      
