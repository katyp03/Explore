json.extract! post, :id, :title, :body, :image, :user_id, :experiment_id, :created_at, :updated_at
json.url post_url(post, format: :json)
