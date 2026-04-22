SELECT m.title,AVG(r.rating) AS avg_rating
FROM movies m
JOIN ratings r ON m.movie_id=r.movie_id
GROUP BY m.title
ORDER BY avg_rating DESC;

SELECT m.genre,COUNT(*) AS total_views
FROM movies m
JOIN watch_history w ON m.movie_id=w.movie_id
GROUP BY m.genre
ORDER BY total_views DESC;

SELECT m.title,COUNT(*) AS views
FROM movies m
JOIN watch_history w ON m.movie_id=w.movie_id
GROUP BY m.title
ORDER BY views DESC;

SELECT u.name,m.title,w.watch_date
FROM users u
JOIN watch_history w ON u.user_id=w.user_id
JOIN movies m ON m.movie_id=w.movie_id;

SELECT u.name,COUNT(*) AS total_movies
FROM users u
JOIN watch_history w ON u.user_id=w.user_id
GROUP BY u.name
ORDER BY total_movies DESC;

SELECT DISTINCT m.title
FROM ratings r1
JOIN ratings r2 ON r1.movie_id=r2.movie_id
JOIN movies m ON m.movie_id=r2.movie_id
WHERE r1.user_id=1
AND r2.user_id!=1
AND r1.rating>=4
AND r2.rating>=4;