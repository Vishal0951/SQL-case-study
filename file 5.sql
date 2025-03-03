  

-- 1. Find the customer who generated the highest total revenue.  
select c.CustomerID ,c.CustomerName,sum(s.Revenue) as  total_revenue 
from sales s 
join customers c 
on c.CustomerID= s.CustomerID 
group by c.CustomerID,c.CustomerName
having  total_revenue  = (select sum(s.Revenue) as total_revenue from sales s group by s.CustomerID order by sum(s.
Revenue) desc limit 1 );


-- 2. List all products that have been sold more than once. 


SELECT DISTINCT ProductName
from products p
join  Sales s 
on p.ProductID = s.ProductID 
WHERE ProductName=(
    SELECT ProductName
    FROM Sales
    GROUP BY ProductName
    HAVING COUNT(*) > 1
);

--  3. . Find the sale ID with the maximum revenue.  .
select SaleID,Revenue  from sales 
where Revenue = (select max(Revenue) from  sales);

-- 4. Identify customers who have purchased products from the Furniture category.  


SELECT DISTINCT c.CustomerID, c.CustomerName
FROM Customers c
JOIN sales s 
 ON c.CustomerID = s. CustomerID
JOIN Products p 
ON s.ProductID = p.ProductID
WHERE p.Category = 'Furniture';

--  5. . List all customers who have not made any purchase. 
select CustomerName,CustomerID from customers c 
where c .CustomerID not in (select  s.CustomerID from sales s join customers  c on c.CustomerID= s.CustomerID )
group by CustomerID;

-- 6. Retrieve the product name of the most sold product. 
select p.ProductName, sum(Quantity) as total_quantity 
from sales  s  
join products p 
on p. ProductID = s.ProductID 
where p.ProductID = (select s.ProductID from sales s group by s.ProductID order by sum(s.Quantity) desc limit 1)
group by p.ProductName;


-- 7.  Find the customer with the highest total quantity purchased. 
select CustomerName,sum(Quantity) as Total_quantity from sales  s 
join customers c 
on s.CustomerID = c.CustomerID 
where c.CustomerID =(select s.CustomerID from sales s group by s.CustomerID order by sum(Quantity) desc limit 1)
group by c.CustomerName;


-- 8 .  Retrieve the details of the first sale made. 
select * from sales s
where s.SaleID = (select s.SaleID from sales s order by s.SaleDate  limit 1);

-- 9.  Identify customers who purchased Water Bottle after '2024-01-06'
select c. CustomerID ,c.CustomerName from customers c 
join sales s 
on c.CustomerID= s.CustomerID 
join products p 
on p.ProductID = s.ProductID 
where p.ProductName = (select p. ProductName from products p where p.ProductName="Water Bottle" and SaleDate >'2024-01-06');

-- 10 . List products that have generated less than 500 in total revenue. 
select p.ProductName ,sum(s.Revenue) as total_revenue from sales s
join products p 
on p.ProductID = s.ProductID 
where p.ProductID in (select s.ProductID from sales s where Revenue <500) 
group by ProductName;