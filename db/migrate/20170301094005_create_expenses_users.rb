class CreateExpensesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses_users, id: false do |t|
      t.references :expense, index: true, null: false
      t.references :user, index: true, null: false
    end
  end
end
