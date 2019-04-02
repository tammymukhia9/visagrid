class Country < ApplicationRecord
	has_many :users
	has_many :members
	has_many :src, :class_name => 'Visa_info', :foreign_key => 'source_id'
	has_many :dest, :class_name => 'Visa_info', :foreign_key => 'destination_id'
	has_many :citizen, :class_name => 'Visa_info', :foreign_key => 'nationaity_id'
end
