create database creditcarddb;
use creditcarddb;
show tables;
CREATE TABLE creditcard_detail (
  Client_Num INT,
  Card_Category VARCHAR(20),
  Annual_Fees INT,
  Activation_30_Days INT,
  Customer_Acq_Cost INT,
  Week_Start_Date DATE,
  Week_Num VARCHAR(20),
  Qtr VARCHAR(10),
  current_year INT,
  Credit_Limit DECIMAL(10,2),
  Total_Revolving_Bal INT, 
  Total_Trans_Amt INT,
  Total_Trans_Ct INT,
  Avg_Utilization_Ratio DECIMAL(10,3),
  Use_Chip VARCHAR(10),
  Exp_Type VARCHAR(50),
  Interest_Earned DECIMAL(10,3),
  Delinquent_Acc VARCHAR(5)
) ;

CREATE TABLE customer_detail (
  Client_Num INT,
  Customer_Age INT,
  Gender VARCHAR(5),
  Dependent_Count INT,
  Education_Level VARCHAR(50),
  Marital_Status VARCHAR(20),
  State_cd VARCHAR(50),
  Zipcode VARCHAR(20),
  Car_Owner VARCHAR(5),
  House_Owner VARCHAR(5),
  Personal_loan VARCHAR(5), 
  Contact VARCHAR(5),
  Customer_Job VARCHAR(50),
  Income INT,
  Cust_Satisfaction_Score INT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_card.csv'
INTO TABLE creditcard_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customer.csv'
INTO TABLE customer_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

#adding dynamic extra data in the dashboard

select * from creditcard_detail;
select * from customer_detail;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cc_add.csv'
INTO TABLE creditcard_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cust_add.csv'
INTO TABLE customer_detail
FIELDS TERMINATED BY ','
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

DELETE FROM creditcard_detail
WHERE Week_Start_Date = '2023-12-31';