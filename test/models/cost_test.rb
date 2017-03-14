# == Schema Information
#
# Table name: costs
#
#  id         :integer          not null, primary key
#  subject    :string
#  cost       :integer
#  detail     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  expense_id :integer
#

require 'test_helper'

class CostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
