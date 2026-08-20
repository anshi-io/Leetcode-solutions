SELECT 
    pro.product_name,
    SUM(ords.unit) AS unit
FROM Products pro
JOIN Orders ords
    ON pro.product_id = ords.product_id
WHERE ords.order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY pro.product_id, pro.product_name
HAVING SUM(ords.unit) >= 100;
