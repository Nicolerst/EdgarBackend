require 'spec_helper'

describe "vehicules/index.html." do
  before(:each) do
    assign(:vehicules, [
      stub_model(Vehicule),
      stub_model(Vehicule)
    ])
  end

  it "renders a list of vehicules" do
    render
  end
end
