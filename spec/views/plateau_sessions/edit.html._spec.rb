require 'spec_helper'

describe "plateau_sessions/edit.html." do
  before(:each) do
    @plateau_session = assign(:plateau_session, stub_model(PlateauSession))
  end

  it "renders the edit plateau_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plateau_sessions_path(@plateau_session), :method => "post" do
    end
  end
end
