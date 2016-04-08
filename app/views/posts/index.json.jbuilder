
json.array!(@posts) do |post|
  json.data do
  	json.id post.id
  	json.body post.body
  	json.author post.user.email
  	json.date post.
  	json.links do
  		json.self post_path(post)
  	end
  end
end
