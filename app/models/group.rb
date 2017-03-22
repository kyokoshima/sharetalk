# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  detail     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ApplicationRecord
	has_many :user_groups, inverse_of: :group
	has_many :user, through: :user_groups
	accepts_nested_attributes_for :user_groups, allow_destroy: :true
end
