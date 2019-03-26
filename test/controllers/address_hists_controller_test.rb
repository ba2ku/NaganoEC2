require 'test_helper'

class AddressHistsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get address_hists_create_url
    assert_response :success
  end

end
