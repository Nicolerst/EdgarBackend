require "spec_helper"

describe StaffsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/staffs" }.should route_to(:controller => "staffs", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/staffs/new" }.should route_to(:controller => "staffs", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/staffs/1" }.should route_to(:controller => "staffs", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/staffs/1/edit" }.should route_to(:controller => "staffs", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/staffs" }.should route_to(:controller => "staffs", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/staffs/1" }.should route_to(:controller => "staffs", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/staffs/1" }.should route_to(:controller => "staffs", :action => "destroy", :id => "1")
    end

  end
end
