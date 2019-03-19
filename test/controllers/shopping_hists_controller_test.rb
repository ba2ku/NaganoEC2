require 'test_helper'

class ShoppingHistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shopping_hists_index_url
    assert_response :success
  end

  test "should get create" do
    get shopping_hists_create_url
    assert_response :success
  end

  test "should get show" do
    get shopping_hists_show_url
    assert_response :success
  end

end
