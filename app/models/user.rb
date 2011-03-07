class User < ActiveRecord::Base
	attr_accessible :login, :password, :password_confirmation
	
	attr_accessor :password
	before_save :encrypt_password

	validates :login, :presence => true, :uniqueness => true
	validates_presence_of :password, :on => :create
	validates :password, :confirmation => true
	
	def self.authenticate(login, password)
		user = find_by_login(login)
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end

	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end
	
end
