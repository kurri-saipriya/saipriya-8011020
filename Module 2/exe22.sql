SELECT
    user_id,
    event_id,
    COUNT(*) AS registration_count
FROM Registrations
GROUP BY user


-- Registrations
INSERT INTO Registrations VALUES
(1,1,1,'2025-05-01'),
(2,1,1,'2025-05-02'),
(3,2,1,'2025-05-03'),
(4,3,2,'2025-05-04'),
(5,3,2,'2025-05-05');