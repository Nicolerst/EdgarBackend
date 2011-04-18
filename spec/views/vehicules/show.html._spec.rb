require 'spec_helper'

describe "vehicules/show.html." do
  before(:each) do
    @vehicule = assign(:vehicule, stub_model(Vehicule))
  end

  it "renders attributes in <p>" do
    render
  end
end
