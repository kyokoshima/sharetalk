class Cost < ApplicationRecord
	belongs_to :expense, inverse_of: :costs
end
