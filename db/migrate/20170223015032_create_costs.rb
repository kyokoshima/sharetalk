class CreateCosts < ActiveRecord::Migration[5.0]
  def change
    create_table :costs do |t|
      t.string :subject
      t.integer :cost
      t.text :detail
      t.timestamps
    end
  end
end
