-- 81 List sales where the quantity is greater than 3 and the revenue is less than 500. 
select * from sales 
where Quantity>3 and Revenue<500;

-- 82.  Retrieve customers who belong to the North region or have a total revenue above 1000. 
select CustomerName from customers c 
join sales s 
on c.CustomerID = s.CustomerID 
where Region="North" or Revenue >1000
group by CustomerName;

-- 83  Update the revenue of sales where ProductID is 'P004' to double its current value.
set sql_safe_updates=0; 
update sales set  Revenue = Revenue *2
where ProductID = "P004";
select* from sales; 
rollback;
select * from sales;



-- 84. Delete sales records where revenue is less than 50. 




select * from sales ;
 -- 85  Find all customers whose names are not 'Bob Smith'.
 select distinct CustomerName from customers 
 where CustomerName  not in  ("Bob Smith");
 
 -- 86  Add a condition to calculate the discounted revenue (10% off) for sales above 1000. 
 select 
      Revenue,
	  CASE 
      when Revenue>1000 then Revenue*0.9
	  else Revenue
 end as discounted_revenue
 from sales;
--  Retrieve customers who purchased Laptop and Smartphone.
select  distinct CustomerName from Customers c
join sales s 
on s.CustomerID =c.CustomerID
join products p 
on s.ProductID = p.ProductID 
WHERE ProductName in('Laptop','Smartphone')
GROUP BY CustomerName
HAVING COUNT(DISTINCT ProductName) = 2;

-- 88 List all sales where the sale date is not in January 2024. 
select * from sales 
where SaleDate not in (select SaleDate from sales where SaleDate between "2024-01-01" and "2024-01-31");

-- 89 Update the quantity of all sales for Notebook to 10. 
update sales s 
join products p 
on s.ProductID = p.ProductID 
set Quantity =10
where ProductName in (select ProductName from products  where p. ProductName ="Notebook");
select * from sales;
rollback;
drop table sales ;
select * from sales ;

-- 90 Retrieve customers who have made sales exceeding 3 in quantity. 
select distinct CustomerName from customers c
join sales s 
on c.CustomerID = s.CustomerID 
where s.Quantity > 3;

