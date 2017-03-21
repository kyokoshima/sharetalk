class AddOnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :on, :boolean, null: false, default: false
  end
end
