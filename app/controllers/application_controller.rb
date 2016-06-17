class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  add_flash_types :info, :warning

  def admin_required
  	if !current_user.admin?
  		redirect_to root_path
  	end
  end
end
