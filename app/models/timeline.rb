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

class Timeline < ApplicationRecord
# validates :content, length: { in: 1..75 }
	belongs_to :user
	acts_as_readable :on => :created_at
end
