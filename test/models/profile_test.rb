# == Schema Information
#
# Table name: profiles
#
#  id                 :integer          not null, primary key
#  image              :string
#  hobby              :string
#  birthday           :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  name               :string
#  user_id            :integer
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
