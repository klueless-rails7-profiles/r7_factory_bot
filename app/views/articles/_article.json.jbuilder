json.extract! article, :id, :title, :body, :is_featured, :employee_id, :tenant_id, :created_at, :updated_at
json.url article_url(article, format: :json)
