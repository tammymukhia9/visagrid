require 'test_helper'

class CommentTest < ActiveSupport::TestCase

	 def setup
	 	@comment = Comment.create(body: "This is a comment", member_id: 1, visa_info_id: 1)
 	 end
	 test "comment must be valid" do
	 	assert @comment.valid?
 	end
  
end

