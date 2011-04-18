require "spec_helper"

describe VehiculesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/vehicules" }.should route_to(:controller => "vehicules", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/vehicules/new" }.should route_to(:controller => "vehicules", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/vehicules/1" }.should route_to(:controller => "vehicules", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/vehicules/1/edit" }.should route_to(:controller => "vehicules", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/vehicules" }.should route_to(:controller => "vehicules", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/vehicules/1" }.should route_to(:controller => "vehicules", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/vehicules/1" }.should route_to(:controller => "vehicules", :action => "destroy", :id => "1")
    end

  end
end
