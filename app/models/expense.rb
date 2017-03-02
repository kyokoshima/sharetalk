class Expense < ApplicationRecord
	has_many :costs, dependent: :destroy, inverse_of: :expense
	accepts_nested_attributes_for :costs
	validates :title, :presence => true
	def total_cost
		total = 0
		costs.each do |c|
		  total = total + c.cost
		end
		total
	end
end
