class ServicesController < ApplicationController
  def new
    @service= Service.new
  end

  def show
  end

  def index
  end

  def create
    @service=Service.new(service_params)
    if @service.save
      flash[:success] = "Service added into the system"
      redirect_to services_path
    else
      render 'new'
    end
  end
  
  private
  
  def service_params
      params.require(:service).permit(:service_type, :site_id, :employee_id, :client_id, :date)
  end
end
