require 'spec_helper'

describe "circuits/show.html." do
  before(:each) do
    @circuit = assign(:circuit, stub_model(Circuit))
  end

  it "renders attributes in <p>" do
    render
  end
end
