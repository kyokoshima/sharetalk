# == Schema Information
#
# Table name: replies
#
#  id          :integer          not null, primary key
#  comment     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  timeline_id :integer
#
# Indexes
#
#  index_replies_on_timeline_id  (timeline_id)
#

require 'test_helper'

class ReplyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
