# == Schema Information
#
# Table name: turn_detail_users
#
#  id             :integer          not null, primary key
#  turn_detail_id :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class TurnDetailUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
