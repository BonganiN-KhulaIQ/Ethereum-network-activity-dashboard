/*
Project: Ethereum Network Activity Dashboard
Query: Average Transaction Fee Analysis (Last 30 Days)
Author: Bongani Nkosi
Platform: Dune Analytics
Dataset: gas_evm.fees

Description:
This query calculates the average daily Ethereum transaction fee (USD)
over the last 30 days using Dune's curated gas_evm.fees dataset.
*/

SELECT
    block_date AS "Date",
    ROUND(AVG(tx_fee_usd), 2) AS "Average Transaction Fee (USD)"
FROM gas_evm.fees
WHERE blockchain = 'ethereum'
  AND block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
