require "spec_helper"

describe AgencesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/agences" }.should route_to(:controller => "agences", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/agences/new" }.should route_to(:controller => "agences", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/agences/1" }.should route_to(:controller => "agences", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/agences/1/edit" }.should route_to(:controller => "agences", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/agences" }.should route_to(:controller => "agences", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/agences/1" }.should route_to(:controller => "agences", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/agences/1" }.should route_to(:controller => "agences", :action => "destroy", :id => "1")
    end

  end
end
