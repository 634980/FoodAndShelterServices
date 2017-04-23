class SitesController < ApplicationController
  def index
    @sites=Site.all
  end
  
  def new
    @site = Site.new
  end
  
  def show
    @site = Site.find(params[:id])
  end
  
  def create
    @site =Site.new(site_params)
    if @site.save
      flash[:success] = "Site added into the system"
      redirect_to sites_path
    else
      render 'new'
    end
  end
  
  private
  
  def site_params
      params.require(:site).permit(:site_name, :site_address, :city, :state, :zipcode, :site_contact_number)
  end
end
