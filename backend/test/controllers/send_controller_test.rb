require "test_helper"

class SendControllerTest < ActionDispatch::IntegrationTest
  test "should get api" do
    get send_api_url
    assert_response :success
  end
end
