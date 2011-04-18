require 'spec_helper'

describe "vehicules/new.html." do
  before(:each) do
    assign(:vehicule, stub_model(Vehicule).as_new_record)
  end

  it "renders new vehicule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicules_path, :method => "post" do
    end
  end
end
