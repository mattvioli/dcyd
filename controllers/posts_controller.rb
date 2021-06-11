get '/posts' do
  results = posts_data()
  erb :'posts/index', locals: { posts: results }
end