class CommentSerializer < ActiveModel::Serializer
  attributes :commenter, :body

  belongs_to :post
end
