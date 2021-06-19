def image_src(user_id)
  pn = Pathname.new("./public/uploads/#{user_id}profile")
  if pn.exist?
    return "/uploads/#{user_id}profile"
  else
    return "/uploads/defaultprofile.png"
  end
end