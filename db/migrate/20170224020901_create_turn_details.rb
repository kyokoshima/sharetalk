class CreateTurnDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :turn_details do |t|
      t.string :when
      t.integer :user_id

      t.timestamps
    end
  end
end
