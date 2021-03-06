require File.dirname(__FILE__) + '/../spec_helper'

describe CustomersController do
  fixtures :projects, :users
  render_views #slow, but we don't have view tests

  before do
    request.session[:user_id] = 1 # login as admin
    Project.find(1).enable_module!(:customer_module)
  end

  describe "GET new" do
    it "renders the form successfully" do
      get :new, :id => Project.find(1)
      response.should be_success
    end
  end

  describe "GET edit" do
    it "renders the form successfully" do
      customer = Customer.create(:name => "John Doe", :company => "World Company")
      get :edit, :id => Project.find(1), :customer_id => customer
      response.should be_success
    end
  end

  describe "GET select" do
    it "renders the form successfully" do
      get :select, :id => Project.find(1)
      response.should be_success
      response.body.should =~ /<select id="customer_id"/
    end
  end
end
