# == Schema Information
#
# Table name: expenses
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  expense_id :integer
#

class Expense < ApplicationRecord
	has_many :expense_users, inverse_of: :expense
	has_many :users, through: :expense_users
	has_many :costs, dependent: :destroy, inverse_of: :expense
	accepts_nested_attributes_for :costs, reject_if: :all_blank
	accepts_nested_attributes_for :users, reject_if: :all_blank
	accepts_nested_attributes_for :expense_users, reject_if: :all_blank, allow_destroy: true
	validates :title, :presence => true
	def total_cost
		total = 0
		costs.each do |c|
		  total = total + c.cost
		end
		total
	end
end
