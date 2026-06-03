-- Users
INSERT INTO Users VALUES
(1,'Alice Johnson','alice@example.com','New York','2024-12-01'),
(2,'Bob Smith','bob@example.com','Los Angeles','2024-12-05'),
(3,'Charlie Lee','charlie@example.com','Chicago','2024-12-10'),
(4,'Diana King','diana@example.com','New York','2025-01-15'),
(5,'Ethan Hunt','ethan@example.com','Los Angeles','2025-02-01');

-- Events
INSERT INTO Events VALUES
(1,'Tech Innovators Meetup','A meetup for tech enthusiasts.',
'New York','2025-06-10 10:00:00',
'2025-06-10 16:00:00','upcoming',1),

(2,'AI & ML Conference','Conference on AI and ML advancements.',
'Chicago','2025-05-15 09:00:00',
'2025-05-15 17:00:00','completed',3);

-- Feedback
INSERT INTO Feedback VALUES
(1,3,2,4,'Great insights!','2025-05-16'),
(2,4,2,5,'Very informative.','2025-05-16'),
(3,2,1,2,'Could be better.','2025-06-11');
SELECT u.full_name,
       e.title AS event_name,
       f.rating,
       f.comments
FROM Feedback f
JOIN Users u
ON f.user_id = u.user_id
JOIN Events e
ON f.event_id = e.event_id
WHERE f.rating < 3;