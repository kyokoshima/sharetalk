class AddExpenseIdToCost < ActiveRecord::Migration[5.0]
  def change
    add_column :costs, :expense_id, :integer
  end
end
