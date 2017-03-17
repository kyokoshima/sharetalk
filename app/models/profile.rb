	# == Schema Information
#
# Table name: profiles
#
#  id                 :integer          not null, primary key
#  image              :string
#  hobby              :string
#  birthday           :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetim

#  name               :string
#  user_id            :integer
#

class Profile < ApplicationRecord
	belongs_to :user
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" },default_url: '/images/no_image.png'

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

	def name
		# user = User.find(params[:id])
		# @user_idname = user.email.match(/^([\w\.]*)(@.*)/)[1]
		read_attribute :name || user.email.split('@')[0]
	end

end
