class AddTimelineToReply < ActiveRecord::Migration[5.0]
  def change
    add_reference :replies, :timeline, foreign_key: true
  end
end
