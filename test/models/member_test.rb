require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  

   def setup
   	 @member = Member.create(mem_first_name: "John", mem_last_name: "Smith", username:"It must be unique", password:"It must be more than 6 characters long", email:"It must be unique")
   end
 
 test "member must be valid" do
 	assert @member.valid?
 end


end


