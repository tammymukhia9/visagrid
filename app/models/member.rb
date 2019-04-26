class Member < ApplicationRecord

	include Clearance::User

	belongs_to :country
	has_many :comments
	
	
	  validates :mem_first_name, :mem_last_name, presence: true
	  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	  validates :email, length: {maximum: 105},
	  uniqueness: { case_sensitive: false },
	  format: { with: VALID_EMAIL_REGEX } 

	  validates :username, uniqueness: {case_sensitive: false}

	  validates :password, :confirmation => true


	
end
