module ApplicationHelper

	def profile_image klz: ''
    return nil unless user_signed_in?
		if current_user.profile.present? && current_user.profile.image.present?
		  image_tag current_user.profile.image.url(:medium), class: klz
	  else
		  image_tag "no_img.png", class: klz
	  end
	end

end
