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

require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
