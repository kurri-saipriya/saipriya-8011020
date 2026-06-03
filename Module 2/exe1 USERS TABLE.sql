-- USERS TABLE
INSERT INTO Users
VALUES
(1,'Alice Johnson','alice@example.com','New York','2024-12-01'),
(2,'Bob Smith','bob@example.com','Los Angeles','2024-12-05'),
(3,'Charlie Lee','charlie@example.com','Chicago','2024-12-10'),
(4,'Diana King','diana@example.com','New York','2025-01-15'),
(5,'Ethan Hunt','ethan@example.com','Los Angeles','2025-02-01');

-- EVENTS TABLE
INSERT INTO Events
VALUES
(1,'Tech Innovators Meetup','A meetup for tech enthusiasts',
'New York','2025-06-10 10:00:00',
'2025-06-10 16:00:00','upcoming',1),

(2,'AI & ML Conference','Conference on AI and ML advancements',
'Chicago','2025-05-15 09:00:00',
'2025-05--15 17:00:00','completed',3),

(3,'Frontend Development Bootcamp',
'Hands-on training on frontend tech',
'Los Angeles','2025-07-01 10:00:00',
'2025-07-03 16:00:00','upcoming',2);

-- REGISTRATIONS TABLE
INSERT INTO Registrations
VALUES
(1,1,1,'2025-05-01'),
(2,2,1,'2025-05-02'),
(3,3,2,'2025-04-30'),
(4,4,2,'2025-04-28'),
(5,5,3,'2025-06-15');

-- QUERY
SELECT
    u.user_id,
    u.full_name,
    e.event_id,
    e.title,
    e.city,
    e.start_date
FROM Users u
JOIN Registrations r
ON u.user_id = r.user_id
JOIN Events e
ON r.event_id = e.event_id
WHERE e.status = 'upcoming'
AND u.city = e.city
ORDER BY e.start_date;
