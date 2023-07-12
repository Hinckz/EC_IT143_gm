SELECT *
  FROM Production.WorkOrder
  WHERE StockedQty >= 7


/*
Missing Index Details from SQLQuery12.sql - HINCKZ.AdventureWorks2019 (HINCKZ\Hinckz (51))
The Query Processor estimates that implementing the following index could improve the query cost by 69.0071%.
*/

USE [AdventureWorks2019]
GO
CREATE NONCLUSTERED INDEX WorkOrder_StockQty_Index
ON [Production].[WorkOrder] ([StockedQty])
INCLUDE ([ProductID],[OrderQty],[ScrappedQty],[StartDate],[EndDate],[DueDate],[ScrapReasonID],[ModifiedDate])
GO