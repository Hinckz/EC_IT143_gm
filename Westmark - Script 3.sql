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

/* Q3: I am currently analyzing the financial transaction from Westmark and I need to understand more about these 
transactions. I need to see the ukey, product and amount and I also need to see the beginning saving balance and
checking balance. Can you also provide a list that contains all this information? I want to see the outcome with that order.
Author: Judith Rodriquez */
-- A3: The script below produces the needed information as asked;

SELECT WestEnsignBalanceTable.Ukey, WestEnsignHistoryTable.Product, WestEnsignHistoryTable.Amount, 
WestEnsignBalanceTable.SavingsBalance, WestEnsignBalanceTable.CheckingBalance
FROM WestEnsignBalanceTable
JOIN WestEnsignHistoryTable ON WestEnsignBalanceTable.Ukey = WestEnsignHistoryTable.Ukey;


