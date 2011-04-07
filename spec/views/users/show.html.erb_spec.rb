require 'spec_helper'

describe "/users/show.html.erb" do
  include UsersHelper
  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :login => "value for login",
      :email => "value for email",
      :address => "value for address",
      :city => "value for city"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ login/)
    response.should have_text(/value\ for\ email/)
    response.should have_text(/value\ for\ address/)
    response.should have_text(/value\ for\ city/)
  end
end
