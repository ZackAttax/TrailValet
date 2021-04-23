require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get sessions_home_url
    assert_response :success
  end

  test "should get new" do
    get sessions_new_url
    assert_response :success
  end

  test "should get show" do
    get sessions_show_url
    assert_response :success
  end

  test "should get update" do
    get sessions_update_url
    assert_response :success
  end

  test "should get delete" do
    get sessions_delete_url
    assert_response :success
  end
end
