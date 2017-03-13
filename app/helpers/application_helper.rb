module ApplicationHelper

	def profile_image
		if current_user.profile.present? && current_user.profile.image.present?
		  image_tag current_user.profile.image.url(:medium)
	  else
		  image_tag "no_img.png"
	  end
	end

end
