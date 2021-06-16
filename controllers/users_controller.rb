get '/sign_up' do
  erb :'users/new', locals: { error_message: ''}
end

get '/profile' do
  erb :'users/index'
end

post '/sign_up' do
  user_name = params[:username]
  email = params[:email]
  password = params[:password]

  #check username
  if username_taken?(user_name)
    erb :'users/new', locals: { error_message: 'Username is taken.'}
  elsif !email.match(URI::MailTo::EMAIL_REGEXP)
    erb :'users/new', locals: { error_message: 'That is not an email.'}
  elsif password.length < 6 
    erb :'users/new', locals: { error_message: 'Password needs to be 7 characters or longer.'}
  else
    create_user(user_name, email, password)
    redirect '/'
  end
end

post '/update_profile' do
  if params[:image] && params[:image][:filename]
    filename = "#{session[:user_id]}profile"
    file = params[:image][:tempfile]
    path = "./public/uploads/#{filename}"
    
    File.open(path, 'wb') do |f|
      f.write(file.read)
    end
  end
  if params[:email]
    update_email(session[:user_id], params[:email])
  end
  if params[:password]
    update_password(session[:user_id], params[:password])
  end
  redirect '/profile'
end

post '/update_email' do
  update_email(session[:user_id], params[:email])
  redirect '/profile'
end

post '/update_password' do
  update_password(session[:user_id], params[:password])
  redirect '/profile'
end