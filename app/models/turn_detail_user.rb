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

class TurnDetailUser < ApplicationRecord
	belongs_to :turn_details
	belongs_to :user
end
