-- QUESTION 2.17

SELECT SKU, SKU_Description
FROM INVENTORY;


-- QUESTION 2.18

SELECT SKU_Description, SKU
FROM INVENTORY;


-- QUESTION 2.19
SELECT WarehouseID
FROM INVENTORY;


-- QUESTION 2.20
SELECT DISTINCT WarehouseID
FROM INVENTORY;


-- QUESTION 2.21

SELECT WarehouseID, SKU, SKU_Description, QuantityOnHand, QuantityOnOrder
FROM INVENTORY;


-- QUESTION 2.22

SELECT *
FROM INVENTORY;


-- QUESTION 2.23

SELECT *
FROM INVENTORY
WHERE QuantityOnHand > 0;

-- QUESTION 2.24

SELECT *
FROM INVENTORY
WHERE QuantityOnHand = 0;

-- QUESTION 2.25
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0
ORDER BY WarehouseID ASC;


-- QUESTION 2.26

SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 0
ORDER BY WarehouseID DESC, SKU ASC;


-- QUESTION 2.27

SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;


-- QUESTION 2.28
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 OR QuantityOnOrder = 0
ORDER BY WarehouseID DESC, SKU ASC;

-- QUESTION 2.29
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1 AND QuantityOnHand < 10;



-- QUESTION 2.30

SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand BETWEEN 2 AND 9;

-- QUESTION 2.31

SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE 'Half-Dome%';

-- QUESTION 2.32

SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '%Climb%';


-- QUESTION 2.33

SELECT DISTINCT SKU, SKU_Description
FROM INVENTORY
WHERE SKU_Description LIKE '__d%';

-- QUESTION 2.34

SELECT 
    COUNT(QuantityOnHand) AS TotalEntries,
    SUM(QuantityOnHand) AS TotalQuantity,
    AVG(QuantityOnHand) AS AverageQuantity,
    MIN(QuantityOnHand) AS MinimumQuantity,
    MAX(QuantityOnHand) AS MaximumQuantity
FROM INVENTORY;


-- QUESTION 2.36
SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHand
FROM INVENTORY
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand DESC;

-- QUESTION 2.37

SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;
 





-- QUESTION 2.34




