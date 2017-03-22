# == Schema Information
#
# Table name: messages
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  content          :string
#  message_group_id :integer
#  user_id          :integer
#
# Indexes
#
#  index_messages_on_user_id  (user_id)
#

class Message < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: {minimum: 2, maximum: 1000 }
  after_create_commit { MessageBroadcastJob.perform_later(self) }
end
