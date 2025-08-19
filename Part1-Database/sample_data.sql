-- Sample Data Inserts

-- Users
INSERT INTO users (name, email) VALUES
('Alice Johnson','alice@example.com'),
('Bob Smith','bob@example.com'),
('Charlie Brown','charlie@example.com'),
('Diana Prince','diana@example.com'),
('Ethan Hunt','ethan@example.com'),
('Fiona Clark','fiona@example.com'),
('George White','george@example.com'),
('Hannah Lee','hannah@example.com'),
('Ivan Moore','ivan@example.com'),
('Julia Green','julia@example.com');

-- Events
INSERT INTO events (title, description, date, city, created_by) VALUES
('Tech Conference','Annual tech meetup','2025-09-15 10:00:00','Bangalore',(SELECT id FROM users LIMIT 1)),
('Startup Pitch','Pitch your startup','2025-09-20 14:00:00','Mumbai',(SELECT id FROM users OFFSET 1 LIMIT 1)),
('Music Festival','Enjoy live music','2025-10-01 18:00:00','Delhi',(SELECT id FROM users OFFSET 2 LIMIT 1)),
('Hackathon','24h coding challenge','2025-10-05 09:00:00','Hyderabad',(SELECT id FROM users OFFSET 3 LIMIT 1)),
('Art Expo','Modern art exhibition','2025-10-10 11:00:00','Kolkata',(SELECT id FROM users OFFSET 4 LIMIT 1));

-- RSVPs (20 sample entries)
INSERT INTO rsvps (user_id, event_id, status)
SELECT id, (SELECT id FROM events LIMIT 1), 'Yes' FROM users LIMIT 5;
INSERT INTO rsvps (user_id, event_id, status)
SELECT id, (SELECT id FROM events OFFSET 1 LIMIT 1), 'Maybe' FROM users OFFSET 5 LIMIT 5;
INSERT INTO rsvps (user_id, event_id, status)
SELECT id, (SELECT id FROM events OFFSET 2 LIMIT 1), 'No' FROM users OFFSET 2 LIMIT 4;
INSERT INTO rsvps (user_id, event_id, status)
SELECT id, (SELECT id FROM events OFFSET 3 LIMIT 1), 'Yes' FROM users OFFSET 6 LIMIT 3;
INSERT INTO rsvps (user_id, event_id, status)
SELECT id, (SELECT id FROM events OFFSET 4 LIMIT 1), 'Maybe' FROM users OFFSET 1 LIMIT 3;
