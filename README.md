# Mini-database-project--ecommerce
Project Title: E-commerce Database System 🛍️
Project Overview
This project is a mini database system for an e-commerce platform. It demonstrates key database concepts like relational design, data normalization, and SQL querying. The system manages core business functions, including customer information, product catalogs, order tracking, and payments. The ER diagram provided visually represents the relationships between these entities.

Database Design 📐
The database schema is structured around five main tables:

customer: Stores customer details like name, email, and address. customerid serves as the primary key.

product: Manages product information, including name, price, category, and stockquantity. productid is the primary key.

order: Tracks customer orders with details like orderdate, status, and totalamount. It links to the customer table using customerid as a foreign key.

orderitem: This is a junction table that handles the many-to-many relationship between order and product. It stores the quantity and subtotal for each item in an order.

payment: Records payment information for each order, including amount, method, and status. It is linked to the order table via a foreign key.

This design uses primary and foreign keys to ensure data integrity and establish clear relationships, following a professional approach to database design.

SQL Scripts and Queries 💻
The project's SQL script includes all the necessary commands to set up and populate the database.

CREATE TABLE Statements: These scripts define the schema for each of the five tables, specifying data types and constraints like PRIMARY KEY and FOREIGN KEY to enforce relationships.

INSERT Statements: The script populates the tables with at least 20 rows of sample data to provide a realistic dataset for testing and demonstration.

The script also contains several example queries that address common business questions:

List all customers and their orders: This query joins the customer and order tables to provide a complete view of all orders placed, along with the customer's name.

Show items in a specific order: This query uses a JOIN between orderitem and product to list all the items within a given order, including their names and quantities.

Display payment details: This query retrieves payment information, linking it to the corresponding order and customer to show who made which payment.

These queries demonstrate the ability to retrieve and combine data from multiple tables, which is a core skill for database management.

