require 'spec_helper'

describe "staffs/show.html." do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff))
  end

  it "renders attributes in <p>" do
    render
  end
end
