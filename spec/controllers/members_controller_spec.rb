require 'rails_helper'

RSpec.describe MembersController, type: :controller do

	context 'GET #index' do
		it 'returns a success response' do
		get :index
		expect(response).to be_success

		end
	end

	context 'GET #show' do
		it 'returns a success response ' do
			country = Country.create(id:1,country_name:"China")
			member=Member.create!(mem_first_name:'First',mem_last_name:'Last name',email:'abc@gmail.com',password:"hello",country_id: country.id)
			get :show,params:{id: member.to_param}
			expect(response).to be_success		

		end

	end

end
