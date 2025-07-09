SELECT  e.EmployeeId,
        CONCAT(c.FirstName, ' ', COALESCE(c.MiddleName, ''), ' ', c.LastName) AS EmployeeName,
FROM `adwentureworks_db.employee` e
JOIN `adwentureworks_db.contact` c
ON c.ContactId = e.ContactID
