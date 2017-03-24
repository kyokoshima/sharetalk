# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  on                     :boolean          default(FALSE), not null
#  on                     :boolean          default("f"), not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :profile
  has_many :timelines
  has_many :user_groups, inverse_of: :user
  has_many :groups, through: :user_groups
  has_many :replies
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :turn_detail_users, inverse_of: :users
  has_many :expenses_users, inverse_of: :user
  has_many :expenses, through: :expenses_users
  has_many :message_groups, through: :message_group_users
  has_many :likes
  has_many :messages

  acts_as_reader

  validates :name,
    presence: true,                     # 必須にしたい！
    uniqueness: true,                   # URLに使うしユニーク！
    length: { maximum: 8 },            # あんまり長いのも……
    format: { with: /\A[a-z0-9]+\z/i }  #英数字

  after_create :set_profile

  def set_profile
    update(profile: Profile.new)
  end

  def appear on: true
    update(on: on)
  end

  def away
    update(on: false)
  end

  def disappear
    away
  end
end
