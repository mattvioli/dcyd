def posts_data
  run_sql("SELECT * FROM posts")
end
# need to add inner join to user ID/username

def create_post(title, main_text, user_id)
  run_sql("INSERT INTO posts (title, main_text, user_id, active) VALUES ($1, $2, $3, true)", [title, main_text, user_id])
end

def delete_post(id)
  run_sql("DELETE FROM posts WHERE id = $1;", [id])
end