class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action do
    @current_user = (User.find_by id: session[:user_id]) || (Employee.find_by id: session[:employee_id])

  end
end
