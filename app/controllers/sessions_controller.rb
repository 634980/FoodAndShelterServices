class SessionsController < ApplicationController
  def new
  end
  
  def create
    employee = Employee.find_by(username: params[:session][:username].downcase)
    if employee && employee.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in employee
      redirect_to employee
    else
      # Create an error message.
      flash[:danger] = 'Invalid username/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
  
end
