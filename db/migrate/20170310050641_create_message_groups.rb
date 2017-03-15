class CreateMessageGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :message_groups do |t|
      t.string :title

      t.timestamps
    end
  end
end
