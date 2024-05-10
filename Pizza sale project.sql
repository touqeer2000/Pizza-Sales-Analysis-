create database ccdb; 
use ccdb; 
CREATE TABLE cc_detail (
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
);

create table cust_detail (
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
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
    );
    

select* from cust_detail;


select * from cc_detail;


LOAD DATA INFILE 'E:/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



select * from cc_detail;

drop table cust_detail ; 

CREATE TABLE cc_detail (
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
);
create table cust_detail (
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
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
    );
    
    LOAD DATA LOCAL INFILE 'E:/credit_card.csv' 
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (`Client_Num`,`Card_Category`,`Annual_Fees`,`Activation_30_Days`,`Customer_Acq_Cost`,`Week_Start_Date`,`Week_Num`, `Qtr`, `current_year `, `Credit_Limit`, `Total_Revolving_Bal`, `Total_Trans_Amt`, `Total_Trans_Ct`, `Avg_Utilization_Ratio`, `Use_Chip`, `Exp_Type`, `Interest_Earned`, `Delinquent_Acc`); 

select * from credit_card;

Create database	pizzadb; 
use pizzadb; 




  
select sum(total_price) as Total_Revenue from pizza_sales;     
select sum(total_price)/ count(distinct order_id) as Average_Oder_Value from pizza_sales  ; 

select sum(quantity) as Total_Pizza_Sold from pizza_sales;

select count(distinct order_id) as Total_Orders from pizza_sales  ; 
select* from pizza_sales; 

select sum(quantity) / count(distinct order_id) as Average_Pizza_Order from pizza_sales;
select* from pizza_sales;

select datename(DW, order_date) as order_day, count(distinct order_id) as Total_orders 
from pizza_sales
group by datename(DW, order_date); 

select sum(total_price) as Revenue from pizza_sales; 



select pizza_category, sum(total_price)  ,sum(total_price) *100 / (select sum(total_price) from pizza_sales)  as PCT_category_sales
from pizza_sales
where month(order_date) =2 
group by pizza_category;

select* from pizza_sales;

select pizza_name, sum(total_price)  as Total_Revenue
from pizza_sales 
group by pizza_name
order by Total_Revenue desc ; 