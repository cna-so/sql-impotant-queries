/* with "INSERT INTO" we tell database which table we want put data in this example is 'users'
   and in parentheses we specify which columns we want set data and
   with "VALUES" key specify the data in parentheses with the same order of first one
   */
   -- HINT : we single quotation
INSERT INTO users (first_name, last_name, date_of_birth, age) VALUES ('cna','so','1979-08-15', 22);
-- same syntax but use 'UPDATE' key word with comma ',' select multiple columns
-- the "WHERE" key word specify where we want change data
UPDATE users SET first_name = 'sina' ,date_of_birth = '2000-01-01' WHERE user_id = 1;
-- same syntax but use 'DELETE' and delete user that his user_id is equal to "1"
DELETE FROM users WHERE user_id = 1;
