json.extract! book, :id, :title, :description, :author, :stock, :quota, :created_at, :updated_at
json.url book_url(book, format: :json)
