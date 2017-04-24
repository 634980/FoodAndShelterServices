class Service1sController < ApplicationController
  def new
    @service1= Service1.new
  end

  def show
  end

  def index
  end

  def create
    @service1=Service1.new(service_params)
    if @service1.save
      flash[:success] = "Service added into the system"
      redirect_to service1s_path
    else
      render 'new'
    end
  end
  
  private
  
  def service_params
      params.require(:service1).permit(:service_type, :employee_name, :site_name, :client_name, :date)
  end
end
