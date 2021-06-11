get '/login' do
  erb :'sessions/login', locals: { error_message: ''}
end

post '/sessions' do
  username = params[:username]
  password = params[:password]

  user = find_user(username)

  #wrapping this in a if statement as the user && add doesn't change the error message
  if user.to_a.length > 0
    if bcrypt_password = BCrypt::Password.new(user['password_digest']) == password
      session[:user_id] = user["id"]
      redirect '/'
    else 
      erb :'/sessions/login', locals: { error_message: 'Incorrect password'}
    end
  else
    erb :'/sessions/login', locals: { error_message: 'No user'}
  end

end

delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end