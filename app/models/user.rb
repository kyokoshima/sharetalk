class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile
  has_many :timelines
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :expenses_users, inverse_of: :user
  has_many :expenses, through: :expenses_users
  has_and_belongs_to_many :message_groups
  acts_as_reader
end
