class Post < ActiveRecord::Base
	paginates_per 5

  belongs_to :user
  has_many :comments
  

  validates :body, presence: true
  validates :title, presence: true

  rails_admin do
  end

end
