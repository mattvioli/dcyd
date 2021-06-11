get '/posts' do
  results = posts_data()
  erb :'posts/index', locals: { posts: results }
end

get '/create' do
  erb :'posts/new'
end

post '/create_post' do
  title = params[:title]
  main_text = params[:main_text]
  user_id = session[:user_id]
  create_post(title, main_text, user_id)

  redirect '/posts'
end

delete '/:id' do |id|
  delete_post(id)

  redirect '/posts'
end
