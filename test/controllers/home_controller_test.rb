require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get report" do
    sign_in users(:one)
    get home_report_url
    assert_response :success
  end
end
