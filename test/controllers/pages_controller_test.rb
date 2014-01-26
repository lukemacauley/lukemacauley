require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get social" do
    get :social
    assert_response :success
  end

  test "should get collection" do
    get :collection
    assert_response :success
  end

end
