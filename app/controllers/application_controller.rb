class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  private
  def authenticated_user!
    redirect_to users_sign_in_path, alert: 'Necesitas logear para revisar esa seccion' unless helpers.logged?
  end
end
