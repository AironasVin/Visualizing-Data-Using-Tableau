SELECT soh.SalesOrderID,
       sod.ProductID,
       p.Name Product,
       ps.Name Subcategory,
       pc.Name Category
FROM `adwentureworks_db.salesorderheader` soh
JOIN `adwentureworks_db.salesorderdetail` sod
ON soh.SalesOrderID = sod.SalesOrderDetailID
JOIN `adwentureworks_db.product` p
ON p.ProductID = sod.ProductID
JOIN `adwentureworks_db.productsubcategory` ps
ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN `adwentureworks_db.productcategory` pc
ON ps.ProductCategoryID = pc.ProductCategoryID
