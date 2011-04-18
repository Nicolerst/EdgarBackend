class ClientsController < ApplicationController
  respond_to :json

  def index
    @clients = Client.all
    respond_with(@clients)
  end

  def show
    @client = Client.find(params[:id])
    respond_with(@client)
  end

  def create
    @client = Client.new(params[:client])
    respond_with(@client)
  end

  def update
    @client = Client.find(params[:id])
      if @client.update_attributes(params[:client])
        respond_with(@client)
      else
        render :nothing => true, :status => :unprocessable_entity
      end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    render(:nothing => true, :status => :ok)
  end
end
