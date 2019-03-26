json.extract! member, :id, :username, :password, :email, :contact_number, :created_at, :updated_at
json.url member_url(member, format: :json)
