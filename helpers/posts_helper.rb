def not_passed_time?(time)
  if Time.parse(time) >= (Time.now - 1.0)
    return false
  else
    return true
  end
end