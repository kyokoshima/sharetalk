class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile
  has_many :timelines
  has_many :replies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
