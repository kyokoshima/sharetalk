class TurnDetail < ApplicationRecord
	has_many :users, through: :turn_detail_users 
	has_many :turn_detail_users, inverse_of: :turn_details
	has_many :turns, through: :turn_detail_users
	accepts_nested_attributes_for :turn_detail_users
	belongs_to :turn, inverse_of: :turn_details, optional: true
	validates :when, presence: true
end