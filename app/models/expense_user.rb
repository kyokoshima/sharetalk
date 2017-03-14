# == Schema Information
#
# Table name: expense_users
#
#  id         :integer          not null, primary key
#  expense_id :integer
#  user_id    :integer
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_expense_users_on_expense_id_and_user_id  (expense_id,user_id)
#

class ExpenseUser < ApplicationRecord
	belongs_to :expense
	belongs_to :user
end
