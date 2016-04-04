class Role < ActiveRecord::Base
	has_many :users_roles
	has_many :users, :through => :user_roles

	def has_role?(role)
		user.roles.where(name: role).exists?
	end

	def grand_role role
		#user.role << role
	end

	def revoke_role
	end
end
