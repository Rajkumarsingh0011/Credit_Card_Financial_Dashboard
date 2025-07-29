# Credit_Card_Financial_Dashboard
Credit Card Transaction and Customer Dashboard using Power BI and Mysql.

# Project Objective
To develope a comprehensive credit card weekly dashboard that provides real-time insights into key performance metrics and trends, monitor and analyze credit card operations effectively 
# DAX Queries
  AgeGroup = SWITCH(
    TRUE(),
     'creditcarddb customer_detail'[Customer_Age] < 30, "20-30",
     'creditcarddb customer_detail'[Customer_Age] >= 30 && 'creditcarddb customer_detail'[Customer_Age] < 40, "30-40",
     'creditcarddb customer_detail'[Customer_Age] >= 40 && 'creditcarddb customer_detail'[Customer_Age] < 50, "40-50",
     'creditcarddb customer_detail'[Customer_Age] >= 50 && 'creditcarddb customer_detail'[Customer_Age] < 60, "50-60",
     'creditcarddb customer_detail'[Customer_Age] >= 60, "60+",
     "unknown"
    )
