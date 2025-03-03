-- 1 Retrieve all customer details.

select * from customers;

-- 2.  Retrieve all product details. 
select * from products;

-- 3. List all sales records. 

select * from sales ;

-- 4. Find the names of all customers from the North region.
select CustomerName from  customers 
where Region = "North";

-- 5. Retrieve the total revenue generated in each sale. 

select SaleID ,Revenue from sales;

-- 6. Display the sales data sorted by SaleDate
select * from sales  
order by SaleDate;
  
  
   -- 7. Show all sales where the revenue exceeds 500. 
   
   select * from sales 
   where Revenue>500;
   
   -- 8.List the distinct regions from the Customers table.
   select distinct Region from customers;
   
   -- 9. Count the total number of customers. 
   
   select count(CustomerID) as Total_numbers_customers from customers;
   
   
   -- 10.  Retrieve all sales made after '2024-01-05'. 
   
   select * from sales 
   where SaleDate >  '2024-01-05';
   
   
   