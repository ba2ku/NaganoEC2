require 'test_helper'

class AdShoppingHistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ad_shopping_hists_index_url
    assert_response :success
  end

  test "should get show" do
    get ad_shopping_hists_show_url
    assert_response :success
  end

  test "should get update" do
    get ad_shopping_hists_update_url
    assert_response :success
  end

end
