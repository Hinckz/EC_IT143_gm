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

/* Q1: "From the west ensign datasets available, the stakeholders are interested in the most recent balance date 
associated with unique keys representing essential products. Please check for and retrieve unique keys and their 
latest balance dates.     Author: Gordon Mbong
-- A1: The script below produces the needed information as asked;*/

SELECT WestEnsignBalanceTable.Ukey, WestEnsignBalanceTable.BalanceDate, WestEnsignHistoryTable.Product
FROM WestEnsignBalanceTable
JOIN WestEnsignHistoryTable ON WestEnsignBalanceTable.Ukey = WestEnsignHistoryTable.Ukey
WHERE WestEnsignBalanceTable.SavingsBalance = WestEnsignHistoryTable.NewBalance;
