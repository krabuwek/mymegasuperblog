class UserRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :role

  def has_role?(role)
		user.roles.where(name: role).exists?
  end
  
end
