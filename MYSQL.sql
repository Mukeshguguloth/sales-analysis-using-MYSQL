CREATE database company;
use company;
SELECT * FROM sales
Where Ship_Mode = 'Economy' AND Total_Amount > 25000;
SELECT * FROM sales
WHERE category = 'Technology' AND country = 'Ireland' AND Order_Date > '2020-01-01';
SELECT * from sales
order by Unit_Profit desc
limit 10;
SELECT Order_ID, Customer_Name from sales
where Customer_Name like 'J%N';
select Product_Name from sales
where Product_Name like '%Acco%';
select  City, sum(Total_Amount) as S from sales
group by City
order by S desc
limit 10;
select Customer_Name, Total_Amount from sales
order by Total_Amount desc
limit 10,10;
select sum(Total_Amount) as Total_Amount, avg(Unit_cost) as Average_Cost, count(Order_Id) as Total_Orders from sales;
select count(distinct Region) as Unique_Region from sales;
select Customer_Name, count(Order_Id) as Total_Orders
from sales
group by Customer_Name
order by Total_Orders desc;
