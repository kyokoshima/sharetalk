class TurnDetailUser < ApplicationRecord
	belongs_to :turn_details
	belongs_to :user
end
