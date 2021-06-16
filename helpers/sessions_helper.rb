def is_logged_in?
  return !!session[:user_id]
end

def current_user
  if is_logged_in?
  results = find_user_by_id(session[:user_id])
  end
  #remove password_digest as we won't need to put this data round the site
  if results.to_a.length > 0
    results.delete("password_digest")
    return results
  else
    return nil
  end
end