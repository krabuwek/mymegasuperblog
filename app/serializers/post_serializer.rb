class PostSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :title, :body
  #emded :ids, include: true

  has_one  :user,  serializer: UserSerializer
end
	