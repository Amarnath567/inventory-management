# inventory management
This project involves the creation of a database schema for inventory management. It consists of three main tables: products, warehouses, and inventory.

The products table stores information about products, including their name, description, price, and total quantity. The warehouses table stores details about warehouses, such as their name, location, and capacity. The inventory table manages the inventory of products in each warehouse, with columns for the product ID, warehouse ID, quantity on hand, and last updated timestamp.

Foreign key constraints are used to ensure referential integrity between the tables. Specifically, the inventory table references both the products and warehouses tables using foreign keys.

Additionally, a SQL query is provided to join these tables and retrieve comprehensive information about products, warehouses, and inventory quantities. This query enables users to view details such as product name, description, price, warehouse location, inventory quantity, and last updated timestamp in a single result set.

Overall, this project provides a foundation for managing inventory effectively, allowing businesses to track products across different warehouses and monitor inventory levels in real-time.

Also, 4 queries where written to validate and demonstrate how this database can be used in real time

Query 1: To retrieves all columns for products where the product name is 'Jeans' from the products table. 
Query 2: To Identify the warehouse(s) with the maximum capacity, providing valuable insight into the capacity distribution across the warehouses in the dataset
Query 3: To identify the product or products with the lowest stock quantity among all products listed in the products table.
Query 4: To calculate the total value of the inventory by summing the product of each product's price and its corresponding quantity on hand
