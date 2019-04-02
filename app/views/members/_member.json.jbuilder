json.extract! member, :id, :mem_first_name, :mem_last_name, :username, :password, :email, :created_at, :updated_at
json.url member_url(member, format: :json)
