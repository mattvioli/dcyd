get '/posts' do
  post_results = posts_data()
  reply_results = reply_data()
  erb :'posts/index', locals: { posts: post_results, replies: reply_results }
end

get '/posts/:id' do |id|
  if(!is_logged_in?)
    redirect '/login'
  else
  post_results = get_posts_by_id(id)
  reply_results = get_reply_by_user_id(id)
  erb :"/posts/show", locals: { posts: post_results, replies: reply_results }
  end
end

get '/create' do
  if(!is_logged_in?)
    redirect '/login'
  else
  erb :'posts/new'
  end
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
