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

-- Resources
INSERT INTO Resources VALUES
(1,1,'pdf',
'https://portal.com/resources/tech_meetup_agenda.pdf',
'2025-05-01 10:00:00'),

(2,2,'image',
'https://portal.com/resources/ai_poster.jpg',
'2025-04-20 09:00:00'),

(3,3,'link',
'https://portal.com/resources/html5_docs',
'2025-06-25 15:00:00');

SELECT e.title,
       SUM(CASE WHEN r.resource_type='pdf' THEN 1 ELSE 0 END) AS pdf_count,
       SUM(CASE WHEN r.resource_type='image' THEN 1 ELSE 0 END) AS image_count,
       SUM(CASE WHEN r.resource_type='link' THEN 1 ELSE 0 END) AS link_count
FROM Events e
LEFT JOIN Resources r
ON e.event_id = r.event_id
GROUP BY e.event_id, e.title;