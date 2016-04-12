class PostWithCommenterSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at, :title

  has_one :user
  has_many :comments


end
