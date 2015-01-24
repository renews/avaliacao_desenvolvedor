require "test_helper"

describe PurchasesController do
  it "should get new" do
    get :new
    assert_response :success
  end

  it "should have post action for the form" do
    post :new
    assert_response :success
  end
end