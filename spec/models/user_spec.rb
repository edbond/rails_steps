require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :login => "value for login",
      :email => "value for email",
      :address => "value for address",
      :city => "value for city"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
