-- CREATE TABLE

CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    title VARCHAR(200)
);

CREATE TABLE Feedback (
    feedback_id INT PRIMARY KEY,
    user_id INT,
    event_id INT,
    rating INT,
    comments TEXT,
    feedback_date DATE
);

-- INPUT DATA

INSERT INTO Events VALUES
(1,'Tech Innovators Meetup'),
(2,'AI & ML Conference'),
(3,'Frontend Development Bootcamp');

INSERT INTO Feedback VALUES
(1,1,1,5,'Excellent','2025-06-11'),
(2,2,1,4,'Good','2025-06-11'),
(3,3,1,5,'Very Good','2025-06-11'),
(4,4,1,4,'Nice','2025-06-11'),
(5,5,1,5,'Great','2025-06-11'),
(6,1,1,4,'Good','2025-06-11'),
(7,2,1,5,'Excellent','2025-06-11'),
(8,3,1,4,'Nice','2025-06-11'),
(9,4,1,5,'Great','2025-06-11'),
(10,5,1,4,'Good','2025-06-11'),

(11,1,2,5,'Excellent','2025-05-16'),
(12,2,2,5,'Excellent','2025-05-16'),
(13,3,2,4,'Good','2025-05-16'),
(14,4,2,5,'Very Good','2025-05-16'),
(15,5,2,5,'Excellent','2025-05-16'),
(16,1,2,4,'Nice','2025-05-16'),
(17,2,2,5,'Great','2025-05-16'),
(18,3,2,5,'Excellent','202)

SELECT
    e.event_id,
    e.title,
    AVG(f.rating) AS average_rating,
    COUNT(f.feedback_id) AS total_feedbacks
FROM Events e
JOIN Feedback f
    ON e.event_id = f.event_id
GROUP BY e.event_id, e.title
HAVING COUNT(f.feedback_id) >= 10
ORDER BY average_rating DESC;