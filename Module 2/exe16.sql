SELECT user_id,
       full_name,
       email,
       city,
       registration_date
FROM Users
WHERE registration_date >= CURDATE() - INTERVAL 30 DAY
AND user_id NOT IN
(
    SELECT user_id
    FROM Registrations
);

-- Users
INSERT INTO Users VALUES
(1,'Alice Johnson','alice@example.com','New York',CURDATE()-INTERVAL 10 DAY),
(2,'Bob Smith','bob@example.com','Los Angeles',CURDATE()-INTERVAL 20 DAY),
(3,'Charlie Lee','charlie@example.com','Chicago',CURDATE()-INTERVAL 40 DAY),
(4,'Diana King','diana@example.com','New York',CURDATE()-INTERVAL 5 DAY),
(5,'Ethan Hunt','ethan@example.com','Los Angeles',CURDATE()-INTERVAL 15 DAY);

-- Registrations
INSERT INTO Registrations VALUES
(1,1,1,'2025-05-01'),
(2,2,1,'2025-05-02');