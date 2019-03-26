require 'test_helper'

class OrderedItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ordered_items_create_url
    assert_response :success
  end

end
