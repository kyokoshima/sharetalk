class Expense < ApplicationRecord
	has_many :costs, dependent: :destroy, inverse_of: :expense
	accepts_nested_attributes_for :costs
	validates :title, :presence => true
end
