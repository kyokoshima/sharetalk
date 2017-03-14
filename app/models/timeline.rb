class Timeline < ApplicationRecord
# validates :content, length: { in: 1..75 }
	belongs_to :user
	has_many :replies
end
