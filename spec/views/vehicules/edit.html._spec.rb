require 'spec_helper'

describe "vehicules/edit.html." do
  before(:each) do
    @vehicule = assign(:vehicule, stub_model(Vehicule))
  end

  it "renders the edit vehicule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehicules_path(@vehicule), :method => "post" do
    end
  end
end
