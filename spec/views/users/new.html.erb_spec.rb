require 'spec_helper'

describe "/users/new.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = stub_model(User,
      :new_record? => true,
      :login => "value for login",
      :email => "value for email",
      :address => "value for address",
      :city => "value for city"
    )
  end

  it "renders new user form" do
    render

    response.should have_tag("form[action=?][method=post]", users_path) do
      with_tag("input#user_login[name=?]", "user[login]")
      with_tag("input#user_email[name=?]", "user[email]")
      with_tag("input#user_address[name=?]", "user[address]")
      with_tag("input#user_city[name=?]", "user[city]")
    end
  end
end
