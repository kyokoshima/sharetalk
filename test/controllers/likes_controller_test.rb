# == Schema Information
#
# Table name: likes
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  timeline_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class LikesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
