class Expense < ApplicationRecord
	has_many :costs, dependent: :destroy
	accepts_nested_attributes_for :costs
	validates :title, :presence => true
end
