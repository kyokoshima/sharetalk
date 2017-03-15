class CreateMessageGroupUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :message_group_users, id: false do |t|
      t.references :message_group, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
