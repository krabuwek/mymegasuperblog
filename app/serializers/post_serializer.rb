class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at
  #emded :ids, include: true

  has_one  :user, root: :author
  has_many :comments, serializer: CommentsShortSerializer
end
	