class User < ApplicationRecord
	belongs_to :country
	has_many :members
	validates :first_name, :last_name, presence: true
end
