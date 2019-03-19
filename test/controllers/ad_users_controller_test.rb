require 'test_helper'

class AdUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get ad_users_top_url
    assert_response :success
  end

  test "should get index" do
    get ad_users_index_url
    assert_response :success
  end

  test "should get edit" do
    get ad_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get ad_users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ad_users_destroy_url
    assert_response :success
  end

end
