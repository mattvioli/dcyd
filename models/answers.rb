def reply_data
  run_sql("SELECT * FROM answers LEFT JOIN users ON users.id = answers.user_id;")
end

def create_reply(reply, user_id, post_id)
  run_sql("INSERT INTO answers (reply, user_id, post_id) VALUES ($1, $2, $3)", [reply, user_id, post_id])
end