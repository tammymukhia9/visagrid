json.extract! blog, :id, :title, :description, :article, :blog_img, :created_at, :updated_at
json.url blog_url(blog, format: :json)
