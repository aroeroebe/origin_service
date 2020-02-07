require 'test_helper'

class SeclikesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get seclikes_create_url
    assert_response :success
  end

end
