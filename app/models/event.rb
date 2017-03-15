# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string
#  date       :datetime
#  place      :string
#  detail     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord
end
