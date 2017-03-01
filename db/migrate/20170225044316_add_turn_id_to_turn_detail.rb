class AddTurnIdToTurnDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :turn_details, :turn_id, :string
  end
end
