def reply_data
  run_sql("SELECT answers.*, users.user_name FROM answers LEFT JOIN users ON users.id = answers.user_id;")
end

def create_reply(reply, user_id, post_id)
  run_sql("INSERT INTO answers (reply, user_id, post_id) VALUES ($1, $2, $3)", [reply, user_id, post_id])
end

def get_reply_from_id(reply_id)
  run_sql("SELECT * FROM answers WHERE id = $1", [reply_id])
end

def get_reply_by_user_id(id)
  run_sql("SELECT * FROM answers WHERE user_id = $1", [id])
end