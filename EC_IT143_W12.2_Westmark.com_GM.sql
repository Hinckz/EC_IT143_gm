/*****************************************************************************************************************
NAME:    Analysis on Westmark dataset
PURPOSE: To provide accurate reports of stored information

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     06/23/2023   GMBONG       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
These scripts are written in order to give accurate responses to genuine questions asked by Westmark stake holders
for company business and growth sakes as well as record keeping.
 
******************************************************************************************************************/

/* Q1: "From the west ensign datasets available, the stakeholders are interested in the most recent balance date 
associated with unique keys representing essential products. Please check for and retrieve unique keys and their 
latest balance dates.     Author: Gordon Mbong
-- A1: The script below produces the needed information as asked;*/

SELECT WestEnsignBalanceTable.Ukey, WestEnsignBalanceTable.BalanceDate, WestEnsignHistoryTable.Product
FROM WestEnsignBalanceTable
JOIN WestEnsignHistoryTable ON WestEnsignBalanceTable.Ukey = WestEnsignHistoryTable.Ukey
WHERE WestEnsignBalanceTable.SavingsBalance = WestEnsignHistoryTable.NewBalance;


/*--Q2: Every product has a unique key denoted as the ‘Ukey’, sometimes used by the board in tracking various aspects in 
relation to the government policies surrounding each product. Can you check for the unique keys and the average 
amount for each unique key, only considering rows where the Product is at least 5, for 5 is the baseline of our focus.  
Author: Gordon Mbong */
-- A2: The script below produces the needed information as asked;

SELECT WestEnsignBalanceTable.Ukey, AVG(WestEnsignHistoryTable.Amount + WestEnsignHistoryTable.NewBalance) AS AverageAmount
FROM WestEnsignBalanceTable
JOIN WestEnsignHistoryTable ON WestEnsignHistoryTable.Ukey = WestEnsignHistoryTable.Ukey
WHERE WestEnsignHistoryTable.Product >= '5'
GROUP BY WestEnsignBalanceTable.Ukey;


/* Q3: I am currently analyzing the financial transaction from Westmark and I need to understand more about these 
transactions. I need to see the ukey, product and amount and I also need to see the beginning saving balance and
checking balance. Can you also provide a list that contains all this information? I want to see the outcome with that order.
Author: Judith Rodriquez */
-- A3: The script below produces the needed information as asked;

SELECT WestEnsignBalanceTable.Ukey, WestEnsignHistoryTable.Product, WestEnsignHistoryTable.Amount, 
WestEnsignBalanceTable.SavingsBalance, WestEnsignBalanceTable.CheckingBalance
FROM WestEnsignBalanceTable
JOIN WestEnsignHistoryTable ON WestEnsignBalanceTable.Ukey = WestEnsignHistoryTable.Ukey;


/* Q4: An interested investor is analysing the reliability of owning unique keys as an investor in our company, 
In order to help him do that, Could you make a list of 5 Ukeys with the highest Savingsbalance and with the highest
ammounts?  Author: Jonathan Villegas */
-- A4: The script below produces the needed information as asked;

SELECT TOP 5 WestEnsignBalanceTable.Ukey, WestEnsignBalanceTable.SavingsBalance, WestEnsignHistoryTable.Amount
FROM WestEnsignBalanceTable
JOIN WestEnsignHistoryTable ON WestEnsignBalanceTable.Ukey = WestEnsignHistoryTable.Ukey
ORDER BY WestEnsignBalanceTable.SavingsBalance DESC, WestEnsignHistoryTable.Amount DESC;