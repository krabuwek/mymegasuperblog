class Post < ActiveRecord::Base
	paginates_per 3

  belongs_to :user
  has_one :users

  validates :body, presence: true
  validates :title, presence: true

  def get_id 
  	self.id
  end
end
