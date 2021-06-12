post '/reply/:post_id' do |post_id|
  reply = params[:reply]
  user_id = session[:user_id]

  create_reply(reply, user_id, post_id)
  
  redirect '/posts'
end