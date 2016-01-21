class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def check_admin_access
    if !current_user.is_admin
      flash[:error] = "アクセス権限がありません"
      redirect_to root_path
    end
  end
end
