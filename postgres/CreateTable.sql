-- the users table query well create a table with 5 column
-- "user_id" is auto increment and primary key
-- "first_name" , "last_name" are varchar 'string' and max words limit of 30 also these fields cannot be null
-- "date_of_birth" is type date in "YYYY-MM-DD" format
-- age is simple integer 'number' column
CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL ,
	date_of_birth DATE,
	age INT
);
-- the posts table query also well create a table with 5 column
-- "post_id" is auto increment and primary key
-- "title" are varchar 'string' and max words limit of 255 and this field cannot be null
-- "created_at" is type date in "YYYY-MM-DD HH:MM:SS" format
-- "user_id" is a reference to users table and column user_id field
-- it's like they are linked to each other and 'user_id' must be exist in users
CREATE TABLE posts (
	post_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL ,
    description TEXT NOT NULL ,
    created_at TIMESTAMP,
    user_id INTEGER REFERENCES users(user_id)
);
