json.extract! member_account, :id, :first_name, :last_name, :age, :date_of_birth, :gender, :address, :picture, :marital_status, :user_id, :created_at, :updated_at
json.url member_account_url(member_account, format: :json)
