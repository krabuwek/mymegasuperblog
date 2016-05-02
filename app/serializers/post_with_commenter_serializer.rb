class PostWithCommenterSerializer < ActiveModel::Serializer
  attributes :id, :body, :title, :comments, :email, :me
  attribute :created_at, key: :created

  has_one :user
  has_many :comments

  def email 
  	object.user.email
  end

  def comments 
  	object.comments
  end

  def me 
    current_user
  end


end
