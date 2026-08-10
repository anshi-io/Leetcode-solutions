SELECT sales.name
FROM SalesPerson sales
WHERE sales.sales_id NOT IN (
    SELECT ords.sales_id
    FROM Orders ords
    JOIN Company comp
        ON ords.com_id = comp.com_id
    WHERE comp.name = 'RED'
);
