SELECT title, play_count
FROM tracks;

SELECT title, play_count AS total_plays
FROM tracks;

SELECT *
FROM tracks
WHERE play_count > 5000;

SELECT *
FROM tracks;



SELECT * 
FROM tracks
WHERE title LIKE '%Love%';

SELECT *
FROM listening_events
WHERE completion_pct BETWEEN 80 AND 100;

SELECT * 
FROM users
WHERE join_date BETWEEN '2022-01-01' AND '2022-12-31';

SELECT track_id, COUNT(track_id)
FROM tracks
GROUP BY track_id;

SELECT SUM(play_count) AS total
FROM tracks;

SELECT AVG(duration_secs) AS average
FROM tracks;

SELECT MAX(duration_secs) AS maximum, MIN(duration_secs) AS minimum
FROM tracks;

SELECT artist_id, COUNT(track_id) AS count
FROM tracks
GROUP BY artist_id;


SELECT artist_id, SUM(play_count) AS count
from tracks
GROUP BY artist_id;

SELECT user_id, COUNT(*) AS count
from listening_events
GROUP BY user_id;

SELECT AVG(completion_pct) AS average
from listening_events
GROUP BY device_type;


SELECT track_id, COUNT(track_id) AS track_count
FROM tracks
GROUP BY track_id
ORDER BY track_id DESC;


SELECT t.title, a.name
FROM tracks t
JOIN artists A
ON t.artist_id = a.artist_id;

SELECT tracks.title, artists.name, artists.genre
FROM tracks
INNER JOIN artists
ON tracks.artist_id = artists.artist_id;

SELECT listening_events.track_id, tracks.title, users.username
FROM listening_events
INNER JOIN tracks
ON tracks.track_id = listening_events.track_id
INNER JOIN users
ON users.user_id = listening_events.user_id;

SELECT playlists.title, users.username
FROM playlists
LEFT JOIN users
ON playlists.owner_id = users.user_id;


SELECT artists.name, SUM(tracks.play_count) AS total_plays
FROM tracks
LEFT JOIN artists
ON tracks.artist_id = artists.artist_id
GROUP BY artists.name
ORDER BY total_plays DESC;







































