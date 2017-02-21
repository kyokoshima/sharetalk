class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.timestamp :date
      t.string :place
      t.text :detail

      t.timestamps
    end
  end
end
