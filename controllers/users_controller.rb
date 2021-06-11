get '/sign_up' do
  erb :'users/new'
end

post '/sign_up' do
  user_name = params[:username]
  email = params[:email]
  password = params[:password]

  create_user(user_name, email, password)

  redirect '/'
end