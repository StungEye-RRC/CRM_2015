require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get missing_email" do
    get :missing_email
    assert_response :success
  end

  test "should get alphabetized" do
    get :alphabetized
    assert_response :success
  end

end
