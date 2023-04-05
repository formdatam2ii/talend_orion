CREATE TABLE Customer_Dim(
	Customer_ID int PRIMARY KEY AUTO_INCREMENT  NOT NULL,
	Customer_Country varchar(2) NULL,
	Customer_Group varchar(40) NULL,
	Customer_Type varchar(40) NULL,
	Customer_Gender varchar(1) NULL,
	Customer_Age_Group varchar(12) NULL,
	Customer_Age smallint NULL,
	Customer_Name varchar(40) NULL,
	Customer_Firstname varchar(20) NULL,
	Customer_Lastname varchar(30) NULL,
	Customer_Birth_Date date NULL
) ;

CREATE TABLE Organization_Dim(
	Employee_ID int PRIMARY KEY AUTO_INCREMENT  NOT NULL,
	Employee_Country varchar(2) NULL,
	Company varchar(30) NULL,
	Department varchar(40) NULL,
	Section varchar(40) NULL,
	Org_Group varchar(40) NULL,
	Job_title varchar(25) NULL,
	Employee_Name varchar(40) NULL,
	Employee_Gender varchar(1) NULL,
	Salary decimal(13,0) NULL,
	Employee_Birth_Date date NULL,
	Employee_Hire_Date date NULL,
	Employee_Term_Date date NULL
) ;

CREATE TABLE Geography_Dim (
   Street_ID BIGINT PRIMARY KEY,
   Continent VARCHAR(30),
   Country CHARACTER(2),
   State_Code CHARACTER(2),
   State VARCHAR(25),
   Region VARCHAR(30),
   Province VARCHAR(30),
   County VARCHAR(60),
   City VARCHAR(30),
   Postal_Code CHARACTER(10),
   Street_Name VARCHAR(45)
); 

CREATE TABLE Product_Dim(
	Product_ID bigint PRIMARY KEY,
	Product_Line varchar(20) NULL,
	Product_Category varchar(25) NULL,
	Product_Group varchar(25) NULL,
	Product_Name varchar(45) NULL,
	Supplier_Country varchar(2) NULL,
	Supplier_Name varchar (30) NULL,
	Supplier_ID int NULL
);

CREATE TABLE Time_Dim (
   Date_ID DATE PRIMARY KEY,
   Year_ID CHARACTER(4),
   Quarter CHARACTER(6),
   Month_Name VARCHAR(20),
   Weekday_Name VARCHAR(20),
   Month_Num SMALLINT,
   Weekday_NUM SMALLINT
);

CREATE TABLE Order_Fact (
   Customer_ID INTEGER,
   Employee_ID INTEGER,
   Street_ID BIGINT,
   Product_ID BIGINT,
   Order_Date DATE,
   Order_ID INTEGER,
   Order_Type SMALLINT,
   Delivery_Date DATE,
   Quantity SMALLINT,
   Total_Retail_Proce DECIMAL(13,2),
   Costprice_Per_Unit DECIMAL(13,2),
   Discount DECIMAL(5,2),
   PRIMARY KEY (Customer_ID,Employee_ID,Street_ID,Product_ID,Order_Date,Order_ID),
   CONSTRAINT fk_cust_id FOREIGN KEY (Customer_ID) REFERENCES Customer_Dim (Customer_ID),
   CONSTRAINT fk_org_id FOREIGN KEY (Employee_ID) REFERENCES Organization_Dim (Employee_ID),
   CONSTRAINT fk_geo_id FOREIGN KEY (Street_ID) REFERENCES Geography_Dim (Street_ID),
   CONSTRAINT fk_prod_id FOREIGN KEY (Product_ID) REFERENCES Product_Dim (Product_ID)
);