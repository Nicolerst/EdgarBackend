require 'spec_helper'

describe "code_sessions/new.html." do
  before(:each) do
    assign(:code_session, stub_model(CodeSession).as_new_record)
  end

  it "renders new code_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => code_sessions_path, :method => "post" do
    end
  end
end
