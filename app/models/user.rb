class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :posts
  has_many :user_role
  has_many :roles, :through => :user_role

  before_create :create_role

  devise :database_authenticatable, 
  	:registerable,
    :recoverable, 
    :rememberable,
    :trackable, 
    :validatable

	def create_role
		self.roles << Role.find_by_name(:user);
	end

	def has_role?(role)
		self.roles.where(name: role).exists?
	end

	def get_list_posts(id)
		ids = []
		posts = Post.where(user_id: id)
		posts.map do |post|
			ids << post.id
		end
		ids
	end
end
