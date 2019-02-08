class User < ApplicationRecord
	has_secure_password 
	has_many :gossips
	belongs_to :city
	has_many :comments
	has_many :gossips, through: :comments
	validates :email, uniqueness: true, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :password, presence: true, length: { minimum: 6 }
end