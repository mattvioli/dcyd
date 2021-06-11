require 'bcrypt'

def create_user(user_name, email, password)
  password_digest = BCrypt::Password.create(password)

  run_sql("INSERT INTO users (user_name, email, password_digest) VALUES ($1, $2, $3)", [user_name, email, password_digest])
end

def find_user(user_name)
  results = run_sql("SELECT * FROM users WHERE user_name = $1", [user_name])

  if results.to_a.length > 0
    return results[0]
  else
    return nil
  end
end

def find_user_by_id(id)

  results = run_sql("SELECT * FROM users WHERE id = $1", [id])

  if results.to_a.length > 0
    return results[0]
  else
    return nil
  end
end