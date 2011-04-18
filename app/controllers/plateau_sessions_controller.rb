class PlateauSessionsController < ApplicationController
  # GET /plateau_sessions
  # GET /plateau_sessions.xml
  def index
    @plateau_sessions = PlateauSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plateau_sessions }
    end
  end

  # GET /plateau_sessions/1
  # GET /plateau_sessions/1.xml
  def show
    @plateau_session = PlateauSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plateau_session }
    end
  end

  # GET /plateau_sessions/new
  # GET /plateau_sessions/new.xml
  def new
    @plateau_session = PlateauSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plateau_session }
    end
  end

  # GET /plateau_sessions/1/edit
  def edit
    @plateau_session = PlateauSession.find(params[:id])
  end

  # POST /plateau_sessions
  # POST /plateau_sessions.xml
  def create
    @plateau_session = PlateauSession.new(params[:plateau_session])

    respond_to do |format|
      if @plateau_session.save
        format.html { redirect_to(@plateau_session, :notice => 'Plateau session was successfully created.') }
        format.xml  { render :xml => @plateau_session, :status => :created, :location => @plateau_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plateau_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plateau_sessions/1
  # PUT /plateau_sessions/1.xml
  def update
    @plateau_session = PlateauSession.find(params[:id])

    respond_to do |format|
      if @plateau_session.update_attributes(params[:plateau_session])
        format.html { redirect_to(@plateau_session, :notice => 'Plateau session was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plateau_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plateau_sessions/1
  # DELETE /plateau_sessions/1.xml
  def destroy
    @plateau_session = PlateauSession.find(params[:id])
    @plateau_session.destroy

    respond_to do |format|
      format.html { redirect_to(plateau_sessions_url) }
      format.xml  { head :ok }
    end
  end
end
