require 'spec_helper'

describe "agences/show.html." do
  before(:each) do
    @agence = assign(:agence, stub_model(Agence))
  end

  it "renders attributes in <p>" do
    render
  end
end
