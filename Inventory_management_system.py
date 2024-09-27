import Product
import Category
import Supplier
import Customer
import Orders
import main
main
print("1 For Values in PRODUCT table:")
print("2 For Values in CATEGORY table:")
print("3 For Values in SUPPLIER table:")
print("4 For Values in CUSTOMER table:")
print("5 for Values in ORDERS table:")
choice=int(input("Enter your choice:"))

nor=1
while nor==1:
   
    while choice==1:
        print("1 For Input Values in PRODUCT Table")
        print("2 For Select Every Values from PRODUCT Table")
        print("3 for showing details with PRODUCT ID") 
        print("4 for Updating stock from product ID")
        print("5 for exit")
        l=int(input("Enter your choice:"))

        if l==1:
            Product.pro()
        elif l==2:
            Product.sel_all()
        elif l==3:
            Product.pro_detl()
        elif l==4:
            Product.up_stock()
        else:
            choice=0
            
            
            
    while choice==2:    
        print("1 For Input Values in CATEGORY Table")
        print("2 For Select Every Values from CATEGORY Table")
        print("3 for showing details with CATEGORY ID") 
        print("4 for exit")
        l=int(input("Enter your choice:"))
        if l==1:
            Category.cat()
        elif l==2:
            Category.sel_all()
        elif l==3:
            Category.cat_detl()
        else:
            choice=0


    while choice==3:       
        print("1 For Input Values in SUPPLIER Table")
        print("2 For Select Every Values from SUPPLIER Table")
        print("3 for showing details with SUPPLIER ID") 
        print("4 for exit")
        l=int(input("Enter your choice:"))
        if l==1:
           Supplier.sup()
        elif l==2:
           Supplier.sel_all()
        elif l==3:
           Supplier.sup_detl()
        else:
            choice=0


    while choice==4:        
        print("1 For Input Values in CUSTOMER Table")
        print("2 For Select Every Values from CUSTOMER Table")
        print("3 for showing details with CUSTOMER ID") 
        print("4 for exit")
        l=int(input("Enter your choice:"))
        if l==1:
            Customer.cus()
        elif l==2:
            Customer.sel_all()
        elif l==3:
            Customer.cus_detl()
        else:
            choice=0


    while choice==5:        
        print("1 For Input Values in ORDER Table")
        print("2 For Select Every Values from ORDER Table")
        print("3 for showing details with ORDER ID") 
        print("4 for exit")
        l=int(input("Enter your choice:"))
        if l==1:
           Orders.ord()
        elif l==2:
           Orders.sel_all()
        elif l==3:
           Orders.ord_detl()
        else:
            choice=0
            
     
    else:
        print("Invalid choice")

    print("1 For Input Values in PRODUCT table:")
    print("2 For Input Values in CATEGORY table:")
    print("3 For Input Values in SUPPLIER table:")
    print("4 For Input Values in CUSTOMER table:")
    print("5 for Input Values in ORDERS table:")
    print("6 or any number for exit")
    choice=int(input("Enter your choice:"))
    if choice==1 or choice==2 or choice==3 or choice==4 or choice==5:
        nor=1
    else:
        nor=0
    
print("Thanks for using Inventory Management System")
print("Created by Bandhan Hardiya")  