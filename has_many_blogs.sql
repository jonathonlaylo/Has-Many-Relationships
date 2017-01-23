DROP DATABASE IF EXISTS has_many_blogs;

DROP USER IF EXISTS has_many_user;

CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER has_many_user

\c has_many_blogs;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  username varchar(90) NOT NULL,
  first_name varchar(90) DEFAULT NULL,
  last_name varchar(90) DEFAULT NULL,
  created_at timestamp WITH TIME ZONE DEFAULT now() NOT NULL,
  update_at timestamp WITH TIME ZONE DEFAULT now() NOT NULL
);

DROP TABLE IF EXISTS posts;
CREATE TABLE IF NOT EXISTS posts(
  id SERIAL PRIMARY KEY,
  title varchar(180) DEFAULT NULL,
  url varchar(510) DEFAULT NULL,
  content text DEFAULT NULL,
  created_at timestamp WITH TIME ZONE DEFAULT now() NOT NULL,
  update_at timestamp WITH TIME ZONE DEFAULT now() NOT NULL
);

DROP TABLE IF EXISTS comments;
CREATE TABLE IF NOT EXISTS comments(
  id SERIAL PRIMARY KEY,
  body varchar(510) DEFAULT NULL,
  created_at timestamp WITH TIME ZONE DEFAULT now() NOT NULL,
  update_at timestamp WITH TIME ZONE DEFAULT now() NOT NULL
);

\i scripts/blog_data.sql;
