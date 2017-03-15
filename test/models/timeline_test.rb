# == Schema Information
#
# Table name: timelines
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require 'test_helper'

class TimelineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
