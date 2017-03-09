module ApplicationCable
  class Connection < ActionCable::Connection::Base
  	identified_by :current_user

  	def connect
  		self.current_user = {name: 'test'}
  	end

  	protected

  	def find_verified_user
  		logger.debug session
  		if verified_user = '' #User.find(session['warden.user.user.key'][0][0])
  			verified_user
  		else
  			reject_unauthorized_connection
  		end
  	end

  	def session
  		cookies.encrypted[Rails.application.config.session_options[:keys]]
  	end
  end
end
