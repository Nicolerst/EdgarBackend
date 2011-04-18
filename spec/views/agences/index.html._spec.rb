require 'spec_helper'

describe "agences/index.html." do
  before(:each) do
    assign(:agences, [
      stub_model(Agence),
      stub_model(Agence)
    ])
  end

  it "renders a list of agences" do
    render
  end
end
