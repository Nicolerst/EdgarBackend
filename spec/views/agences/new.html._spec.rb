require 'spec_helper'

describe "agences/new.html." do
  before(:each) do
    assign(:agence, stub_model(Agence).as_new_record)
  end

  it "renders new agence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agences_path, :method => "post" do
    end
  end
end
