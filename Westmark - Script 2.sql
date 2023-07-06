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
This script is written in order to give accurate response to genuine questions asked by Westmark stake holders
for company business and growth sakes as well record keeping.
 
******************************************************************************************************************/

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
