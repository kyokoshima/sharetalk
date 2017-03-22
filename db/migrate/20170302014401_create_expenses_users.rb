class CreateExpensesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses_users do |t|
      t.integer :expense_id
      t.integer :user_id
      t.integer :position

      t.timestamps
    end

    add_index :expenses_users, [:expense_id, :user_id]
  end
end