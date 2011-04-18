require 'spec_helper'

describe "plateau_sessions/index.html." do
  before(:each) do
    assign(:plateau_sessions, [
      stub_model(PlateauSession),
      stub_model(PlateauSession)
    ])
  end

  it "renders a list of plateau_sessions" do
    render
  end
end
