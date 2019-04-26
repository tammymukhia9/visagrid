require 'rails_helper'

RSpec.describe Member, type: :model do
 	context 'validation tests' do

 		it 'ensures first name presence ' do
 			member=Member.new(mem_first_name:'FirstName',email:'abc@gmail.com').save
 			expect(member).to eq(false)
 		end
 		
 		it 'ensures last name presence ' do
 			member=Member.new(mem_last_name:'LastName',email:'abc@gmail.com').save
 			expect(member).to eq(false)
 		end

 		it 'ensures email name presence ' do
 			member=Member.new(mem_last_name:'LastName',mem_first_name:'FirstName').save
 			expect(member).to eq(false)
 		end

 		it 'ensures everything is okay ' do
 			member=Member.new(mem_last_name:'LastName',email:'abc@gmail.com',mem_first_name:'FirstName',password:'123456').save
 			expect(member).to eq(false)
 		end


 	end

 	context 'scope tests' do 


 	end 	


end
