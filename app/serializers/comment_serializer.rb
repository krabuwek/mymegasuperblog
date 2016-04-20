class CommentSerializer < ActiveModel::Serializer
  attributes :commenter, :body, :created_at
  belongs_to :post
 
end
