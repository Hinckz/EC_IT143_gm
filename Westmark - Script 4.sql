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

/* Q4: An interested investor is analysing the reliability of owning unique keys as an investor in our company, 
In order to help him do that, Could you make a list of 5 Ukeys with the highest Savingsbalance and with the highest
ammounts?  Author: Jonathan Villegas */
-- A4: The script below produces the needed information as asked;

SELECT TOP 5 WestEnsignBalanceTable.Ukey, WestEnsignBalanceTable.SavingsBalance, WestEnsignHistoryTable.Amount
FROM WestEnsignBalanceTable
JOIN WestEnsignHistoryTable ON WestEnsignBalanceTable.Ukey = WestEnsignHistoryTable.Ukey
ORDER BY WestEnsignBalanceTable.SavingsBalance DESC, WestEnsignHistoryTable.Amount DESC;