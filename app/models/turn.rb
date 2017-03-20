# == Schema Information
#
# Table name: turns
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Turn < ApplicationRecord
	has_many :turn_details, inverse_of: :turn
	accepts_nested_attributes_for :turn_details
	validates :name, presence:true
end
