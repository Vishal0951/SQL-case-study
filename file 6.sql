-- 41.  Group sales by CustomerID and find the total revenue for each customer.
select distinct CustomerID , sum(Revenue) as total_revenue
 from sales
 group by CustomerID ;
 
 -- 42. Group sales by ProductID and find the average revenue for each product.  
 select distinct ProductID, avg(Revenue) as total_avg_revenue 
 from sales 
 group by ProductID;
 
 -- 43 .  List the total revenue generated for each product category. 
 select Category, sum(Revenue) as Total_revenue 
 from sales s
 join products  p  
 on s. ProductID = p.ProductID 
 group by Category;
 
 -- 44. Find the total quantity sold for each region. 
 select Region, sum(Quantity) from sales s 
 join customers c 
 on c.CustomerID  = c.CustomerID 
 group by Region;
 
 
 -- 45 .  Retrieve the count of sales for each customer. 
  select CustomerName, sum(Quantity) from sales s 
 join customers c 
 on c.CustomerID  = c.CustomerID 
 group by CustomerName;  
 
 -- 46. Group customers by region and count the number of customers in each region.  
 select count(c.CustomerName) ,c. Region as Total_count 
 from customers c 
 group by Region;
 
 
 -- 47. find the total revenue for each sale date. 
 select distinct (SaleDate),Revenue 
 from sales  
 order by SaleDate;
 
 -- 48.  Retrieve the average revenue for each product category. 
 select Category , sum(Revenue) as total_revenue 
 from sales s 
 join products p  
 on p.ProductID = s.ProductID 
 group by Category;
 
 -- 49. Group products by category and calculate the total quantity sold. 
 select Category , sum(Quantity) as total_quantity_sold from sales s 
 join products p 
  on p.ProductID = s.ProductID 
 group by Category;
 
 -- 50. Count the number of sales made by each customer in the South region.
 select c.Region ,count(SaleID) as total_sale_made 
 from sales s 
 join products p 
 on  p.ProductID = s.ProductID
 join customers c 
 on c. CustomerID= s.CustomerID
 where c.Region = "South";
 
 