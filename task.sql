CREATE DATABASE ShopDB;

CREATE TABLE Products(
  ProductID INT AUTO_INCREMENT,
  Name VARCHAR(50),
  Description VARCHAR(50),
  Price INT,
  WarehouseAmount INT,
  PRIMARY KEY (ProductID)
);

CREATE TABLE BonusAccounts (
    EmployeeID INT PRIMARY KEY,
    Balance DECIMAL(10,2)
);

CREATE TABLE Customers(
  CustomersID INT AUTO_INCREMENT,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(50),
  Address VARCHAR(50),
  PRIMARY KEY(CustomersID)
);

CREATE TABLE Orders(
  OrdersID INT AUTO_INCREMENT,
  CustomerID INT,
  FOREIGN KEY(CustomerID) REFERENCES Customers(CustomersID) ON DELETE SET NULL,
  Date Date,
  PRIMARY KEY(OrdersID)
);

CREATE TABLE OrderItems(
  OrderItemID INT AUTO_INCREMENT,
  OrderID INT,
  FOREIGN KEY(OrderID) REFERENCES Orders(OrdersID),
  ProductID INT,
  FOREIGN KEY(ProductID) REFERENCES Products(ProductID),
  PRIMARY KEY(OrderItemID)
);