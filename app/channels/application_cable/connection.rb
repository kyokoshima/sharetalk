module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_user

  	def connect
  		self.current_user = find_verified_user
      logger.add_tags 'ActionCable', current_user.email
  	end

  	protected

  	def find_verified_user
  		logger.debug session.to_hash if session.present?
#      warden_key = 'warden.user.user.key'
#      user_id = session[warden_key][0][0]  if session[warden_key].present?
#  		if user_id && verified_user = User.find(user_id)
#  			verified_user
      if verified_user = env['warden'].user
        verified_user
  		else
  			reject_unauthorized_connection
  		end
  	end

  	def session
  		cookies.encrypted[Rails.application.config.session_options[:key]]
  	end
  end
end
