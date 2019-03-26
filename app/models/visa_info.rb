class VisaInfo < ApplicationRecord
	 belongs_to :source, :class_name => 'Country', :foreign_key => 'source_id'
  	 belongs_to :destination, :class_name => 'Country', :foreign_key => 'destination_id'
  	 belongs_to :nationality, :class_name => 'Country', :foreign_key => 'nationality_id'

end
