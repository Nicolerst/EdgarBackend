class CodeSessionsController < ApplicationController
  respond_to :json

  def index
    @code_sessions = CodeSession.all
    respond_with(@code_sessions)
  end

  def show
    @code_session = CodeSession.find(params[:id])
    respond_with(@code_session)
  end

  def create
    @code_session = CodeSession.new(params[:code_session])
    respond_with(@code_session)
  end

  def update
    @code_session = CodeSession.find(params[:id])
      if @code_session.update_attributes(params[:code_session])
        respond_with(@code_session)
      else
        render :nothing => true, :status => :unprocessable_entity
      end
  end

  def destroy
    @code_session = CodeSession.find(params[:id])
    @code_session.destroy

    render(:nothing => true, :status => :ok)
  end
end
