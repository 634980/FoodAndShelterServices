class ClientsController < ApplicationController
  
  def index
    @clients=Client.all
  end
  
  def dailyService
    @clients=Client.all
  end
  
  def new
    @client = Client.new
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
  def create
    @client =Client.new(client_params)
    if @client.save
      flash[:success] = "Client added into the system"
      redirect_to clients_path
    else
      render 'new'
    end
  end
  
  def edit
    @client = Client.find(params[:id])
  end
  
  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(client_params)
            flash[:success] = "Client updated"
      redirect_to @client
    else
      render 'edit'
    end
  end
  
  def destroy
    Client.find(params[:id]).destroy
    flash[:success] = "Client deleted"
    redirect_to clients_url
  end
  
  private
  
  def client_params
      params.require(:client).permit(:full_name, :phone_number)
  end
end
