/*
Project: Ethereum Network Activity Dashboard
Query: Daily Transaction Volume Analysis (Last 30 Days)
Author: Bongani Nkosi
Platform: Dune Analytics
Dataset: gas_evm.fees

Description:
This query calculates the number of Ethereum transactions processed
each day over the last 30 days using Dune's curated gas_evm.fees dataset.
*/

SELECT
    block_date AS "Date",
    COUNT(*) AS "Daily Transactions"
FROM gas_evm.fees
WHERE blockchain = 'ethereum'
  AND block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
