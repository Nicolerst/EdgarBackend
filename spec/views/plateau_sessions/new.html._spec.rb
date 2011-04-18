require 'spec_helper'

describe "plateau_sessions/new.html." do
  before(:each) do
    assign(:plateau_session, stub_model(PlateauSession).as_new_record)
  end

  it "renders new plateau_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plateau_sessions_path, :method => "post" do
    end
  end
end
