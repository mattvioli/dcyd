def proof_exists?(id)
  pn = Pathname.new("./public/proof/#{id}proof")
  if pn.exist?
    return true
  else
    return false
  end
end

def proof_image_src(id)
    return "/proof/#{id}proof"
end