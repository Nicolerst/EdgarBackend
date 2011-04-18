require 'spec_helper'

describe "circuits/new.html." do
  before(:each) do
    assign(:circuit, stub_model(Circuit).as_new_record)
  end

  it "renders new circuit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => circuits_path, :method => "post" do
    end
  end
end
