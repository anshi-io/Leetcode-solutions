SELECT manager.name
FROM Employee manager
JOIN (
    SELECT managerId
    FROM Employee
    WHERE managerId IS NOT NULL
    GROUP BY managerId
    HAVING COUNT(*) >= 5
) e
ON manager.id = e.managerId;
