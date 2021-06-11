require 'bcrypt'

def create_user(user_name, email, password)
  password_digest = BCrypt::Password.create(password)

  run_sql("INSERT INTO users (user_name, email, password_digest) VALUES ($1, $2, $3)", [user_name, email, password_digest])
end