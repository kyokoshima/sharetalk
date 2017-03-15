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

class Cost < ApplicationRecord
	belongs_to :expense, inverse_of: :costs
end
