class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def after_sign_in_path_for(users)
   user_spaces_url(current_user.id)
	end
	def after_sign_out_path_for(users)
   root_url
	end
end
