require 'spec_helper'

describe "plateau_sessions/show.html." do
  before(:each) do
    @plateau_session = assign(:plateau_session, stub_model(PlateauSession))
  end

  it "renders attributes in <p>" do
    render
  end
end
