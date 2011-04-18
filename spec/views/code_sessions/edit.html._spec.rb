require 'spec_helper'

describe "code_sessions/edit.html." do
  before(:each) do
    @code_session = assign(:code_session, stub_model(CodeSession))
  end

  it "renders the edit code_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => code_sessions_path(@code_session), :method => "post" do
    end
  end
end
