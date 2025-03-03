-- 51.Retrieve customer names in uppercase. 
select upper(CustomerName) as upper_case_name from customers;

-- 52. Retrieve product names in lowercase.
select lower(ProductName) from products;

-- 53 .Find the length of each customer name. 
select length(CustomerName) as Length_customer_name from customers;


-- 54. Extract the first three characters of all product names. 
select substr(ProductName,1,3) as first_three_character 
from products;

-- 55. Concatenate CustomerName and Region with a hyphen. 
select concat(CustomerName," - ",Region) as concat_both from customers;

-- 56. Replace "Desk Chair" with "Office Chair" in product names
select replace(ProductName,"Desk Chair","Office Chair") as ProductName from products;


-- 57. Find customers whose names start with 'A'. 
select CustomerName from customers 
where CustomerName like "A%"; 

-- 58.Retrieve product names that contain the word 'Bottle'. 
SELECT ProductName 
FROM products
WHERE ProductName LIKE '%Bottle% ';

-- 59.  Find the total number of characters in each product name.
select ProductName,length(ProductName) as Total_length from products;

-- 60. Add "@domain.com" to customer names to simulate email IDs. 
select lower(concat(CustomerName,"","@domain.com")) as EmailID from customers;

