class TurnDetail < ApplicationRecord
	has_one :user
	belongs_to :turn, inverse_of: :turn_details, optional: true
	validates :when, presence: true
end
