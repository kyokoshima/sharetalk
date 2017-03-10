class AddUserIdToTimeline < ActiveRecord::Migration[5.0]
  def change
    add_column :timelines, :user_id, :integer
  end
end
