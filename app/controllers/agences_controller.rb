class AgencesController < ApplicationController
  respond_to :json

  def index
    @agences = Agence.all
    respond_with(@agences)
  end

  def show
    @agence = Agence.find(params[:id])
    respond_with(@agence)
  end

  def create
    @agence = Agence.new(params[:agence])
    respond_with(@agence)
  end

  def update
    @agence = Agence.find(params[:id])
      if @agence.update_attributes(params[:agence])
        respond_with(@agence)
      else
        render :nothing => true, :status => :unprocessable_entity
      end
  end

  def destroy
    @agence = Agence.find(params[:id])
    @agence.destroy

    render(:nothing => true, :status => :ok)
  end
end
