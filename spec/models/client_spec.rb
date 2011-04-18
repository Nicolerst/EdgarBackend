require 'spec_helper'

describe Client do

  it "should instantiate" do
    client = Client.new
    client.should be_instance_of(Client)
  end
  
end
