json.extract! employee, :id, :first_name, :last_name, :address, :email, :password, :tenant_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
