class NotesController < ApplicationController
  respond_to :json

  def index
    @notes = Note.all
    respond_with(@notes)
  end

  def show
    @note = Note.find(params[:id])
    respond_with(@note)
  end

  def create
    @note = Note.new(params[:note])
    respond_with(@note)
  end

  def update
    @note = Note.find(params[:id])
      if @note.update_attributes(params[:note])
        respond_with(@note)
      else
        render :nothing => true, :status => :unprocessable_entity
      end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    render(:nothing => true, :status => :ok)
  end
end
