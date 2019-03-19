require 'test_helper'

class AdItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ad_items_index_url
    assert_response :success
  end

  test "should get create" do
    get ad_items_create_url
    assert_response :success
  end

  test "should get show" do
    get ad_items_show_url
    assert_response :success
  end

  test "should get update" do
    get ad_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ad_items_destroy_url
    assert_response :success
  end

  test "should get new" do
    get ad_items_new_url
    assert_response :success
  end

  test "should get edit" do
    get ad_items_edit_url
    assert_response :success
  end

end
