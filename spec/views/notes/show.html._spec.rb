require 'spec_helper'

describe "notes/show.html." do
  before(:each) do
    @note = assign(:note, stub_model(Note))
  end

  it "renders attributes in <p>" do
    render
  end
end
