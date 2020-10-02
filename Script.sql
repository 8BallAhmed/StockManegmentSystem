/* Droping all tables before running the script again */

purge recyclebin;
drop table Employee cascade constraints;
drop table EmployeePhone cascade constraints;
drop table Dependent cascade constraints;
drop table FinanceDept cascade constraints;
drop table Customer cascade constraints;
drop table DiscountCard cascade constraints;
drop table ORD cascade constraints;
drop table Payment cascade constraints;
drop table ProductSupplier cascade constraints;
drop table ProductSuppierPhones cascade constraints;
drop table Product cascade constraints;
drop table ProductInOrder cascade constraints;
drop table SupplierSupplies cascade constraints;
drop table Warehouse cascade constraints;
drop table CustomerDiscountCard cascade constraints;
drop table FinancedeptBudgetsWarehouse cascade constraints;

/* Creating all tables */

CREATE TABLE Warehouse
(
capacity number(38),
warehouseID number(38),
managerID number(38),
CONSTRAINT warehouse_pk PRIMARY KEY (warehouseID)
);

CREATE TABLE FinanceDept
(
dept_id number(38),
dept_expense number(38),
dept_income number(38),
CONSTRAINT finacne_pk PRIMARY KEY (dept_id)
);

CREATE TABLE Employee
(
emp_ssn number(38) UNIQUE,
emp_Fname varchar2(38) NOT NULL,
emp_Mname varchar2(38),
emp_Lname varchar2(38) NOT NULL,
emp_id number(38),
emp_address varchar2(38),
emp_email varchar2(38),
emp_gender varchar(1),
emp_salary number(38),
emp_supervisorID number(38),
emp_WarehouseID number(38),
emp_FinDeptID number(38),
CONSTRAINT employee_pk PRIMARY KEY(emp_id),
CONSTRAINT emp_supervisor FOREIGN KEY (emp_supervisorID) REFERENCES Employee(emp_id),
CONSTRAINT emp_warehouse FOREIGN KEY (emp_WarehouseID) REFERENCES Warehouse(warehouseID),
CONSTRAINT emp_finDept FOREIGN KEY (emp_FinDeptID) REFERENCES FinanceDept(dept_id)
);
CREATE TABLE EmployeePhone
(
emp_phone number(38) UNIQUE,
emp_id number(38),
CONSTRAINT emp_id FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);

CREATE TABLE Dependent
(
dependent_phone number(38),
dependent_Fname varchar2(38),
dependent_Mname varchar2(38),
dependent_Lname varchar2(38),
emp_id number(38),
CONSTRAINT dependenEmp FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
);


CREATE TABLE FinancedeptBudgetsWarehouse
(
warehouseID number(38),
dept_id number(38),
CONSTRAINT finaceWarehouse FOREIGN KEY (warehouseID) REFERENCES Warehouse(warehouseID),
CONSTRAINT Finacedpt FOREIGN KEY (dept_id) REFERENCES FinanceDept(dept_id)
);

CREATE TABLE Customer
(
customer_phone number(38),
customer_Fname varchar2(38),
customer_Mname varchar2(38),
customer_Lname varchar2(38),
customer_address varchar2(38),
CONSTRAINT customer_pk PRIMARY KEY (customer_phone)
);

CREATE TABLE DiscountCard
(
CardID number(38),
Discountvalue number(38),
CONSTRAINT card_pk PRIMARY KEY (CardID)
);

CREATE TABLE CustomerDiscountCard
(
customer_phone number(38),
CardID number(38),
CONSTRAINT customerDiscount1 FOREIGN KEY (customer_phone) REFERENCES Customer(customer_phone),
CONSTRAINT customerDiscount2 FOREIGN KEY (CardID) REFERENCES DiscountCard(CardID)
);

CREATE TABLE ORD
(
OrderNumber number(38),
orderDate varchar2(38),
customer_phone number(38),
CONSTRAINT ord_pk PRIMARY KEY (OrderNumber),
CONSTRAINT orderCustomer FOREIGN KEY (customer_phone) REFERENCES Customer(customer_phone)
);

CREATE TABLE Payment
(
customer_phone number(38),
PaymentID number(38),
Recipt varchar2(38),
PaymentType varchar2(10),
PaymentDate varchar2(38),
CONSTRAINT payment_pk PRIMARY KEY (PaymentID),
CONSTRAINT paymentCustomer FOREIGN KEY (customer_phone) REFERENCES Customer(customer_phone)
);

CREATE TABLE ProductSupplier
(
SupID number(38),
SupplierName varchar2(38),
Address varchar2(100),
CONSTRAINT productSupplier_pk PRIMARY KEY (SupID)
);


CREATE TABLE ProductSuppierPhones
(
SupID number(38),
Sup_phone number(38) UNIQUE,
CONSTRAINT ProductSuppierPhones FOREIGN KEY (SupID) REFERENCES ProductSupplier(SupID)
);

CREATE TABLE Product
(
ProductID number(38),
Pname varchar2(50),
Price number(38),
WarehouseID number(38),
CONSTRAINT product_pk PRIMARY KEY (ProductID),
CONSTRAINT productWarehouse FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID)
);

CREATE TABLE ProductInOrder
(
OrderNumber number(38),
ProductID number(38),
Quantity number(38),
CONSTRAINT productInOrder PRIMARY KEY (ProductID, OrderNumber),
CONSTRAINT productOrderID FOREIGN KEY (OrderNumber) REFERENCES ORD(OrderNumber),
CONSTRAINT productOrderNum FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE SupplierSupplies
(
ProductID number(38),
SupID number(38),
CONSTRAINT SupplierSuppliespP_ID FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
CONSTRAINT SupplierSuppliespSupID FOREIGN KEY (SupID) REFERENCES ProductSupplier(SupID)
);

ALTER TABLE Warehouse ADD CONSTRAINT WarehouseMngr FOREIGN KEY (managerID) REFERENCES Employee(emp_id);