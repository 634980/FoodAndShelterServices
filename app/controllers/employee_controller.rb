class EmployeeController < ApplicationController
  def home
  end
  
  def new
    @employee = Employee.new
  end
  
  def show
    @employee = Employee.find(params[:id])
  end
  
  def create
    @employee =Employee.new(employee_params)
    if user.save
      flash[:success] = "Employee added into the system"
      redirect_to @employee
    else
      render root_path
    end
  end
  
  private
  
  def employee_params
      params.require(:employee).permit(:name, :address, :contact, :email, :username, :password,
                                   :password_confirmation)
  end
  
end
