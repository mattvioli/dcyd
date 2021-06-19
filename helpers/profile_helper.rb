def image_src(user_id)
  if Dir.glob("/uploads/#{user_id}profile")
    return "/uploads/#{user_id}profile"
  else
    return "/uploads/defaultprofile.png"
  end
end