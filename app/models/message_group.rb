# == Schema Information
#
# Table name: message_groups
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MessageGroup < ApplicationRecord
  has_many :users, through: :message_group_users
  has_many :message_group_users, inverse_of: :message_group
  accepts_nested_attributes_for :message_group_users, allow_destroy: :true
  has_many :messages
end
