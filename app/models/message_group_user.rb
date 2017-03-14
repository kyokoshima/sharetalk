# == Schema Information
#
# Table name: message_group_users
#
#  message_group_id :integer
#  user_id          :integer
#
# Indexes
#
#  index_message_group_users_on_message_group_id  (message_group_id)
#  index_message_group_users_on_user_id           (user_id)
#

class MessageGroupUser < ApplicationRecord
  belongs_to :user
  belongs_to :message_group
end
