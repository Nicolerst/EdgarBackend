require 'spec_helper'

describe "circuits/edit.html." do
  before(:each) do
    @circuit = assign(:circuit, stub_model(Circuit))
  end

  it "renders the edit circuit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => circuits_path(@circuit), :method => "post" do
    end
  end
end
