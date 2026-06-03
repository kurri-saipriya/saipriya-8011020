-- Events
INSERT INTO Events VALUES
(1,'Tech Innovators Meetup','A meetup for tech enthusiasts.',
'New York','2025-06-10 10:00:00',
'2025-06-10 16:00:00','upcoming',1),

(2,'AI & ML Conference','Conference on AI and ML advancements.',
'Chicago','2025-05-15 09:00:00',
'2025-05-15 17:00:00','completed',3),

(3,'Frontend Development Bootcamp','Hands-on training on frontend tech.',
'Los Angeles','2025-07-01 10:00:00',
'2025-07-03 16:00:00','upcoming',2);

-- Sessions
INSERT INTO Sessions VALUES
(1,1,'Opening Keynote','Dr. Tech',
'2025-06-10 10:00:00','2025-06-10 11:00:00'),

(2,1,'Future of Web Dev','Alice Johnson',
'2025-06-10 11:15:00','2025-06-10 12:30:00'),

(3,2,'AI in Healthcare','Charlie Lee',
'2025-05-15 09:30:00','2025-05-15 11:00:00'),

(4,3,'Intro to HTML5','Bob Smith',
'2025-07-01 10:00:00','2025-07-01 12:00:00');

SELECT e.event_id,
       e.title,
       COUNT(s.session_id) AS total_sessions
FROM Events e
LEFT JOIN Sessions s
ON e.event_id = s.event_id
WHERE e.status = 'upcoming'
GROUP BY e.event_id, e.title;