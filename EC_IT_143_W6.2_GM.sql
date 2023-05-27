/*****************************************************************************************************************
NAME:    Adventureworks
PURPOSE: Adventureworks create Question and Answer

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0    05/27/2023   GORDON M. MBONG       1. This script is built for EC IT143


RUNTIME: 
Xs

NOTES: 
Built script for WK6.2 - Adventureworks: Create Questions & Answers...
 
******************************************************************************************************************/

-- Q1: What are the first 200 CardType? (Author: Eke Udowong)
-- A1: ?

SELECT TOP (200) [CreditCardID]
      ,[CardType]
      ,[CardNumber]
      ,[ExpMonth]
      ,[ExpYear]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[CreditCard]

-- Q2: What is the average Standard Cost of a product which has a ProductID of  "707"? (Author: Enzama Norbert)
-- A2: ?

SELECT AVG(StandardCost) AS AverageStandardCost
FROM Production.Product
WHERE ProductID = 707;


-- Q3: In order to continue with a marketing research about Sales Reason. Could you create a table that contains 
--     Sales Reason together with CustomerID? (Author: Jonathan Ricardo)
-- A3: ?

CREATE TABLE SalesReasons (
    CustomerID INT NOT NULL,
    SalesReason VARCHAR(255) NOT NULL
);


-- Q4: Which customers from California made purchases in the last month, and what products did they buy? 
--     Please provide details from the "Sales.Customer" and "Sales.SalesOrderDetail" tables in AdventureWorks. (Author: Benjamin Sarpong)
-- A4: ?

SELECT
    Reference.CustomerID,
    Reference.AccountNumber,
    Notary.ProductID,
    Notary.LineTotal,
    Notary.OrderQty
FROM AdventureWorks2019.Sales.Customer AS Reference
INNER JOIN AdventureWorks2019.Sales.SalesOrderDetail AS Notary
ON Reference.CustomerID = Notary.SalesOrderDetailID
WHERE Notary.ModifiedDate >= '2011-06-25';


-- Q5:  Can you create a table list in AdventureWorks that contains a column with one of these names: BusinessEntityID
--      or PersonType? (Author: Christhian Pacheco)
-- A5: ?

CREATE TABLE Persons (
    PersonID int,
    FirstName varchar(20),
    SurName varchar(20),
    City varchar(50),
	StreetAddress varchar(75),
	PersonType varchar(50)
	);

/* Q6: In early 2021, immediately after the covid, the company made a significant increase in the prices of goods and services
       which profited us for a season and later in the last quarter of the year, almost putting us out of business. We again 
       did some price increase on our goods and services four months ago. Please check the impact of our price increase on our 
       sales revenue in the last three months. We need to pay a very close watch on it this time around. (Author: Myself)*/
-- A6: ?

SELECT
    SUM(OrderQty * UnitPrice) AS total_revenue_before_increase,
    SUM(OrderQty * (UnitPrice + 0.1 * UnitPrice)) AS total_revenue_after_increase,
    (SUM(OrderQty * (UnitPrice + 0.1 * UnitPrice)) - SUM(OrderQty * UnitPrice)) AS revenue_increase
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
WHERE ModifiedDate >= '2011-04-05'
AND ModifiedDate < '2011-07-05';

-- Q7: I need to gather information from the sales tables. Could you provide a way to see all the tables that begin with the 
--     schema name ‘Sales’? (Author: Dylan Swehosky)
-- A7: ?
SELECT *
  FROM [AdventureWorks2019].[Sales].[CountryRegionCurrency]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[CreditCard]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[Currency]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[CurrencyRate]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[Customer]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[PersonCreditCard]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeaderSalesReason]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesPerson]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesPersonQuotaHistory]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesReason]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesTaxRate]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesTerritory]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesTerritoryHistory]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[ShoppingCartItem]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SpecialOffer]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[SpecialOfferProduct]
  SELECT *
  FROM [AdventureWorks2019].[Sales].[Store];

-- Q8: Can you look up the Purchasing.PurchaseOrderDetail table using highest Linetotal for the top 100 orders with productID '910'?
--     (Author: Myself)
-- A8: ?

SELECT TOP (100)*
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]
  WHERE ProductID = '910'
  ORDER BY LineTotal DESC;



SELECT GETDATE() AS my_date;