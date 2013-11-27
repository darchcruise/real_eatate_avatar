require 'test_helper'

class ApartmentControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
