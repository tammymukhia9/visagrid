class Member < ApplicationRecord

	include Clearance::User

	belongs_to :country
	has_many :comments

	
end
