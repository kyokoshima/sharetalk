module ApplicationHelper

	def profile_image user: nil, klz: ''
    if user.nil? && !user_signed_in?
      return nil
    end
    user = user.nil? ? current_user : user
		if user.profile.present? && user.profile.image.present?
		  image_tag user.profile.image.url(:medium), class: klz
	  else
		  image_tag "no_img.png", class: klz
	  end
	end

  def m_icon name, klz = nil
    klz = ['material-icons'] << css_class
    content_tag :i, name, { class: [ klz ] }
  end

end
