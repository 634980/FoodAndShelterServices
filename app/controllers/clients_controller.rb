class ClientsController < ApplicationController
  
  def index
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
  
  private
  
  def client_params
      params.require(:client).permit(:full_name, :phone_number)
  end
end
