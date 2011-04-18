require "spec_helper"

describe CodeSessionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/code_sessions" }.should route_to(:controller => "code_sessions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/code_sessions/new" }.should route_to(:controller => "code_sessions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/code_sessions/1" }.should route_to(:controller => "code_sessions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/code_sessions/1/edit" }.should route_to(:controller => "code_sessions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/code_sessions" }.should route_to(:controller => "code_sessions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/code_sessions/1" }.should route_to(:controller => "code_sessions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/code_sessions/1" }.should route_to(:controller => "code_sessions", :action => "destroy", :id => "1")
    end

  end
end
