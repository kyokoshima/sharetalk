class MessageGroup < ApplicationRecord
  has_and_belongs_to_many :message_group_users
  has_many :messages
end
