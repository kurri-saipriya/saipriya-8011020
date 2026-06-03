SELECT
    YEAR(registration_date) AS year,
    MONTH(registration_date) AS month,
    COUNT(*) AS total_registrations
FROM Registrations
WHERE registration_date >= CURDATE() - INTERVAL 12 MONTH
GROUP BY YEAR(registration_date),
         MONTH(registration_date)
ORDER BY year, month;

-- Registrations
INSERT INTO Registrations VALUES
(1,1,1,'2025-01-10'),
(2,2,1,'2025-01-15'),
(3,3,2,'2025-02-20'),
(4,4,2,'2025-03-05'),
(5,5,3,'2025-03-18'),
(6,1,2,'2025-04-12'),
(7,2,3,'2025-05-08'),
(8,3,1,'2025-06-25');