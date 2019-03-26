class User < ApplicationRecord
	belongs_to :country
	validates :first_name, presence: true
end

