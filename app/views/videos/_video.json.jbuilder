json.extract! video, :id, :title, :youtube_id, :article_id, :created_at, :updated_at
json.url video_url(video, format: :json)
