class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  rails_admin do
  end
end
