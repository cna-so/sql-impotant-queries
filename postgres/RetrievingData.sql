/*
selecting data from tables
*/
-- get all columns and data from posts table
SELECT * FROM posts;
-- get all title from posts table
SELECT title FROM posts;
-- get all title and description from posts table
SELECT title , description FROM posts;
-- get all columns and data that belong to user with id : "15"
SELECT * FROM posts WHERE user_id = 15;
-- get title that have id = "10"
SELECT title FROM posts WHERE post_id = 10;
-- get title that belong to user with id : "1" and created at 2022-11-13
SELECT title FROM posts WHERE user_id = 1 AND created_at = '2022-11-13';
-- Using logical operators (>, >=, <, <=)
-- get all posts that have id greater than 200
SELECT title FROM posts WHERE post_id > 200;
-- Using IN and NOT IN
-- select title from posts that have id "1" or "2" or "3"
SELECT title FROM posts WHERE post_id IN (1,2,3);
-- select title from posts that doesn't have title "Crush" or "Healing
SELECT title FROM posts WHERE title NOT IN ('Crush' , 'Healing');
-- Using LIKE with % and _
-- select every title from posts that stat with : "P"
SELECT title FROM posts WHERE title LIKE 'P%';
-- select every title from posts that stat with : "P" and have 3 words after that
SELECT title FROM posts WHERE title LIKE 'P___';
-- selecting data where a column is between 2 values
-- select every title and description between '2022-01-01' AND '2023-12-31'
SELECT title, description FROM posts WHERE created_at BETWEEN '2022-01-01' AND '2023-12-31';
-- sorting data
/*
if 'ORDER BY' user for integers it's 1 to 9
if 'ORDER BY' user for strings it's a to z
*/
-- get everything from posts and sort them by created at from low to high
SELECT * FROM posts ORDER BY created_at; -- by default it's ASC
-- get everything from posts and sort them by created at from high to low
SELECT * FROM posts ORDER BY created_at DESC;
-- limit data that you want
-- get everything from posts and sort them by created at from high to low and only get back 10 result
SELECT * FROM posts ORDER BY created_at DESC LIMIT 10;
-- get everything from posts and sort them by created at from high to low and only get back 10 result and start from 11th
SELECT * FROM posts ORDER BY created_at DESC LIMIT 10 OFFSET 11;
-- Distinct values
-- Select only unique title and don't repeat results
SELECT DISTINCT title from posts;
-- select everything from posts that created_at isn't null
SELECT * FROM posts WHERE created_at IS NOT NULL;
-- Setting a column name alias
-- het all title with column name : "movie_name" ** modify the column name not value **
SELECT title AS movie_name FROM posts;
-- Using concatenate
-- mix every title and created_at as one value with column name details
SELECT CONCAT(title , ' ' , created_at) AS details FROM posts;
-- mix every title and created_at as one value with column name details
-- the 'CONCAT_WS' have prefix that work with first value
SELECT CONCAT_WS(' ', title , created_at) AS details FROM posts;