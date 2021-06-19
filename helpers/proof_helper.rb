def proof_exists?(id)
  pn = Pathname.new("./public/proof/#{id}proof")
  if pn.exist?
    return true
  else
    return false
  end
end