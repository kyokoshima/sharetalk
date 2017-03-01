class TurnDetail < ApplicationRecord
	belongs_to :turn, inverse_of: :turn_details
	validates :when, presence: true
end
