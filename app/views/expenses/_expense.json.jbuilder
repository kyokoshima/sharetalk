json.extract! expense, :id, :title, :created_at, :updated_at
json.url expense_url(expense, format: :json)