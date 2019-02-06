class User < ApplicationRecord
	has_many :gossips
	belongs_to :city
	has_many :comments
	validates :email, uniqueness: true, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
end
