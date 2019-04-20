class VisaInfo < ApplicationRecord
	 belongs_to :source, :class_name => 'Country', :foreign_key => 'source_id'
  	 belongs_to :destination, :class_name => 'Country', :foreign_key => 'destination_id'
  	 belongs_to :nationality, :class_name => 'Country', :foreign_key => 'nationality_id'
  	 belongs_to :visit_purpose

     has_many :comments

  	 def self.search(search)
  	 	if search
  	 		where("nationality_id = ? AND source_id = ? AND destination_id = ?","#{params[:nationality_id]}","#{params[:source_id]}","#{params[:destination_id]}")
  	 	else
  	 		all
  	 	end
  	 end

end
