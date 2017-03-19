class RemoveUserIdFromTurnDetail < ActiveRecord::Migration[5.0]
  def change
    remove_column :turn_details, :user_id, :integer
  end
end
