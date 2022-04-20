require "test_helper"

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get #" do
    get hello_#_url
    assert_response :success
  end

  test "should get hello" do
    get hello_hello_url
    assert_response :success
  end
end
