class CommentSerializer < ActiveModel::Serializer
  attributes :commenter, :body, :created_at

 
end
