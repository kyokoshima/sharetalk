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

class Like < ApplicationRecord

belongs_to :user
belongs_to :timeline

end
