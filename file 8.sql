-- Retrieve all sales made in January 2024. 
select * from sales 
where SaleDate between "2024-01-01" and  "2024-01-31";

--  Find the day of the week for each sale date. 
select Saledate, dayname(SaleDate) as Day_name from sales; 

-- Calculate the number of days since each sale. 
select SaleDate,datediff(current_date,SaleDate) as date_since 
from sales;

-- . Retrieve the year and month for each sale date. 
select SaleDate, monthname(Saledate) as Moth_name,year(SaleDate) as year_sales 
from sales;

--  Add 10 days to each sale date.
select SaleDate,adddate(SaleDate,10) as add_date from sales;

-- Find all sales made before today's date. 
select *,date_sub(SaleDate,interval(1) day) from sales;

 -- Retrieve sales made on weekends. 
select *
from sales
where dayname(SaleDate) IN ('Saturday', 'Sunday');

-- Subtract 7 days from each sale date. 
select SaleDate,subdate(SaleDate,7) as sub_date from sales;

-- Find the total revenue generated each month.
SELECT 
    YEAR(SaleDate) AS Year, 
    MONTH(SaleDate) AS Month, 
    SUM(Revenue) AS TotalRevenue
FROM sales
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
ORDER BY Year, Month;


-- 