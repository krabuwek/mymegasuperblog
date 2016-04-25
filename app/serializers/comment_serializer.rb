class CommentSerializer < ActiveModel::Serializer
  attributes :commenter, :body
  attribute :created_at, key: :created
  belongs_to :post
 
end
