class CreateTurnDetailUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :turn_detail_users do |t|
      t.integer :turn_detail_id
      t.integer :user_id

      t.timestamps
    end
  end
end
