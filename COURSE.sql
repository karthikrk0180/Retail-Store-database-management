drop table CUSTOMER cascade constraint
drop table STORE_BRANCH cascade constraint
drop table EMPLOYEE cascade constraint
drop table TRANSACTIONS cascade constraint
drop table ORDERS cascade constraint
drop table SUPPLIER cascade constraint
drop table CATEGORIES cascade constraint
drop table PRODUCTS cascade constraint
drop table SUPPLIES cascade constraint

create table CUSTOMER
(
    Customer_ID number(10) constraint CUSTOMER_PK primary key,
    CFirst_Name varchar(30),
    CLast_Name varchar(30),
    CPhone_No number(10),
    Loyalty_Points number(10)
);

select *
from customer;

create table STORE_BRANCH
(
    Branch_ID number(10) constraint STORE_BRANCH_PK primary key,
    Branch_Manager varchar(30),
    BPhone_No number(10),
    Branch_Address varchar(10)
);

select *
from STORE_BRANCH;

create table EMPLOYEE
(
    Employee_ID number(10) constraint EMPLOYEE_PK primary key,
    EFirst_Name varchar(30),
    ELast_Name varchar(30),
    Employee_Address varchar(30),
    Employee_Position varchar(30),
    EPhone_No number(10),
    Branch_ID number(10) constraint EMPLOYEE_Branch_ID_FK references STORE_BRANCH(Branch_ID)
);

SELECT *
FROM EMPLOYEE;

create table TRANSACTIONS
(
    Transaction_ID number(10) constraint TRANSACTIONS_PK primary key,
    Customer_ID number(10) constraint TRANSACTIONS_Customer_ID_FK references CUSTOMER(Customer_ID),
    Employee_ID number(10) constraint TRANSACTIONS_Employee_ID_FK references EMPLOYEE(Employee_ID),
    Transaction_Date varchar(30),
    Total_Price number(10)
);

SELECT *
FROM TRANSACTIONS;

create table ORDERS
(
    Orders_ID number(10) constraint ORDERS_PK primary key,
    Orders_Date varchar(30),
    Orders_Price number(10)
);

SELECT *
FROM ORDERS;

create table SUPPLIER
(
    Supplier_ID number(10) constraint SUPPLIER_PK primary key,
    SFirst_Name varchar(30),
    SLast_Name varchar(30),
    Supplier_Address varchar(30),
    SPhone_No number(10),
    Payment_Mode varchar(30)
);

SELECT *
FROM SUPPLIER;

create table CATEGORIES
(
    Categories_ID number(10) constraint CATEGORIES_PK primary key,
    Categories_Name varchar(30)
);

SELECT *
FROM CATEGORIES;

create table PRODUCTS
(
    Product_ID number(10) constraint PRODUCTS_PK primary key,
    Product_Name varchar(30),
    Product_Price number(10),
    Categories_ID number(10) constraint PRODUCTS_Categories_ID_FK references CATEGORIES(Categories_ID),
    Orders_ID number(10) constraint PRODUCTS_Orders_ID_FK references ORDERS(Orders_ID),
    Transaction_ID number(10) constraint PRODUCTS_Transaction_ID_FK references TRANSACTIONS(Transaction_ID)
);

SELECT *
FROM PRODUCTS;


create table SUPPLIES
(
    Orders_ID number(10) constraint SUPPLIES_Orders_ID_FK references ORDERS(Orders_ID),
    Supplier_ID number(10) constraint SUPPLIES_Supplier_ID_FK references SUPPLIER(Supplier_ID),
    Supplied_units number(10)
);

SELECT *
FROM SUPPLIES;

INSERT INTO CATEGORIES VALUES('201','STATIONARY');
INSERT INTO CATEGORIES VALUES('202','EATABLES');
INSERT INTO CATEGORIES VALUES('203','KITCHEN ACCESSORIES');
INSERT INTO CATEGORIES VALUES('204','SELFCARE');
INSERT INTO CATEGORIES VALUES('205','EATABLES');
INSERT INTO CATEGORIES VALUES('206','EATABLES');
INSERT INTO CATEGORIES VALUES('207','EATABLES');
INSERT INTO CATEGORIES VALUES('208','EATABLES');
INSERT INTO CATEGORIES VALUES('209','EATABLES');
INSERT INTO CATEGORIES VALUES('210','EATABLES');
INSERT INTO CATEGORIES VALUES('211','SELFCARE');
INSERT INTO CATEGORIES VALUES('212','KITCHEN ACCESSORIES');
INSERT INTO CATEGORIES VALUES('213','ELECTRONICS');
INSERT INTO CATEGORIES VALUES('214','CLEANING AND HOUSEHOLD');
INSERT INTO CATEGORIES VALUES('215','STATIONARY');
INSERT INTO CATEGORIES VALUES('216','KITCHEN ACCESSORIES');
INSERT INTO CATEGORIES VALUES('217','CLEANING AND HOUSEHOLD');
INSERT INTO CATEGORIES VALUES('218','CLEANING AND HOUSEHOLD');
INSERT INTO CATEGORIES VALUES('219','EATABLES');
INSERT INTO CATEGORIES VALUES('220','CLEANING AND HOUSEHOLD');

INSERT INTO PRODUCTS VALUES('101','BOOKS','35','201','701','401'); 
INSERT INTO PRODUCTS VALUES('102','GRAINS','173','202','702','402'); 
INSERT INTO PRODUCTS VALUES('103','BOTTLE','150','203','703','403'); 
INSERT INTO PRODUCTS VALUES('104','PERFUME','229','204','704','404'); 
INSERT INTO PRODUCTS VALUES('105','BISCUITS','30','205','705','405'); 
INSERT INTO PRODUCTS VALUES('106','CHOCOLATE','70','206','706','406'); 
INSERT INTO PRODUCTS VALUES('107','SOFT DRINKS','65','207','707','407'); 
INSERT INTO PRODUCTS VALUES('108','FRUITS','120','208','708','408'); 
INSERT INTO PRODUCTS VALUES('109','VEGETABLES','40','209','709','409'); 
INSERT INTO PRODUCTS VALUES('110','CHIPS','20','210','710','410'); 
INSERT INTO PRODUCTS VALUES('111','CREAMS','240','211','711','411'); 
INSERT INTO PRODUCTS VALUES('112','UTENSILS','400','212','712','412'); 
INSERT INTO PRODUCTS VALUES('113','BATTERIES','50','213','713','413'); 
INSERT INTO PRODUCTS VALUES('114','DETERGENT','278','214','714','414'); 
INSERT INTO PRODUCTS VALUES('115','BAGS','35','215','715','415'); 
INSERT INTO PRODUCTS VALUES('116','CONTAINERS','440','216','716','416'); 
INSERT INTO PRODUCTS VALUES('117','SHAMPOO','170','217','717','417'); 
INSERT INTO PRODUCTS VALUES('118','SOAP','89','218','718','418'); 
INSERT INTO PRODUCTS VALUES('119','DAIRY PRODUCTS','150','219','719','419'); 
INSERT INTO PRODUCTS VALUES('120','BROOMS','159','220','720','420');

insert into transactions values('401','501','601','2023-02-02','400');
insert into transactions values('402','502','602','2023-02-05','790');
insert into transactions values('403','503','603','2023-02-01','553');
insert into transactions values('404','504','604','2023-02-05','899');
insert into transactions values('405','505','605','2023-02-01','420');
insert into transactions values('406','506','606','2023-02-01','634');
insert into transactions values('407','507','607','2023-02-09','255');
insert into transactions values('408','508','608','2023-02-08','990');
insert into transactions values('409','509','609','2023-02-04','682');
insert into transactions values('410','510','610','2023-02-06','712');
insert into transactions values('411','511','611','2023-02-07','1040');
insert into transactions values('412','512','612','2023-02-11','379');
insert into transactions values('413','513','613','2023-02-14','1032');
insert into transactions values('414','514','614','2023-02-12','740');
insert into transactions values('415','515','615','2023-02-20','899');
insert into transactions values('416','516','616','2023-02-04','720');
insert into transactions values('417','517','617','2023-02-19','472');
insert into transactions values('418','518','618','2023-02-15','525');
insert into transactions values('419','519','619','2023-02-19','654');
insert into transactions values('420','520','620','2023-02-20','980');

insert into store_branch values('1','ram','9845639021','vidyanagar');
insert into store_branch values('2','sham','9867409435','kims');
insert into store_branch values('3','suresh','9878452084','keshwapur');
insert into store_branch values('4','ramesh','9845097085','hosur');

INSERT INTO SUPPLIES VALUES('701','401','05');
INSERT INTO SUPPLIES VALUES('702','402','07');
INSERT INTO SUPPLIES VALUES('703','403','09');
INSERT INTO SUPPLIES VALUES('704','404','00');
INSERT INTO SUPPLIES VALUES('705','405','03');
INSERT INTO SUPPLIES VALUES('706','406','02');
INSERT INTO SUPPLIES VALUES('707','407','04');
INSERT INTO SUPPLIES VALUES('708','408','10');
INSERT INTO SUPPLIES VALUES('709','409','15');
INSERT INTO SUPPLIES VALUES('710','410','11');
INSERT INTO SUPPLIES VALUES('711','411','11');
INSERT INTO SUPPLIES VALUES('712','412','05');
INSERT INTO SUPPLIES VALUES('713','413','19');
INSERT INTO SUPPLIES VALUES('714','414','01');
INSERT INTO SUPPLIES VALUES('715','415','11');
INSERT INTO SUPPLIES VALUES('716','416','14');
INSERT INTO SUPPLIES VALUES('717','417','07');
INSERT INTO SUPPLIES VALUES('718','418','18');
INSERT INTO SUPPLIES VALUES('719','419','21');
INSERT INTO SUPPLIES VALUES('720','420','15');

INSERT INTO SUPPLIER VALUES('401','ROHIT','SHARMA','SHRINAGAR','9812654387','CASH');
INSERT INTO SUPPLIER VALUES('402','ARJUN','SINGH','KELGERI','9856407643','ONLINE');
INSERT INTO SUPPLIER VALUES('403','SIDDHARTH','PATEL','VIDYANAGAR','9865013452','ONLINE');
INSERT INTO SUPPLIER VALUES('404','RAJESH','KUMAR','NARAYANPUR','9876453087','CASH');
INSERT INTO SUPPLIER VALUES('405','PRAKASH','VERMA','RAJATGIRI','9873509076','ONLINE');
INSERT INTO SUPPLIER VALUES('406','VIKRAM','SINGHANIA','VIDYAGIRI','9812214534','CASH');
INSERT INTO SUPPLIER VALUES('407','ALOK','GUPTA','DHANESHWARINAGAR','9807609564','CASH');
INSERT INTO SUPPLIER VALUES('408','SANJAY','CHOUDHARY','LAKKAMANHALLI','9867876845','CASH');
INSERT INTO SUPPLIER VALUES('409','ANKIT','KAPOOR','RAJATGIRI','9867345647','ONLINE');
INSERT INTO SUPPLIER VALUES('410','RAHUL','MEHTA','VIKASNAGAR','9878659867','CASH');
INSERT INTO SUPPLIER VALUES('411','PRIYA','MALIK','GANDHINAGAR','9806007543','CASH');
INSERT INTO SUPPLIER VALUES('412','NEHA','SETH','VISHALNAGAR','9855478655','ONLINE');
INSERT INTO SUPPLIER VALUES('413','ANJALI','SRIRAM','MARUTHINAGAR','9876564756','ONLINE');
INSERT INTO SUPPLIER VALUES('414','SHREYA','GHOSHAL','VIKASNAGAR','9805114464','CASH');
INSERT INTO SUPPLIER VALUES('415','KAVYA','TRIVEDI','LAKKAMANAHALLI','9807654731','CASH');
INSERT INTO SUPPLIER VALUES('416','POOJA','DESAI','VIDYANAGAR','9867532096','ONLINE');
INSERT INTO SUPPLIER VALUES('417','NIDHI','MALHOTRA','PRERANANAGAR','9876543210','CASH');
INSERT INTO SUPPLIER VALUES('418','RITU','SHAH','KCD','9812345678','ONLINE');
INSERT INTO SUPPLIER VALUES('419','DIYA','RAO','VISHALNAGAR','9854761070','CASH');
INSERT INTO SUPPLIER VALUES('420','SHRUTI','DESAI','MARUTHINAGAR','9876654174','ONLINE');

INSERT INTO ORDERS VALUES('701','2023-02-03','170');
INSERT INTO ORDERS VALUES('702','2023-02-07','229');
INSERT INTO ORDERS VALUES('703','2023-02-01','330');
INSERT INTO ORDERS VALUES('704','2023-02-03','650');
INSERT INTO ORDERS VALUES('705','2023-02-02','278');
INSERT INTO ORDERS VALUES('706','2023-02-05','887');
INSERT INTO ORDERS VALUES('707','2023-02-06','390');
INSERT INTO ORDERS VALUES('708','2023-02-08','1050');
INSERT INTO ORDERS VALUES('709','2023-02-06','400');
INSERT INTO ORDERS VALUES('710','2023-02-07','187');
INSERT INTO ORDERS VALUES('711','2023-02-09','773');
INSERT INTO ORDERS VALUES('712','2023-02-12','856');
INSERT INTO ORDERS VALUES('713','2023-02-14','945');
INSERT INTO ORDERS VALUES('714','2023-02-18','899');
INSERT INTO ORDERS VALUES('715','2023-02-21','1029');
INSERT INTO ORDERS VALUES('716','2023-02-06','690');
INSERT INTO ORDERS VALUES('717','2023-02-23','779');
INSERT INTO ORDERS VALUES('718','2023-02-18','832');
INSERT INTO ORDERS VALUES('719','2023-02-19','559');
INSERT INTO ORDERS VALUES('720','2023-02-20','780');


INSERT INTO EMPLOYEE VALUES('601','SAISAMARTH','UDIKERI','HDMC','SALES ASSOCIATES','99887','1'); 
INSERT INTO EMPLOYEE VALUES('602','ANUSHL','BORATTI','GANDHINAGAR','CASHIERS','98004','1'); 
INSERT INTO EMPLOYEE VALUES('603','RAJENDRA','RATHOD','SATTUR','STOCK CLERKS','98008','1'); 
INSERT INTO EMPLOYEE VALUES('604','JIYA','PALRECHA','RAYAPUR','MANAGER','92003','1'); 
INSERT INTO EMPLOYEE VALUES('605','AMOGH','DODAWAD','HOSUR','STOCK CLERKS','92005','2'); 
INSERT INTO EMPLOYEE VALUES('606','TANISHQ','BIRAJDAR','JUBLIE CIRCLE','CASHIERS','93100','2'); 
INSERT INTO EMPLOYEE VALUES('607','OMKAR','PATIL','NAVANAGAR','CASHIERS','98004','2'); 
INSERT INTO EMPLOYEE VALUES('608','JAGDEESH','KALYAN','VIDYAGIRI','SALES ASSOCIATES','92005','2'); 
INSERT INTO EMPLOYEE VALUES('609','VIVEK','YELI','SHANTINIKETAN','STOCK CLERKS','98008','3'); 
INSERT INTO EMPLOYEE VALUES('610','SRIVATSA','MALIPATIL','TOLL NAKA','MANAGER','98001','3'); 
INSERT INTO EMPLOYEE VALUES('611','YASH','AMMANAVAR','UNKAL CROSS','CASHIERS','93100','3'); 
INSERT INTO EMPLOYEE VALUES('612','SINCHAN','KAROGAL','SATTUR','SALES ASSOCIATES','92003','3'); 
INSERT INTO EMPLOYEE VALUES('613','SAMPREET','SAMAJE','GOKUL ROAD','STOCK CLERKS','93007','3'); 
INSERT INTO EMPLOYEE VALUES('614','SACHIN','PATIL','HDMC','MANAGER','98002','2'); 
INSERT INTO EMPLOYEE VALUES('615','HRISHIKESH','TUBACHI','GANDHINAGAR','CASHIERS','98004','2'); 
INSERT INTO EMPLOYEE VALUES('616','PRASAD','PALLED','UNKAL LAKE','SALES ASSOCIATES','94102','3'); 
INSERT INTO EMPLOYEE VALUES('617','AKHIL','MIJAWAR','KESHWAPUR','SALES ASSOCIATES','93011','4'); 
INSERT INTO EMPLOYEE VALUES('618','RAJAT','JAKHAR','RAYAPUR','CASHIERS','98001','4'); 
INSERT INTO EMPLOYEE VALUES('619','YOGINATH','LAKHAMAN','HOSUR','MANAGER','92003','4'); 
INSERT INTO EMPLOYEE VALUES('620','SATVIKRAJ','SELAR','NAVANAGAR','SALES ASSOCIATES','93100','4');

INSERT INTO CUSTOMER VALUES ('501','SOMIL','YADHAV','79321','20'); 
INSERT INTO CUSTOMER VALUES ('502','KARTHIK','KHATAVKAR','79816','10'); 
INSERT INTO CUSTOMER VALUES ('503','AVANEESH','LAD','78112','35'); 
INSERT INTO CUSTOMER VALUES ('504','SHUBAM','PATIL','77225','87'); 
INSERT INTO CUSTOMER VALUES ('505','AINAPURE','DARSHAN','79391','76'); 
INSERT INTO CUSTOMER VALUES ('506','VATS','SHIVAM','79021','38'); 
INSERT INTO CUSTOMER VALUES ('507','PRAJWAL','KULKARNI','70321','90'); 
INSERT INTO CUSTOMER VALUES ('508','SIDDHARTH','JADHAV','78321','45'); 
INSERT INTO CUSTOMER VALUES ('509','SACHIN','HEBBAR','77321','98'); 
INSERT INTO CUSTOMER VALUES ('510','GURUPRASAD','PATTAR','79391','57'); 
INSERT INTO CUSTOMER VALUES ('511','AAKASH','JAIN','79001','76'); 
INSERT INTO CUSTOMER VALUES ('512','ANKIT','KUMAR','75671','5'); 
INSERT INTO CUSTOMER VALUES ('513','SOURYA','JAIN','78991','50'); 
INSERT INTO CUSTOMER VALUES ('514','SATHVIK','KULKARNI','70901','28'); 
INSERT INTO CUSTOMER VALUES ('515','SANTHOSHI','VAJRANGI','79890','15'); 
INSERT INTO CUSTOMER VALUES ('516','MAHIMA','TELKAR','79807','30'); 
INSERT INTO CUSTOMER VALUES ('517','HARSHAL','KUMAR','79900','40'); 
INSERT INTO CUSTOMER VALUES ('518','DEEPA','BOODI','76543','15'); 
INSERT INTO CUSTOMER VALUES ('519','ARNAV','PATIL','70987','80'); 
INSERT INTO CUSTOMER VALUES ('520','SNEHA','SHANTAGAR','79812','60');

------------------------------------queries-------------------------------------------------------------

1.Retrieve the names of all customer sorted in descending order of loyalty points recived:

SELECT CFirst_Name 
FROM customer 
ORDER BY Loyalty_Points DESC;

2.Retrieve the number of employees in the "SALES ASSOCIATES" department:

SELECT COUNT(*) 
FROM employee 
WHERE Employee_Position = 'SALES ASSOCIATES';

3.Retrieve the names of all employees who work in the "CASHIERS" department:

SELECT EFIRST_NAME
FROM employee
WHERE Employee_Position = 'CASHIERS';

4.Display the names of all customers where loyalty points are greater than 50
customers and the customer name should start from letter ‘A’.

SELECT Cfirst_name
FROM customer
WHERE  Loyalty_Points > 50 AND Cfirst_name LIKE 'A%'

5.display the employee name and customer name whose transaction price is more than 500?

SELECT total_price
FROM transactions
group by total_price
HAVING transactions.total_price>500;

6.Find the total amount spent by each customer in transactions made by employees who work at a specific branch:

SELECT CUSTOMER.CFIRST_NAME,customer.clast_name, SUM(transactions.total_price) AS TOTAL_AMOUNT_SPENT
FROM CUSTOMER,TRANSACTIONS,EMPLOYEE,STORE_BRANCH
WHERE customer.customer_id=transactions.customer_id 
  AND employee.employee_id=transactions.employee_id
  AND store_branch.branch_id=employee.branch_id 
  AND STORE_BRANCH.Branch_ID=1
  GROUP BY CFirst_Name,CLast_Name;

7.List all the products in a specific category and the total number of units supplied by each supplier:

SELECT PRODUCTS.Product_Name ,supplier.supplier_id, supplier.sfirst_name, supplier.slast_name, 
SUM(supplies.supplied_units)
FROM PRODUCTS,SUPPLIER,SUPPLIES,CATEGORIES
WHERE products.categories_id=categories.categories_id
      AND products.orders_id=supplies.orders_id
      AND supplies.supplier_id= supplier.supplier_id
      AND categories.categories_name='EATABLES'
GROUP BY PRODUCTS.Product_Name ,supplier.supplier_id, supplier.sfirst_name, supplier.slast_name;

8.Find the name and phone number of the manager of the branch where an employee with a specific ID works:

SELECT store_branch.Branch_Manager, store_branch.BPhone_No
FROM EMPLOYEE,store_branch
where employee.Branch_ID = store_branch.Branch_ID and  employee.Employee_ID = 613;

9.List all the transactions made by a specific customer and the name of the employee who processed
each transaction:

SELECT transactions.Transaction_ID, transactions.Transaction_Date, transactions.Total_Price, 
employee.EFirst_Name, employee.ELast_Name
FROM TRANSACTIONS,employee
where transactions.Employee_ID = employee.Employee_ID and transactions.Customer_ID = 505;

10.Find the name and address of the supplier who supplied the most units of a specific product:

SELECT supplier.sfirst_name , supplier.supplier_address
FROM SUPPLIER,supplies,products,orders
WHERE supplier.supplier_id = supplies.supplier_id
    AND supplies.orders_id = orders.orders_id
    AND orders.orders_id = products.orders_id
    AND products.PRODUCT_NAME = 'CONTAINERS'
GROUP BY supplier.sfirst_name, supplier.supplier_address
ORDER BY SUM(supplies.supplied_units) DESC;

11.Retrieve the first and last name of all customers who made transactions on a certain date.

SELECT CFirst_Name, CLast_Name 
FROM CUSTOMER 
WHERE Customer_ID IN (
    SELECT Customer_ID 
    FROM TRANSACTIONS 
    WHERE Transaction_Date = '2023-02-04'
);

12.Retrieve the first name and phone number of the supplier who have supplied more 
than 10 units of a certain product.

SELECT SFirst_Name, SPhone_No 
FROM SUPPLIER 
WHERE Supplier_ID IN (
    SELECT Supplier_ID 
    FROM SUPPLIES 
    WHERE Supplied_units > 5 AND Orders_ID IN (
        SELECT Orders_ID 
        FROM PRODUCTS 
        WHERE Product_Name = 'BATTERIES'
    )
);

13.Retrieve the total price of all transactions made by a customer with a certain phone number.

SELECT SUM(Total_Price) 
FROM TRANSACTIONS 
WHERE Customer_ID = (
    SELECT Customer_ID 
    FROM CUSTOMER 
    WHERE CPhone_No = 79816
);

14.Retrieve the product names and prices for all products in the "Kitchen Accessories" category that were
not ordered on a certain date.

SELECT Product_Name, Product_Price 
FROM PRODUCTS 
INNER JOIN CATEGORIES ON PRODUCTS.Categories_ID = CATEGORIES.Categories_ID 
WHERE CATEGORIES.Categories_Name = 'KITCHEN ACCESSORIES' AND Product_ID NOT IN (
    SELECT Product_ID 
    FROM PRODUCTS 
    INNER JOIN ORDERS ON PRODUCTS.Orders_ID = ORDERS.Orders_ID 
    WHERE Orders_Date = '2023-03-10'
);

15.Retrieve the first name and phone number of all customers 
who made transactions with an employee whose phone number starts with "555".

SELECT CFirst_Name, CPhone_No 
FROM CUSTOMER 
WHERE Customer_ID IN (
    SELECT Customer_ID 
    FROM TRANSACTIONS 
    WHERE Employee_ID IN (
        SELECT Employee_ID 
        FROM EMPLOYEE 
        WHERE EPhone_No LIKE '555%'
    )
);

16.Query to select the orders that were made by customers with loyalty points more than 50?

SELECT *
FROM ORDERS
WHERE Transaction_ID IN (
    SELECT Transaction_ID
    FROM TRANSACTIONS
    WHERE Customer_ID IN (
        SELECT Customer_ID
        FROM CUSTOMER
        WHERE Loyalty_Points > 30
    )
);

Query to select the suppliers who were paid via "Check" and supplied more than 100 units of products:

SELECT *
FROM SUPPLIER
WHERE Payment_Mode = 'Check'
AND Supplier_ID IN (
    SELECT Supplier_ID
    FROM SUPPLIES
    WHERE Supplied_units > 10
);

















