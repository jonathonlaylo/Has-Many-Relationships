-- 1. Create a query to get all fields from the users table
SELECT * FROM users;

-- 2. Create a query to get all fields from the posts table where the user_id is 100
SELECT * FROM posts
  WHERE users_id = 100;

-- 3. Create a query to get all posts fields, the user's first name, and the user's last name, from the posts table where the user's id is 200
SELECT first_name, last_name, posts.*
  FROM users
  INNER JOIN posts ON posts.users_id = users.id
  WHERE users_id = 200;

 -- 4. Create a query to get all posts fields, and the user's username, from the posts table where the user's first name is 'Norene' and the user's last_name is 'Schmitt'
SELECT username, posts.*
  FROM users
  INNER JOIN posts ON posts.users_id = users_id
  WHERE first_name = 'Norene' AND last_name = 'Schmitt';