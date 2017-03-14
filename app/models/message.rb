# == Schema Information
#
# Table name: messages
#
#  id               :integer          not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  content          :string
#  message_group_id :integer
#

class Message < ApplicationRecord
end
