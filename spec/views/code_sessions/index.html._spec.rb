require 'spec_helper'

describe "code_sessions/index.html." do
  before(:each) do
    assign(:code_sessions, [
      stub_model(CodeSession),
      stub_model(CodeSession)
    ])
  end

  it "renders a list of code_sessions" do
    render
  end
end
