## Requirements: 
Customer management: The system should be able to store and manage customer information, including customer name, phone number and loyalty points.

Employee management: The system should be able to manage employee information, including employee name, address, phone number, position, and branch assignment. The system should be able to track employee attendance, work hours, and payroll.

Supplier management: The system should be able to manage supplier information, including supplier name, address, phone number and payment mode.

Products Management: The system should be able to store and manage product id, product name, product price and to which category it belongs with additions to it order id and transaction id made by customers.

Order management: The system should be able to manage orders, including order date, price, and status. 

Transaction Management: The system should be able to store and manage transaction id, customer id, employee id, date and the total price of transaction made.

Store branch management: The system should be to manage and store the details of the store like branch manager, branch address, branch phone number.

Category management: The system should be able to manage product categories, including category name and ID. The system should be able to group products by category.

Reporting and analytics: The system should be able to generate various reports, such transactions reports, orders report the system should be able to perform analytics on the data, such as forecasting sales trends and identifying costlier products.

## Entities and Attributes
|Customer|Customer_id|CFirst_Name|Clast_name|Cphone_No|Loyalty Points|
|--------|-----------|-----------|----------|---------|--------------|	
Store Branch|Branch_ID|Branch_Manager|BPhone_No|Branch_Address|
Employee|Employee_ID|EFirst_Name|ELast_Name|Employee Address|Employee_Position|EPhone_No|Branch_ID|
Transactions|Transaction_ID|Customer_ID|Employee_ID|Transaction_Date|Total_Price|
Orders|Orders_ID|Orders_Date|Orders_Price|
Supplier|Supplier_ID|SFirst_Name|SLast_Name|Supplier_Address|SPhone_No|Payment_Mode|
Categories|Categories_ID|Categories_Name|
Products|Product_ID|Product_Name|Product_Price|Categories_ID|Orders_ID|Transaction_ID|
Supplies|Orders_ID|Supplier_ID|Supplied_units|			

## Relationship between the Entities and cardinality Ratios

|Entity 1|Relation Name|Entity 2|Cardinality Ratio|
|--------|-------------|--------|-----------------|
Customer|Can make|Transactions|1:N|
Transactions|Contain|Products|	1:N|
Products|Belongs to|Category|	N:1|
Orders|Contain|Products	|1:N|
Employee|Can make|Transactions	|1:N|
Store branch|has|Employees	|1:N|
Supplier|supplies|Orders	|M:N|

## Object model diagram
![image](https://user-images.githubusercontent.com/126350150/233131617-f0846117-c0a8-4d6f-96be-01cd313a951c.png)

## Schema Diagram
![image](https://user-images.githubusercontent.com/126350150/233131958-3062fb7c-2eb2-469c-9b1c-37cdc9eef96f.png)



