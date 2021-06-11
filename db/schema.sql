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
  user_id TEXT
);