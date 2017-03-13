class Profile < ApplicationRecord
	belongs_to :user
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

def name
	# user = User.find(params[:id])
	# @user_idname = user.email.match(/^([\w\.]*)(@.*)/)[1]
	read_attribute :name || user.email.split('@')[0]
end

end
