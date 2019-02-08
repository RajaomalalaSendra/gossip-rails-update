require "bcrypt"
class User < ApplicationRecord
	has_secure_password 
	has_many :gossips
	belongs_to :city
	has_many :comments
	has_many :gossips, through: :comments
end