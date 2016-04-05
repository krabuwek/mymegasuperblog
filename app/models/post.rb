class Post < ActiveRecord::Base
	paginates_per 3

  belongs_to :user
  

  validates :body, presence: true
  validates :title, presence: true

end
