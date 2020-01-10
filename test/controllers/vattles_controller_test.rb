require 'test_helper'

class VattlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vattles_new_url
    assert_response :success
  end

  test "should get create" do
    get vattles_create_url
    assert_response :success
  end

end
