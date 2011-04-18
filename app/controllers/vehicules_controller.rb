class VehiculesController < ApplicationController
  respond_to :json

  def index
    @vehicules = Vehicule.all
    respond_with(@vehicules)
  end

  def show
    @vehicule = Vehicule.find(params[:id])
    respond_with(@vehicule)
  end

  def create
    @vehicule = Vehicule.new(params[:vehicule])
    respond_with(@vehicule)
  end

  def update
    @vehicule = Vehicule.find(params[:id])
      if @vehicule.update_attributes(params[:vehicule])
        respond_with(@vehicule)
      else
        render :nothing => true, :status => :unprocessable_entity
      end
  end

  def destroy
    @vehicule = Vehicule.find(params[:id])
    @vehicule.destroy

    render(:nothing => true, :status => :ok)
  end
end
