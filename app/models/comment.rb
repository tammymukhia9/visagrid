class Comment < ApplicationRecord

	belongs_to :member
	belongs_to :visa_info
end
