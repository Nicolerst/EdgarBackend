require 'spec_helper'

describe "circuits/index.html." do
  before(:each) do
    assign(:circuits, [
      stub_model(Circuit),
      stub_model(Circuit)
    ])
  end

  it "renders a list of circuits" do
    render
  end
end
