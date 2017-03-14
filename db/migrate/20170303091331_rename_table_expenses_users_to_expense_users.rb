class RenameTableExpensesUsersToExpenseUsers < ActiveRecord::Migration[5.0]
  def change
  	rename_table :expenses_users, :expense_users
  end
end
