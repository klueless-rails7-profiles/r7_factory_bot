json.extract! tenant, :id, :name, :slug, :active, :app_id, :created_at, :updated_at
json.url tenant_url(tenant, format: :json)
