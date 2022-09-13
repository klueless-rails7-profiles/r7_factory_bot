json.extract! company, :id, :name, :slug, :active, :sector_id, :created_at, :updated_at
json.url company_url(company, format: :json)
