use Superstore
select * from superstore

---  calculate overall performance :
select 
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit,
round(sum(Profit)/sum(Sales) * 100,2) as Profit_Margin_Percent
from superstore;
------- Sales and Profit Trend per Year :
select 
Year(Order_Date) as Year,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit
from Superstore
group by year(Order_Date)
order by Year;


-------- Top 10 best-selling products 
select top 10 
Product_Name,
sum(Sales) as Total_Sales
from Superstore
group by Product_Name
Order by Total_Sales desc;

-------- Top 10 most porfitable products
select top 10 
Product_Name,
sum(Profit) as Total_Profit
from Superstore
group by Product_Name
order by Total_Profit desc;

-------- Top 10 Products with the biggest losses  :
select top 10
Product_Name,
sum(Profit) as Total_Profit
from Superstore
group by Product_Name
having sum(Profit) < 0
order by Total_Profit asc;

-------- Sales and Profit by Category :
select 
Category,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit,
round(sum(Profit)/sum(Sales) * 100.0,2) as Profit_Margin
from Superstore
group by Category
order by Total_Sales desc;

---------- Sales and Profit by sub_category  :
select 
Sub_Category,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit,
round(sum(Profit) / sum(Sales) * 100.0 , 2) as Profit_Margin 
from Superstore
group by Sub_Category
order by Total_Sales desc;

--------- Sales and Profit by Customer Segment  :
select 
Segment,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit,
round(sum(Profit)/sum(Sales) * 100.0 ,2) as Profit_Margin 
from Superstore
group by Segment
order by Total_Sales desc;

---------- Top 10 most valuable customers by sales  :
select top 10 
Customer_Name,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit
from Superstore
group by Customer_Name
order by Total_Sales desc;

--------- Top 10 most profitable customers  :
select top 10 
Customer_Name,
sum(Profit) as Total_Profit
from Superstore
group by Customer_Name
order by Total_Profit desc;

-------- Sales and Profit by Region  :
select 
Region,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit,
round(sum(Profit)/sum(Sales) * 100.0 ,2) as Profit_Margin 
from Superstore
group by Region 
order by Total_Sales desc;

--------- Sales and Profit by State  :
select top 10 
State,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit,
round(sum(Profit)/sum(Sales) * 100.0 ,2) as Profit_Margin 
from Superstore
group by State
order by Total_Sales desc;

--------- Average Shipping Time 
select 
avg(datediff(day,Order_Date,Ship_Date)) as Avg_Shipping_Days 
from Superstore;

---------- Sales and Profit by ship mode  :
select 
Ship_Mode,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit,
round(sum(Profit)/sum(Sales) * 100.0 ,2) as Profit_Margin 
from Superstore
group by Ship_Mode
order by Total_Sales desc;
