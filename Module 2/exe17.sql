SELECT speaker_name,
       COUNT(session_id) AS total_sessions
FROM Sessions
GROUP BY speaker_name
HAVING COUNT(session_id) > 1;

-- Sessions
INSERT INTO Sessions VALUES
(1,1,'Opening Keynote','Dr. Tech',
'2025-06-10 10:00:00',
'2025-06-10 11:00:00'),

(2,1,'Future of Web Dev','Alice Johnson',
'2025-06-10 11:15:00',
'2025-06-10 12:30:00'),

(3,2,'AI in Healthcare','Charlie Lee',
'2025-05-15 09:30:00',
'2025-05-15 11:00:00'),

(4,3,'Intro to HTML5','Bob Smith',
'2025-07-01 10:00:00',
'2025-07-01 12:00:00'),

(5,3,'Advanced HTML5','Bob Smith',
'2025-07-01 01:00:00',
'2025-07-01 03:00:00');