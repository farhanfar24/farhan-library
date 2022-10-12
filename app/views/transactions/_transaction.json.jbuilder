json.extract! transaction, :id, :number, :user_id, :book_id, :duration, :return_date, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
