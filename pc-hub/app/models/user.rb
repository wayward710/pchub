class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true
	validates :country, presence: true
	validates :city, presence: true
end
