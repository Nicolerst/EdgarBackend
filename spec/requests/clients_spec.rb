require 'spec_helper'

describe "Clients" do
  describe "GET /clients" do
    it "should respond OK on index" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get clients_path
      response.status.should be(200)
    end
  end
end
