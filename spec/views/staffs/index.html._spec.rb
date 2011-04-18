require 'spec_helper'

describe "staffs/index.html." do
  before(:each) do
    assign(:staffs, [
      stub_model(Staff),
      stub_model(Staff)
    ])
  end

  it "renders a list of staffs" do
    render
  end
end
