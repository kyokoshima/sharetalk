class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :image
      t.string :hobby
      t.timestamp :birthday

      t.timestamps
    end
  end
end
