class TurnDetail < ApplicationRecord
	has_one :user
	has_many :turn_details_users
	has_many :turn, through: :turn_details_users
	belongs_to :turn, inverse_of: :turn_details, optional: true
	validates :when, presence: true
end