json.extract! page, :id, :slug, :title, :created_at, :updated_at
json.url page_url(page, format: :json)
