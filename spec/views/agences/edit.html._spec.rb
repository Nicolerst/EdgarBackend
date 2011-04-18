require 'spec_helper'

describe "agences/edit.html." do
  before(:each) do
    @agence = assign(:agence, stub_model(Agence))
  end

  it "renders the edit agence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agences_path(@agence), :method => "post" do
    end
  end
end
