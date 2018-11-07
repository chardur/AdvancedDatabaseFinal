#Advanced Database Summer 18 MSSQL:
##Premise:
You have received a contract job as a SQL developer contractor. A knife manufacturing company wants you to design their database so that they can put a front end website on top of it. Your job is to take their data (OriginalDataFiles.zip) and design a database.
They have the following requirements:
- No duplication of data
- Need a way to track inventory…we currently don’t do this
- Primary keys on all tables
- Identity columns where appropriate
- Relationships to tables setup correctly (foreign keys)
- Data loaded and cleaned up to the best of your ability
- Encrypt personal data
- Follow documented naming convention
- Indexes added where you think it will help
- Trigger(s) for when a new third-party vendor is added
- Views
  - Need a view that lists all our products and the last time it was ordered
  - Using a CTE, list the top 3 orders by value
  - Need a view that lists all our orders in the last 90 days
- Stored Procedures
  - Stored proc to list all the orders for a particular vendor (need to be able to pass the identifier of the vendor to the procedure)
  - Stored proc to insert new products 
  - Stored proc to insert new vendors
  - Stored proc to update inventory (need to be able to pass the identifier of the product and the new inventory count)
  - Stored proc that will allow a dynamic search of products (a where clause will be passed with the where included (i.e. WHERE ProductID = 4)
- Functions
  - Function to return a table of the last product(s) ordered by a particular vendor
  - Function to convert a datetime value to a date
  
## Solution
1.	As a first step I reviewed the data and the relationships between the data. I also clarified to make sure I understood the data.
2.	The next step was to create a database and tables that match the existing data and the additional tables that will be needed in the future for inventory tracking. The table naming was standardized to camel-case to help with future development. Note: Id fields were added to Users and Vendors. All tables have primary keys to help with performance (clustering).
3.	At this point I imported the data from the csv files to the database using a Bulk Insert command and checked to make sure the data was consistent. 
4.	Next I added the relationships to the tables. Please see the diagram below:
![](/diagram.jpg)
5.	Created a trigger when a vendor is added, along with a vendorAudit table so that you can view the triggers easily. (see attachments)
6.	Created a view that lists all our products and the last time it was ordered (see attachments)
7.	Created a view that lists the top 3 orders (see attachments)
8.	Created a view that displays the orders from the past 90 days (see attachments)
9.	Created a stored procedure to list all the orders for a particular vendor (see attachments)
10.	Created a stored procedure to insert new products (see attachments)
11.	Created a stored procedure to insert new vendors (see attachments)
12.	Created a stored procedure to update inventory (see attachments)
13.	Created a stored procedure to dynamically search products (see attachments)
14.	Created a function to return the last products order by a vendor (see attachments)
15.	Created a function to convert DATETIME to DATE (see attachments)
16.	The last step was to encrypt the username and password columns of the Logins table for security. The master-key, certificate and private key are also included in the attachments so that the information can be decrypted.
