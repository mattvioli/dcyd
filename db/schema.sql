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
  user_id INTEGER,
);

CREATE TABLE answers (
  id SERIAL PRIMARY KEY,
  reply TEXT,
  user_id INTEGER,
  post_id INTEGER
)