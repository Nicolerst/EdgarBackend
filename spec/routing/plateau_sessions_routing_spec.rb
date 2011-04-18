require "spec_helper"

describe PlateauSessionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/plateau_sessions" }.should route_to(:controller => "plateau_sessions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/plateau_sessions/new" }.should route_to(:controller => "plateau_sessions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/plateau_sessions/1" }.should route_to(:controller => "plateau_sessions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/plateau_sessions/1/edit" }.should route_to(:controller => "plateau_sessions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/plateau_sessions" }.should route_to(:controller => "plateau_sessions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/plateau_sessions/1" }.should route_to(:controller => "plateau_sessions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/plateau_sessions/1" }.should route_to(:controller => "plateau_sessions", :action => "destroy", :id => "1")
    end

  end
end
