json.extract! article, :id, :title, :body, :is_featured, :published, :employee_id, :company_id, :created_at, :updated_at
json.url article_url(article, format: :json)
