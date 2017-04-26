class EmployeesController < ApplicationController
    before_action :logged_in_employee, only: [:edit, :update]

  def home
  end
  
  def index
    @employees=Employee.all
  end
  
  def new
    @employee = Employee.new
  end
  
  def show
    @employee = Employee.find(params[:id])
  end
  
  def create
    @employee =Employee.new(employee_params)
    if @employee.save
      flash[:success] = "Employee added into the system"
      redirect_to employees_path
    else
      render 'new'
    end
  end
  
  def edit
    @employee = Employee.find(params[:id])
  end
  
  def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
            flash[:success] = "Employee updated"
      redirect_to @employee
    else
      render 'edit'
    end
  end
  
  def destroy
    Employee.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to employees_url
  end
  
  private
  
  def employee_params
      params.require(:employee).permit(:name, :address, :contact, :email, :username, :password,
                                   :password_confirmation)
  end
  
  def logged_in_employee
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end
  
  def correct_user
      @employee = Employee.find(params[:id])
      redirect_to(root_url) unless current_employee?(@employee)
  end
end
