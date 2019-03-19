require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get users_top_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get resign" do
    get users_resign_url
    assert_response :success
  end

  test "should get resign_cmp" do
    get users_resign_cmp_url
    assert_response :success
  end

end
