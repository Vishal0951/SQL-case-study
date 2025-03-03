
use 100q;

CREATE TABLE Customers ( 
    CustomerID VARCHAR(10) PRIMARY KEY, 
    CustomerName VARCHAR(50) NOT NULL, 
    Region VARCHAR(20) NOT NULL 
); 

CREATE TABLE Sales ( 
SaleID VARCHAR(10) PRIMARY KEY, 
CustomerID VARCHAR(10) NOT NULL, 
ProductID VARCHAR(10) NOT NULL, 
Quantity INT NOT NULL, 
SaleDate DATE NOT NULL, 
Revenue DECIMAL(10, 2) NOT NULL, 
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) 
); 


CREATE TABLE Products ( 
ProductID VARCHAR(10) PRIMARY KEY, 
ProductName VARCHAR(50) NOT NULL, 
Category VARCHAR(30) NOT NULL 
);   

INSERT INTO Customers (CustomerID, CustomerName, Region) VALUES 
('C001', 'Alice Johnson', 'North'), 
('C002', 'Bob Smith', 'East'), 
('C003', 'Charlie Brown', 'South'), 
('C004', 'Daisy Miller', 'West'), 
('C005', 'Eva Green', 'North');

INSERT INTO Products (ProductID, ProductName, Category) VALUES 
('P001', 'Laptop', 'Electronics'), 
('P002', 'Smartphone', 'Electronics'), 
('P003', 'Desk Chair', 'Furniture'), 
('P004', 'Water Bottle', 'Household Items'), 
('P005', 'Notebook', 'Stationery'); 

INSERT INTO Sales (SaleID, CustomerID, ProductID, Quantity, SaleDate, Revenue) VALUES 
('S001', 'C001', 'P001', 2, '2024-01-01', 2000), 
('S002', 'C002', 'P003', 1, '2024-01-02', 150), 
('S003', 'C003', 'P002', 1, '2024-01-03', 800), 
('S004', 'C004', 'P004', 3, '2024-01-04', 60), 
('S005', 'C005', 'P005', 5, '2024-01-05', 50), 
('S006', 'C001', 'P002', 1, '2024-01-06', 800), 
('S007', 'C003', 'P001', 1, '2024-01-07', 1000), 
('S008', 'C002', 'P004', 2, '2024-01-08', 40), 
('S009', 'C005', 'P003', 2, '2024-01-09', 300), 
('S010', 'C004', 'P005', 3, '2024-01-10', 30);