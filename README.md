**Inventory Management System**
This Python-based inventory management system allows you to manage and interact with an inventory database using MySQL. 
With this system, you can insert, update, and query data from various tables such as products, categories, suppliers, orders, and customers.
Features
With the help of this system, you can:

**Products:**
Insert new product records.
Select and view all products from the product table.
Update stock values for a product.
Find product details using a product ID.


**Categories, Suppliers, Orders, Customers:**
Insert new values.
Select and view all records from respective tables.
Retrieve details using category ID, supplier ID, order ID, and customer ID.

Prerequisites
Make sure you have the following installed:
**Python 3.x
MySQL Server
MySQL Workbench (or any MySQL client to import SQL files)
MySQL Connector for Python: Install using:**
pip install mysql-connector-python


Getting Started

**Step 1: Set Up the Database**
Open MySQL Workbench (or your preferred MySQL client).
Import the SQL File:
**Go to File** > **Open SQL Script and select** **inventory.sql** provided in this repository.
Run the SQL script to create the necessary **inventory_db database** and tables.


**Step 2: Run the Python Script**
You do not need to update your MySQL credentials beforehand.
After executing the script, you will be prompted to enter your MySQL credentials (host, username, password, and database name) at the start of the program.
To run the script:
**python inventory_management_sys.py**


**Step 3: Interact with the System**

Once the script is running, you will be able to:
Insert new products into the inventory.
Select and view all products.
Update product stock using the product ID.
Retrieve product details using a product ID.

You can also:
Insert new categories, suppliers, orders, and customer records.
Select and view all entries from the category, supplier, order, and customer tables.
Retrieve details using category ID, supplier ID, order ID, and customer ID.

**Files Included**
inventory.sql,
inventory_management_sys.py,
product.py,
category.py,
supplier.py,
order.py,
customer.py,
main.py,
Table Details.word

**Contributing**
Feel free to open issues or submit pull requests for improvements or new features.
