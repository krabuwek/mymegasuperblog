class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :email
  attribute :created_at, key: :created
  #emded :ids, include: true

  #has_one  :user, serializer: UserSerializer

  def email
  	object.user.email
  end

  def body
	object.body.length > 300 ? object.body[0..300] << "..." : object.body << "..."
	#object.body << "..."
  end
end
	