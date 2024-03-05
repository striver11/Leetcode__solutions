SELECT
    p.product_id AS PRODUCT_ID,
    ROUND(COALESCE(SUM(p.price * u.units) / NULLIF(SUM(u.units), 0), 0), 2) AS AVERAGE_PRICE
FROM Prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
