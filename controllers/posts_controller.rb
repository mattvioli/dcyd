get '/posts' do
  post_results = posts_data()
  reply_results = reply_data()
  erb :'posts/index', locals: { posts: post_results, replies: reply_results }
end

get '/create' do
  erb :'posts/new'
end

post '/create_post' do
  title = params[:title]
  main_text = params[:main_text]
  user_id = session[:user_id]
  time
  create_post(title, main_text, user_id)

  redirect '/posts'
end

delete '/:id' do |id|
  delete_post(id)

  redirect '/posts'
end
