with t1 as (
select  customer_dim.Customer_ID,
Employee_ID, Street_ID, Product_ID, 
Order_Date, Order_ID, Order_Type, 
Delivery_Date, Quantity, Total_Retail_Proce, 
 Costprice_Per_Unit, Discount,
 Customer_Country,Customer_Group, 
Customer_Type, Customer_Gender,
Customer_Age_Group,Customer_Age,
Customer_Name, Customer_Firstname,
Customer_Lastname, Customer_Birth_Date
from orion.customer_dim left join orion.order_fact on customer_dim.Customer_ID = order_fact.Customer_ID 
WHERE Customer_Group = 'Orion Club Gold members')
select distinct Customer_ID, Customer_Group,Customer_Name, Product_Line from t1 inner join orion.product_dim on t1.product_ID = product_dim.product_ID where Product_line like 'Clothes%'
order by Customer_Name asc