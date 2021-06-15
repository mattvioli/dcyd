post '/reply/:post_id' do |post_id|
  reply = params[:reply]
  user_id = session[:user_id]

  create_reply(reply, user_id, post_id)
  
  redirect '/posts'
end

post '/quick_reply/:reply_id' do |reply_id|
  results = get_reply_from_id(reply_id)
    
  create_reply(results[0]["reply"], session[:user_id], results[0]["post_id"])

  redirect '/posts'
end