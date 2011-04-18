require 'spec_helper'

describe "staffs/new.html." do
  before(:each) do
    assign(:staff, stub_model(Staff).as_new_record)
  end

  it "renders new staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => staffs_path, :method => "post" do
    end
  end
end
