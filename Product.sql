SELECT 
    sod.SalesOrderID, 
    sod.ProductID, 
    sod.LineTotal
FROM 
    `adwentureworks_db.salesorderheader` AS soh
JOIN 
    `adwentureworks_db.salesorderdetail` AS sod
    ON soh.SalesOrderID = sod.SalesOrderID;
