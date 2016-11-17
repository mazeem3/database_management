class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.where employee_id: @current_user.id
  end


  def create
    @employee = Employee.new
    @employee.username = params[:employee][:username]
    @employee.password = params[:employee][:password]
    @employee.password_confirmation = params[:employee][:password_confirmation]
    if @employee.save
      # we should also sign them in
      session[:employee_id] = @employee.id
      redirect_to root_path, notice: "Welcome!"
    else
      render :new
    end
  end
end
