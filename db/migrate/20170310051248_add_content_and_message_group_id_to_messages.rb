class AddContentAndMessageGroupIdToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :content, :string
    add_column :messages, :message_group_id, :integer
  end
end
