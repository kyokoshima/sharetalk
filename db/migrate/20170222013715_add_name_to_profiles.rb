class AddNameToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :name, :string
  end
end
