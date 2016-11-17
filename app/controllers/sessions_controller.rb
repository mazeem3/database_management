class SessionsController < ApplicationController

  def new
  end

  def create

    user = User.find_by username: params[:username]
    employee = Employee.find_by username: params[:employee]

    if user && user.authenticate(params[:password])
      # make session[:username] present
      session[:user_id] = user.id
      redirect_to root_path, notice: "Signed in!"
    elsif employee && employee.authenticate(params[:password])
      # make session[:username] present
      session[:employee_id] = employee.id
      redirect_to root_path, notice: "Signed in!"
    else

      flash.now[:notice] = "Something is wrong with your username and/or password"
      render :new
    end
  end

  def delete
    # we should sign out
    # make future tests if we are signed in fail
    session.delete :user_id
    session.delete :employee_id
    redirect_to root_path, notice: "Signed Out!"
  end
end
