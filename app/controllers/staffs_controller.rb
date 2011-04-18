class StaffsController < ApplicationController
  respond_to :json

  def index
    @staffs = Staff.all
    respond_with(@staffs)
  end

  def show
    @staff = Staff.find(params[:id])
    respond_with(@staff)
  end

  def create
    @staff = Staff.new(params[:staff])
    respond_with(@staff)
  end

  def update
    @staff = Staff.find(params[:id])
      if @staff.update_attributes(params[:staff])
        respond_with(@staff)
      else
        render :nothing => true, :status => :unprocessable_entity
      end
  end

  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy

    render(:nothing => true, :status => :ok)
  end
end
