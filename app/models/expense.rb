class Expense < ApplicationRecord
	has_many :costs, dependent: :destroy, inverse_of: :expense
	has_and_belongs_to_many :users
	accepts_nested_attributes_for :costs, reject_if: :all_blank
	validates :title, :presence => true
end
