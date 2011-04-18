class CircuitsController < ApplicationController
  respond_to :json

  def index
    @circuits = Circuit.all
    respond_with(@circuits)
  end

  def show
    @circuit = Circuit.find(params[:id])
    respond_with(@circuit)
  end

  def create
    @circuit = Circuit.new(params[:circuit])
    respond_with(@circuit)
  end

  def update
    @circuit = Circuit.find(params[:id])
      if @circuit.update_attributes(params[:circuit])
        respond_with(@circuit)
      else
        render :nothing => true, :status => :unprocessable_entity
      end
  end

  def destroy
    @circuit = Circuit.find(params[:id])
    @circuit.destroy

    render(:nothing => true, :status => :ok)
  end
end
