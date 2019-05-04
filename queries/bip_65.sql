#standardSQL
-- MIT License
-- Copyright (c) 2019 Yaz Khoury, yaz.khoury@gmail.com


SELECT number, 
      DATE(timestamp) as date
FROM `bigquery-public-data.crypto_bitcoin.blocks` 
WHERE EXTRACT(MONTH FROM timestamp) = 12 AND EXTRACT(YEAR FROM timestamp) = 2015
ORDER BY date ASC;
