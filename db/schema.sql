DROP TABLE IF EXISTS users, posts;


CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  user_name TEXT, 
  email TEXT, 
  password_digest TEXT
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY, 
  title TEXT, 
  main_text TEXT,
  active BOOLEAN,
  user_id TEXT
);