class User < ActiveRecord::Base
	has_secure_password
	validates :email, presence: true
	validates :password, presence: true, allow_nil: true
	has_one :location
end
