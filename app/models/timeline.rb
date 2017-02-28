class Timeline < ApplicationRecord
<<<<<<< HEAD
validates :content, length: { in: 1..75 }
=======
	belong_to :user
>>>>>>> 3067938e2d12f6e5eb2f161066adfff4b4883a49
end
