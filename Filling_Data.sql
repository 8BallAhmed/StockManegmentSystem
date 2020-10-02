/* Each block is a warehouse, which has a Supervisor and a Finance Department */


/* WAREHOUSE 1, TABLES: WAREHOUSE <--> FINANCE DEPARTMENT, EMPLOYEEE <--> EMPLOYEE PHONE */
insert into Warehouse values(500,1,null);
insert into FinanceDept values(1,297000,315750);
insert into Employee values(1845361,'Ahmed','Mansour','AlOsaimi',1,'Jeddah','AOsaimi@gmail.com','M',18500,1,1,1);
insert into EmployeePhone values(0519237192, 1);
insert into Dependent values(0562312137,'Abdulrahman', 'Mansour', 'AlOsaimi', 1);
UPDATE Warehouse set ManagerID = 1 where WarehouseID = 1;
insert into Employee values(3623634,'Khalid','sulat','Alaokadi',2,'Jeddah','KAlokadi@gmail.com','M',7500,1,1,1);
insert into EmployeePhone values(0524199172,2);
insert into Employee values(1942731,'Mohammed','Abdullah','Abu_Zunadah',3,'Jeddah','Abuz@gmail.com','M',7500,1,1,1);
insert into EmployeePhone values(0571223199, 3);
insert into Employee values(3623334,'Ali','Mohammed','Mehdar',4,'Jeddah','MehdarAli@gmail.com','M',6500,1,1,1);
insert into EmployeePhone values(0532216142, 4);
insert into Employee values(6718234,'Bandar','Saud','AlHarthi',5,'Jeddah','HarthiSaud88@gmail.com','M',4500,1,1,1);
insert into EmployeePhone values(0599154718, 5);
insert into Employee values(7198542,'Khalid','Mohammed','AlGhamdi',6,'Jeddah','KGhamdi@gmail.com','M',9500,1,1,1);
insert into EmployeePhone values(0539115243, 6);
insert into FinancedeptBudgetsWarehouse values(1, 1);


/* WAREHOUSE 2, TABLES: WAREHOUSE <--> FINANCE DEPARTMENT, EMPLOYEEE <--> EMPLOYEE PHONE */
insert into Warehouse values(1500,2,null);
insert into FinanceDept values(2,357000,422800);
insert into Employee values(1796231,'Ahmed','Saud','AlHarbi',7,'Riyadh','AHarbi@gmail.com','M',23500,7,2,2);
insert into EmployeePhone values(0519283192, 7);
insert into Dependent values(0532512490,'Saeed', 'Mastour', 'AlHarbi', 7);
UPDATE Warehouse set ManagerID = 7 where WarehouseID = 1;
insert into Employee values(3628534,'Saud','Mohammed','AlQahtani',8,'Riyadh','KAlokadi@gmail.com','M',11500,7,2,2);
insert into EmployeePhone values(0524631124, 8);
insert into Employee values(1262751,'Mohammed','Abdullah','Ba_Dafar',9,'Riyadh','BaDafarM@gmail.com','M',9500,7,2,2);
insert into EmployeePhone values(0546667121, 9);
insert into Employee values(7103654,'Yazeed','Bandar','AlGhamdi',10,'Riyadh','YazGha@gmail.com','M',9000,7,2,2);
insert into EmployeePhone values(0521113147, 10);
insert into Employee values(7135111,'Yazan','Saud','AlMohammed',11,'Riyadh','YazanSaud922@gmail.com','M',7250,7,2,2);
insert into EmployeePhone values(0599173216, 11);
insert into Employee values(2187235,'Khalid','Musbah','AlMazrou',12,'Riyadh','MazKhal@gmail.com','M',6000,7,2,2);
insert into EmployeePhone values(0562238667, 12);
insert into FinancedeptBudgetsWarehouse values(2, 2);

/* PRODUCT SUPPLIER, TABLES: PRODUCT SUPPLIER <--> PRODUCT SUPPLIER PHONES */
/* Adding productSupplier and his phones */

insert into ProductSupplier values(04, 'H.W Levitt Logistics', 'Financial District, Riyadh, Bldg No.153, 9th Floor.');
insert into ProductSuppierPhones values(04, 012718546);
insert into ProductSuppierPhones values(04, 013922510);

insert into ProductSupplier values(13, 'Emmet-Burner Inc.', 'Al-Hamra Beach, Jeddah, Prince Muteb Street, Bldg No.23, 2nd Floor, Office No.3');
insert into ProductSuppierPhones values(13, 012555219);
insert into ProductSuppierPhones values(13, 014516987);


/* Adding products */
insert into Product values(1102, 'Nespresso Coffee Capsules (10 CAPS)', 28, 1);
insert into Product values(1007, 'Radwa Chicken (450G)', 35, 1);
insert into Product values(1109, 'Cesar Apple Juice (1 BOX)', 48, 1);
insert into Product values(1103, 'Al-Marai Halloumi Cheese (1 PACKET)', 12, 1);
insert into Product values(1105, 'Packaged Oranges (1 KG)', 33, 1);
insert into Product values(1107, 'Coconut Milk (1 LITER BTL)', 28, 1);
insert into Product values(1213, 'Carrots (1 KG)', 12, 1);
insert into Product values(1401, 'Rice (10KG)', 85, 1);
insert into Product values(1112, 'Tomato Sauce (150 ML)', 7, 1);
insert into Product values(107, 'Playstation 4 Console', 1200, 2);
insert into Product values(192, 'iPhone X (128 GB, NAVY)', 3900, 2);
insert into Product values(111, 'Macbook Air (intelcore i7, RADEON GPU, 16 GB RAM', 4900, 2);
insert into Product values(176, 'Apple Airpods Pro', 950, 2);


/* PRODUCT <--> SUPPLIER SUPPLIES <--> PRODUCT PUT IN ORDER */
insert into SupplierSupplies values(1102, 13);
insert into SupplierSupplies values(1007, 13);
insert into SupplierSupplies values(1109, 13);
insert into SupplierSupplies values(1103, 13);
insert into SupplierSupplies values(1105, 13);
insert into SupplierSupplies values(1107, 13);
insert into SupplierSupplies values(1213, 13);
insert into SupplierSupplies  values(1401, 13);
insert into SupplierSupplies  values(1112, 13);
insert into SupplierSupplies  values(107, 04);
insert into SupplierSupplies  values(192, 04);
insert into SupplierSupplies  values(111, 04);
insert into SupplierSupplies  values(176, 04);

/* CUSTOMER POOL, TABLES: CUSTOMER <--> ORDER */
insert into Customer values(0526713335, 'Ahmed', 'Mishaal', 'Al-Qahtani','Dammam');
insert into Customer values(0592731996, 'Mohsen', 'Ali', 'Kheder','Dammam');
insert into Customer values(0573337124, 'Yasir', 'Jameel', 'Katib','Riyadh');
insert into Customer values(0527311980, 'Jameel', 'Mansour', 'Jomhoor','Khobar');
insert into Customer values(0545362196, 'Saeed', 'Nawaf', 'AlBraiki','Jeddah');
insert into Customer values(0512365190, 'Zaid', 'Bandar', 'Jawharji', 'Jeddah');
insert into Customer values(0524190239, 'Naif', 'Saud', 'AlJuhani', 'Jeddah');
insert into Customer values(0562194231, 'Saud', 'Mohammed', 'AlZaedi', 'Makkah');


/* Making order and adding Products to the order */
insert into ORD values(317, '4-2-2020', 0524190239);
insert into ProductinOrder values(317, 192, 1);
insert into ORD values(137, '7-2-2020',0562194231);
insert into ProductinOrder values(137, 107, 1);
insert into ProductinOrder values(137, 192, 1);
insert into ProductinOrder values(137, 111, 1);
insert into ProductinOrder values(137, 176, 1);
insert into ORD values(477, '26-2-2020',0512365190);
insert into ProductinOrder values(477, 1103, 3);
insert into ProductinOrder values(477, 1102, 1);
insert into ProductinOrder values(477, 1107, 4);


/* DISCOUNT CARDS, TABLES: DISCOUNT CARD <--> CUSTOMER DISCOUNT CARD */
insert into DiscountCard values(326754, 50);
insert into CustomerDiscountCard values (0562194231, 326754);

insert into DiscountCard values(865246, 75);
insert into CustomerDiscountCard values (0512365190, 865246);

/* PAYMENTS, TABLES: PAYMENT <--> CUSTOMER */
insert into Payment values(0512365190, 0, '**THANK YOU FOR PURCHASING**', 'CARD', '25-2-2020');
insert into Payment values(0524190239, 1, '**THANK YOU FOR PURCHASING**', 'CASH', '16-3-2020');
insert into Payment values(0562194231, 2, '**THANK YOU FOR PURCHASING**', 'CARD', '24-3-2020');
