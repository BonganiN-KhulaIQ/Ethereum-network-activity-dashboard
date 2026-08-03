/*
Project: Ethereum Network Activity Dashboard
Query: Total Gas Fees Paid Analysis (Last 30 Days)
Author: Bongani Nkosi
Platform: Dune Analytics
Dataset: gas_evm.fees

Description:
This query calculates the total gas fees paid on the Ethereum network
for each day over the last 30 days.
*/

SELECT
    block_date AS "Date",
    ROUND(SUM(tx_fee_usd), 2) AS "Total Gas Fees Paid (USD)"
FROM gas_evm.fees
WHERE blockchain = 'ethereum'
    AND block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
