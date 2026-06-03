INSERT INTO Users VALUES
(1,'Alice Johnson','alice@example.com','New York','2025-05-25'),
(2,'Bob Smith','bob@example.com','Los Angeles','2025-05-25'),
(3,'Charlie Lee','charlie@example.com','Chicago','2025-05-26'),
(4,'Diana King','diana@example.com','New York','2025-05-27'),
(5,'Ethan Hunt','ethan@example.com','Los Angeles','2025-05-27');

SELECT registration_date,
       COUNT(*) AS user_count
FROM Users
WHERE registration_date >= CURDATE() - INTERVAL 7 DAY
GROUP BY registration_date
ORDER BY registration_date;