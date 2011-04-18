require 'spec_helper'

describe "code_sessions/show.html." do
  before(:each) do
    @code_session = assign(:code_session, stub_model(CodeSession))
  end

  it "renders attributes in <p>" do
    render
  end
end
