class Post < ActiveRecord::Base
	paginates_per 3

  belongs_to :user
  has_one :users

  validates :body, presence: true
  validates :title, presence: true
end
