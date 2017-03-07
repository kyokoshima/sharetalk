class Expense < ApplicationRecord
	has_many :expense_users, inverse_of: :expense
	has_many :users, through: :expense_users
	has_many :costs, dependent: :destroy, inverse_of: :expense
	accepts_nested_attributes_for :costs, reject_if: :all_blank
	accepts_nested_attributes_for :users, reject_if: :all_blank
	accepts_nested_attributes_for :expense_users, reject_if: :all_blank
	validates :title, :presence => true
end
