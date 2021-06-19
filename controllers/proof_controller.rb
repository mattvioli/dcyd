post '/upload_proof' do
  params[:post_id]
  if params[:image] && params[:image][:filename]
    filename = "#{params[:post_id]}proof"
    file = params[:image][:tempfile]
    path = "./public/proof/#{filename}"
    
    File.open(path, 'wb') do |f|
      f.write(file.read)
    end
  end

  redirect '/posts'
end